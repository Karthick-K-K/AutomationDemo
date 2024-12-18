*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    DatabaseLibrary


Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}    ${DBPass}    ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From Database

*** Variables ***
${DBName}    mydb1
${DBUser}    root
${DBPass}    wNg_84aCzdHBs#g
${DBHost}    127.0.0.1
${DBPort}    3306


*** Test Cases ***
# Create Person Table
#     ${output}=    Execute Sql String    Create table person(id integer, first_name varchar(20), last_name varchar(20))
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None

# Inserting Data into Table
#     ${output}=    Execute Sql String    Insert into person values(101, "John", "Cannady")
#     Log To Console    ${output}
#     Should Be Equal As Strings    ${output}    None

Check david record present in person table
    Check If Exists In Database    select id from mydb1.person where first_name="Steven";


check record not present in person table
    Check If Not Exists In Database   select id from mydb1.person where first_name="aafadfs";

Check Person table exists in mydb1 Database
    Table Must Exist    person

verify row count Equal
    Row Count Is Equal To X    Select * from mydb1.person;    6

Retrieve records from Person table
    @{queryResults}=    Query    Select * from mydb1.person;
    Log To Console  many @{queryResults}

Delete the records in table
    ${output}=    Execute Sql String    Delete from mydb1.person;
    Log To Console    ${output}
    
