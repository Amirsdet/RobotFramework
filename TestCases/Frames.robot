*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary
Library    DateTime
*** Variables ***
${browser}    chrome
${url}    https://seleniumpractise.blogspot.com/
*** Test Cases ***
Handling Alerts
#    Handling alerts
    Open Browser    ${url}    ${browser}
    Select Frame    xpath=//*[@id="navbar-iframe"]
    Click Element    id=b-more
    Sleep    1
    Unselect Frame