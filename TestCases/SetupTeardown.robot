*** Settings ***
Suite Setup    Log To Console    Opening browser suite setup
Suite Teardown    Log To Console    Closing Browser suite teardown

Test Setup    Log To Console    login to app test setup
Test Teardown    Log To Console    logout from app test teardown

*** Test Cases ***
TC1: prepaid Recharge
    [Tags]    sanity
    Log To Console    this is tc1
TC2: Postpaid Recharge
    [Tags]    regression
    Log To Console    this is TC2
TC3: search
    [Tags]    regression
    Log To Console    this is TC3
TC4: Advanced search
    [Tags]    sanity
    Log To Console    this is TC4clear
    