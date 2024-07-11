*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}    https://demo.nopcommerce.com
*** Test Cases ***
Testing Input Box
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store
    Click Link    xpath://a[@class='ico-login']
     ${userName}    Set Variable    id:Email
    Element Should Be Visible    ${userName}
    Element Should Be Enabled    ${userName}
    Input Text    ${userName}    amadaoui21@gmail.com
    Sleep    5
    Clear Element Text    ${userName}
    sleep    3
    Close Browser
    
    
    

*** Keywords ***
