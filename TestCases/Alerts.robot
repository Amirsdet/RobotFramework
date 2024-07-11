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
    Click Element       xpath=//*[@id="post-body-9011060868494634961"]/button
    sleep    11
    Handle Alert    accept

