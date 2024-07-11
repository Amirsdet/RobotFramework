*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/LocatorsLoginPage.py

*** Keywords ***
open_Browsers
    [Arguments]    ${url}    ${Browser}
    Open Browser    ${url}    ${browser}    
    Maximize Browser Window
click_registerLink
    Click Link    ${register_link}
Enter_firstName
    [Arguments]     ${FirstName}
    Input Text     ${first_name}    ${FirstName}
Enter_lastName
    [Arguments]     ${lastName}
    Input Text     ${last_name}    ${LastName}
Enter_phone
   [Arguments]    ${ph}
   Input Text    ${phone}    ${ph}
Enter_email
   [Arguments]    ${e-mail}
   Input Text    ${email}    ${e-mail}
Enter_address
    [Arguments]    ${Add}
   Input Text    ${address}    ${Add}
Enter_city
    [Arguments]    ${City}
    Input Text    ${city}    ${City}
Enter_province
    [Arguments]    ${Province}
   Input Text    ${province}    ${Province}
Enter_postalCode
    [Arguments]    ${ZipCode}
   Input Text    ${postal_code}    ${ZipCode}
Enter_country
    [Arguments]    ${Country}
   Select From List By Label    ${country}    ${Country}
Enter_userName
    [Arguments]    ${UserName}
   Input Text    ${user_name}    ${UserName}
Enter_password
   [Arguments]    ${Password}
   Input Text    ${pwd}    ${Password}
Enter_Cpassword
   [Arguments]    ${Cpassword}
   Input Text    ${confirm_pwd}    ${Cpassword}
click_submit
    Click Button    ${submit_btn}
verify_successfulLRegistration
    Page Should Contain    Thank you for registering
close_browser
    Close All Browsers