*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com/
${BROWSER}    chrome

*** Keywords ***
open my browser 
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
close Browsers
    Close All Browsers
open Login Page
    Go To    ${LOGIN URL}
input username
    [Arguments]    ${username}
    Input Text    id=Email    ${username}
input password
    [Arguments]    ${password}
    Input Text    id=Password    ${password}
click login button
    Click Element    xpath=//button[@type='submit']
click logout link
    Click Link    xpath=//a[normalize-space()='Logout']
error message should be visible
    Page Should Contain    Login was unsuccessful.
dashboard should be visible
    Page Should Contain    Dashboard
