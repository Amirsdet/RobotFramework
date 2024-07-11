*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LocatorsLoginPage.py
*** Keywords ***
open_Browsers
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
Enter_UserName
   [Arguments]    ${username}
   Input Text    ${txt_userLoginName}    ${username}
Enter_password
   [Arguments]    ${password}
   Input Text    ${txt_userPassword}    ${password}
click_sign
    Click Button    ${btn_signin}
verify_successfulLogin
    Title Should Be    Login: Mercury Tours
close_browser
    Close All Browsers