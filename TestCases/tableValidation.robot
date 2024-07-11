*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary
Resource    ../Resources/src.robot
*** Variables ***
${browser}    chrome
${url}    https://testautomationpractice.blogspot.com/
*** Test Cases ***
TC1
    launchBrowser    ${url}    ${browser}
    ${rows}=    Get Element Count    xpath=//table[@name='BookTable']/tbody/tr
    ${cols}=    Get Element Count    xpath=//table[@name='BookTable']/tbody/tr[1]/th
    Log To Console    ${rows}    
    Log To Console    ${cols}
    ${el1}=    get text    xpath=//table[@name='BookTable']/tbody/tr[5]/td[1]
    Log To Console    ${el1}
TC2
    Table Column Should Contain    xpath=//table[@name=('BookTable')]    2    Amit
    Table Row Should Contain       xpath=//table[@name='BookTable']    5    3000
    Table Cell Should Contain    xpath=//table[@name='BookTable']    7    4    1000