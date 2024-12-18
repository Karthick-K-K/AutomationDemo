*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log To Console    Opening Browser
Suite Teardown    Log To Console    Closing the browsers

Test Setup    Log To Console    Login to application
Test Teardown    Log To Console    Logout from application

*** Test Cases ***

TC1 Prepaid recharge
    Log To Console    This is prepaid recharge

TC2 Postpaid recharge
    Log To Console    This is postpaid recharge
    
TC3 Search
    Log To Console    This is Search func

TC4 Advanced serach
    Log To Console    This is Advanced search func


