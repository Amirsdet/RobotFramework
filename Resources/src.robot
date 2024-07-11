*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launchBrowser
    [Arguments]    ${appUrl}    ${appBrowser}
    Open Browser    ${appUrl}    ${appBrowser}
    Maximize Browser Window
    ${title}=    Get Title
    [RETURN]    ${title}