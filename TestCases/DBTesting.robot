*** Settings ***
Library    SeleniumLibrary
Library    DatabaseLibrary
Library    OperatingSystem

Suite Setup    Connect To Database    pymysql    ${DBName}    ${DBUser}     ${DBPass}     ${DBHost}    ${DBPort}
Suite Teardown    Disconnect From DataBase
*** Variables ***
${DBName}     mydb
${DBUser}     root
${DBPass}     root123456
${DBHost}     localhost
${DBPort}    3306
*** Test Cases ***
#Create person table
#    ${output}=    Execute Sql String    create table person(id integer,first_name varchar(20),last_name varchar(20));
#    Log To Console  ${output}
#    Should Be Equal As Strings     ${output}    None
#
#insert data in person table
##    ${output}=    Execute Sql String    insert into person values(4556,"Amir","MADAOUI");
#    ${output}=    Execute Sql Script       ../TestData/mydb_person_insertData.sql
#    Log To Console  ${output}
#    Should Be Equal As Strings     ${output}    None

check if existing name in mydb.person
    Check If Exists In Database    select id from mydb.person where last_name="Brown"
    Check If Not Exists In Database   select id from mydb.person where last_name="Browrn"
    Table Must Exist    person
    Row Count Is 0    select * from mydb.person where first_name="adfgdfgdfg"
    Row Count Is Equal To X    select * from mydb.person    10
    Row Count Is Greater Than X    select * from mydb.person    6
    Row Count Is less Than X    select * from mydb.person    11
update record in person table 
    ${output}=    Execute Sql String    update mydb.person set first_name="Amir" where id=4;
     Log To Console  ${output}
     Should Be Equal As Strings     ${output}    None
retrieve records from person table
    @{queryResults}=    Query       select * from mydb.person;
    Log many    @{queryResults}

Delete record from person table 
    ${output}=    Execute Sql String    delete from mydb.person where id=9
    Log To Console    ${output}
    Should Be Equal As Strings     ${output}    None
