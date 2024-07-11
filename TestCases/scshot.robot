*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
*** Test Cases ***
LoginTc
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    xpath=//input[@placeholder='Username']    admin
    Input Text    xpath=//input[@placeholder='Password']    admin123
    Sleep    3
    Capture Element Screenshot    xpath=//img[@alt='company-branding']    logo.png
    Capture Page Screenshot    page.png
    Close All Browsers
    

    