*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary
Resource    ../Resources/src.robot
*** Variables ***
${browser}    chrome
${url}    https://demo.guru99.com/test/newtours/
*** Test Cases ***
TC1
    ${pageTitle}=     LaunchBrowser    ${url}    ${browser}
    Log     ${pageTitle}
    Input Text     userName    mercury
    Input Text    password    mercury
    Close All Browsers


    
