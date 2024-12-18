*** Settings ***


*** Test Cases ***

TC1 User registartion test

    [Tags]  smoke
    Log To Console    This is user reg test

    Log To Console    User reg test is over


TC2 Logintest

    [Tags]  sanity
    Log To Console    This is login test
    Log To Console    Login test is over

TC3 Change user Settings

    [Tags]  regression
    Log To Console    This is Change user Settings test
    Log To Console    Change user Settings test is over

TC4 Logout Test
    
    [Tags]  sanity
    Log To Console    This is logout test
    Log To Console    Logout test is over