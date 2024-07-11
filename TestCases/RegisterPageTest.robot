*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keywordRegisterPage.robot
#Variables    ../PageObjects/LocatorsRegisterPage.py
*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/

*** Test Cases ***
Register Test

    open_Browsers    ${url}    ${browser}
    click_registerLink
    Enter_firstName    amirouche
    Enter_lastName     madaoui
    Enter_phone    107084564
    Enter_email     amadaouio@gmail.com
    Enter_address    15st 14st
    Enter_city    union City
    Enter_province    california
    Enter_postalCode    94587
    Enter_country     usa
    Enter_userName    amir060
    Enter_password     amir060
    Enter_Cpassword    amir060
    click_submit
    verify_successfulLRegistration
    close_browser

