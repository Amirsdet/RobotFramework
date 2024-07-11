*** Settings ***
Documentation    Simple example using SeleniumLibrary.
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
#For loop
#    FOR    ${i}    IN RANGE    -1    10
#        Log To Console    ${i}
#    END
#For loop2
#    FOR    ${i}    IN    1 2 3 4 5
#        Log To Console    ${i}
#    END
#For loop3 List
#    @{item}    create list    1    2    3    4    5
#    FOR    ${i}    IN    @{item}
#        Log To Console    ${i}
#    END
#For loop4 String
#    @{names}    create list    Amir    Aylan    David    Remy    Scott
#    FOR    ${i}    IN    @{names}
#        Log To Console    ${i}
#    END
For loop5 with exit
    @{numbers}    create list    1    2    3    4    5
    FOR    ${i}    IN    @{numbers}
        Log To Console    ${i}
        Exit For Loop If    ${i}==3
    END