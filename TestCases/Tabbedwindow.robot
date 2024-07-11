*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}    https://demo.automationtesting.in/Windows.html
*** Test Cases ***
#Handling Alerts
##    Handling alerts
#    Open Browser    ${url}    ${browser}
#    Click Element    xpath=//*[@id="Tabbed"]/a/button
#
#    Switch Window        title=Selenium
#    Click Element    id=navbarDropdown
#    Close All Browsers
##Handling multiple browsers
#    Open Browser    http://www.google.com/    chrome
#    Maximize Browser Window
#    Sleep    3
#    Open Browser    http://www.bing.com/    chrome
#    Maximize Browser Window
#    Sleep    3
#    Switch Browser    1
#    ${title1}=    Get Title
#    Log To Console    the title of google page is : ${title1}
#    Switch Browser    2
#    ${title1}=    Get Title
#    Log To Console    the title of bing page is : ${title1}
#    Close All Browsers
Handling Navigation Keywords
    Open Browser    http://www.google.com/    chrome
    ${loc}    Get Location
    Maximize Browser Window
    Input Text    id=APjFqb    schools
    Press Keys    id=APjFqb    ENTER

    Log To Console    ${loc}

    Go Back
    Sleep    10
    Input Text    id=APjFqb    maps
    Press Keys    id=APjFqb    ENTER

    Go To        http://www.bing.com/
    ${loc}    Get Location
    Maximize Browser Window
    Input Text    id=sb_form_q    bing
    Press Keys    id=sb_form_q     ENTER
    Sleep    3
    Log To Console    ${loc}
    Sleep    3
    Go Back
    Close All Browsers