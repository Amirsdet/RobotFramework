*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com/ 
${userName}    amadaoui21@gmail.com
${password}    Aylan2020@

*** Test Cases ***
Login Test
    Open Browser    ${url}    ${browser}
    LoginToApplication
    Close Browser
*** Keywords ***
LoginToApplication
    Click Link    xpath://a[@class='ico-login']
    Input Text    id:Email    ${userName}
    Input Text    id:Password    ${password}
    Click Element    xpath://button[@class='button-1 login-button']



