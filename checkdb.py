import psycopg2
import sys

def parse_commandline_arguement():
    s = sys.argv[1]
    filename = s.split('=')[1]
    database_file = filename.split('.')[0]
    with open('password.txt') as f:
        lines = [line.rstrip() for line in f]
    username = lines[0]
    pg_password = lines[1]
    return filename, username, pg_password

def read_table_attributes(parsed_table_lines,lines):
    for line in lines:
        line.replace(" ", "")
        table = line.split('(',1)[0]
        comma_split_string = line.split(',')
        parsed_table_lines.setdefault(table,[])
        for i in comma_split_string:
            if 'pk' in i:
                parsed_table_lines[table].append(i.split('(',1)[1])
            elif 'fk' in i:
                parsed_table_lines[table].append(i)
            else:
                if ')' in i:
                    parsed_table_lines[table].append(i.split(')',1)[0])
                else:
                    parsed_table_lines[table].append(i)
    return parsed_table_lines

def referential_integrity(referential_integrity_boolean,key,value,output_file,query_file,cursor):
    if not any('fk' in s for s in value):
        output_file.write('                Y')
        return referential_integrity_boolean
    for column in value[1:]:
        if 'fk' in column:
            fk_referencing_column = column.split('(',1)[0]
            query_1 = "select " + fk_referencing_column + " from " + key + " where " + fk_referencing_column + " is null;"
            query_file.write(query_1 + '\n')
            cursor.execute(query_1)
            onerow=cursor.fetchall()
            if onerow:
                output_file.write('                N')
                referential_integrity_boolean = False
                return referential_integrity_boolean
            fk_referenced_str = column[column.find(':') + 1 : column.find(')')]
            fk_referencing_column = column.split('(')[0]
            fk_referenced_table = fk_referenced_str.split('.')[0]
            fk_referenced_column = fk_referenced_str.split('.')[1]
            query_2 = "select * from " + key + " a full join (select * from " + fk_referenced_table + ") b on a." + fk_referencing_column + "=b." + fk_referenced_column + " where b." + fk_referenced_column + " is null;"
            query_file.write(query_2 + '\n')
            cursor.execute(query_2)
            onerow=cursor.fetchall()
            if onerow:
                output_file.write('                N')
                referential_integrity_boolean = False
                return  referential_integrity_boolean
    output_file.write('                Y')
    return referential_integrity_boolean

def normalization_query(cursor,key,left_attribute,right_attribute,query_file):
    query_1 = 'select sum(count) from (select count(*) from ' + key + ' group by ' + left_attribute + ',' + right_attribute + ' having count(*) > 1) as ALIAS;'
    query_file.write(query_1 + '\n')
    cursor.execute(query_1)
    count_repeating_pairs = cursor.fetchone()[0]
    query_2 = 'select sum(count) from (select count(*) from ' + key + ' group by ' + left_attribute + ' having count(*) > 1) as ALIAS;'
    query_file.write(query_2 + '\n')
    cursor.execute(query_2)
    count_repeating_left_side_values = cursor.fetchone()[0]
    return count_repeating_pairs,count_repeating_left_side_values

def normalization(normalization_boolean,key,value,output_file,query_file,cursor):
    attributes = []
    for column in value[1:]:
        if 'fk' in column:
            attributes.append(column.split('(',1)[0])
        else:
            attributes.append(column)
    i = 0
    while i < len(attributes) - 1:
        j = i + 1
        while j < len(attributes):
            count_repeating_pairs,count_repeating_left_side_values = normalization_query(cursor,key,attributes[i],attributes[j],query_file)
            if count_repeating_pairs is not None and count_repeating_pairs == count_repeating_left_side_values:
                output_file.write('           N\n')
                normalization_boolean = False
                return normalization_boolean
            count_repeating_pairs,count_repeating_left_side_values = normalization_query(cursor,key,attributes[j],attributes[i],query_file)
            if count_repeating_pairs is not None and count_repeating_pairs == count_repeating_left_side_values:
                output_file.write('           N\n')
                normalization_boolean = False
                return normalization_boolean
            j+=1
        i+=1
    output_file.write('           Y\n')
    return normalization_boolean

def check_table_exists(cursor,key,query_file):
    query = "select table_name from information_schema.tables where table_name='" + key.lower() + "';"
    query_file.write(query + '\n')
    cursor.execute(query)
    returned_table = cursor.fetchall()
    return returned_table

def check_column_exists(cursor,key,column,query_file):
    query = "select column_name from information_schema.columns where table_name = '" + key.lower() + "' and column_name = '" + column.lower() + "';"
    query_file.write(query + '\n')
    cursor.execute(query)
    returned_column = cursor.fetchall()
    return returned_column

def error_check(cursor,key,value,query_file):
    returned_table = check_table_exists(cursor,key,query_file)
    if not returned_table:
        return True
    if not any('pk' in s for s in value):
        print('Error: PK not found in table: ' + key)
        return True
    for column in value:
        #Checks if the columns exist in the table
        parsed_column = ''
        if '(' in column:
            parsed_column = column.split('(',1)[0]
        else: parsed_column = column
        returned_column = check_column_exists(cursor,key,parsed_column,query_file)
        if not returned_column:
            print('Error: Invalid Column')
            return True
        #Checks if referenced tables and columns exist
        if 'fk' in column:
            fk_referenced_str = column[column.find(':') + 1 : column.find(')')]
            fk_referenced_table = fk_referenced_str.split('.')[0]
            fk_referenced_column = fk_referenced_str.split('.')[1]
            returned_referenced_table = check_table_exists(cursor,fk_referenced_table,query_file)
            if not returned_referenced_table:
                print('Error: Invalid fk column')
                return True
            returned_referenced_column = check_column_exists(cursor,fk_referenced_table,fk_referenced_column,query_file)
            if not returned_referenced_column:
                print('Error: Invalid fk column')
                return True
    return False
    
def determiner(parsed_table_lines,output_file,query_file,cursor):
    referential_integrity_boolean = True
    normalization_boolean = True
    for key, value in parsed_table_lines.items():
        errors_found = error_check(cursor,key,value,query_file)
        if errors_found == True:
            continue
        output_file.write(key)
        referential_integrity_boolean = referential_integrity(referential_integrity_boolean,key,value,output_file,query_file,cursor)
        normalization_boolean = normalization(normalization_boolean,key,value,output_file,query_file,cursor)
    if referential_integrity_boolean == True:
        output_file.write('DB referential integrity: Y\n')
    else:
        output_file.write('DB referential integrity: N\n')
    if normalization_boolean == True:
        output_file.write('DB normalized: Y\n')
    else:
        output_file.write('DB normalized: N\n')
    output_file.write('\n')
    query_file.write('\n')
        
def driver():
    filename,username,pg_password = parse_commandline_arguement()
    try:
        conn = psycopg2.connect(database = 'COSC3380', user = username, password = pg_password)
        cursor = conn.cursor()
        lines = open(filename)
        parsed_table_lines=dict()
        output_file = open('refintnorm.txt', 'w')
        query_file = open('checkdb.sql', 'w')
        output_file.write('    referential integrity normalized\n')
        parsed_table_lines = read_table_attributes(parsed_table_lines,lines)
        determiner(parsed_table_lines,output_file,query_file,cursor)
    except Exception as ex:
        print('Error: Unable to connect to DBMS')

if __name__ == '__main__':
    driver()







