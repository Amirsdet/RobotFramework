*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary
Library    DateTime
*** Variables ***
${browser}    chrome
${url}    https://www.techlistic.com/p/selenium-practice-form.html
*** Test Cases ***
Testing Radio Buttons and Check Boxes
    
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
#    Set Selenium Speed    1seconds
#    Enter Firstname
     Input Text    firstname    amir
#    Enter Lastname
     Input Text    lastname    Madaoui
#    Selecting gender
    Select Radio Button    xpath=//*[@id="sex-0"]    Male
    Select Radio Button    exp    5
#    Sending date in the test field
     Input Text    id=datepicker    16-10-2024
     Execute JavaScript    window.scrollTo(1011,1013)
#    Selecting check Box profession and unselect one of them
    Select Checkbox    id=profession-0
    Select Checkbox    id=profession-1
    Unselect Checkbox    id=profession-0
#    Select continent
    Select From List By Label    continents    North America
    Select From List By Index    continents    5
    Execute JavaScript    window.scrollTo(1311,1313)
#    Select Command
    Select From List By Label    id=selenium_commands    WebElement Commands
    

    Close All Browsers