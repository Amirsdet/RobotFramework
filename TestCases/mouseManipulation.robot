*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://swisnl.github.io/jQuery-contextMenu/demo.html
*** Test Cases ***
Right click
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Open Context Menu    xpath=//span[@class='context-menu-one btn btn-neutral']

    Click Element    xpath=/html/body/ul/li[3]/span

    Handle Alert    accept

      

Double click
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath=//button[normalize-space()='Copy Text']

Drag and drop
    Drag And Drop    id=draggable    id=droppable
    Get Text     xpath=//div[@id='droppable']
    Sleep    10
