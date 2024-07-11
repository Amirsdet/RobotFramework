*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Open My Browser
Suite Teardown    close Browsers
Test Template     invalid login
*** Test Cases ***                USERNAME                    password
TC1:Right user empty password    admin@yourstore.com            ${EMPTY}
TC2:Right user wrong password    admin@yourstore.com             dfgsdfgsdfg
TC3:Wrong user wrong password     adm@yourstore.com              admytfin
TC4:Wrong user empty password     adin@yourstore.com            ${EMPTY}
TC4:Wrong user right password     adin@yourstore.com              admin
*** Keywords ***
invalid login
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login Button
    Error Message Should Be Visible

