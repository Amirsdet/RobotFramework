*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library    DataDriver    ../TestData/LoginData.csv    sheet_name=Sheet1
Suite Setup    Open My Browser
Suite Teardown    Close Browsers
Test Template    Invalid Login
*** Test Cases ***
LoginTestWithExcel using ${username} and ${password}
*** Keywords ***
invalid login 
    [Arguments]    ${username}    ${password}
    Input Username     ${username}   
    Input Password     ${password}
    Click Login Button
    Error Message Should Be Visible