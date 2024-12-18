*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/register

*** Test Cases ***
Input textboxes
    Open Browser    ${url}    chrome
    Maximize Browser Window
    ${implicittime}    Get Selenium Implicit Wait
    Log To Console    ${implicittime}
    # Set Selenium Speed    2 seconds
    # Set Selenium Timeout    10
    Set Selenium Implicit Wait    10

    ${implicittime}    Get Selenium Implicit Wait
    Log To Console    ${implicittime}
    #Wait Until Page Contains    Registration
    Select Radio Button    Gender    M
    Input Text    name:FirstName1    john
    Input Text    name:LastName    david
    Input Text    name:Email    johndavid01@yopmail.com
    Input Text    name:Password    johndavid@123
    Input Password    name:ConfirmPassword   johndavid@123
    Close All Browsers