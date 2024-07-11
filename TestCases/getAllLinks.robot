*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary
Resource    ../Resources/src.robot
*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/
*** Test Cases ***
TC1
    ${pageTitle}=     LaunchBrowser    ${url}    ${browser}
    ${Count}=    Get Element Count    xpath=//a
    Log To Console      ${Count}
    @{linkItems}    Create List    
    FOR    ${i}    IN RANGE    1    ${Count}+1
        ${linkText}=    Get Text    xpath=(//a)[${i}]
        Log To Console    ${LinkText}

    END

