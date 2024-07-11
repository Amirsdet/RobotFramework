*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/KeywordLoginPage.robot
*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/index.php
#${username}    tutorial
#${password}    tutorial

*** Test Cases ***
Login test
    open_Browsers     ${url}    ${browser}
    Enter_UserName    tutorial
    Enter_password    tutorial
    click_sign
    Sleep    3
    verify_successfulLogin
    close_browser



