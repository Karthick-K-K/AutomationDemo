*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/register

*** Test Cases ***
Input textboxes
    Open Browser    ${url}    chrome
    Maximize Browser Window
    ${time}    Get Selenium Timeout
    Log To Console    ${time}
    # Set Selenium Speed    2 seconds
    Set Selenium Timeout    10
    Wait Until Page Contains    Registration
    Select Radio Button    Gender    M
    Input Text    name:FirstName    john
    Input Text    name:LastName    david
    Input Text    name:Email    johndavid01@yopmail.com
    Input Text    name:Password    johndavid@123
    Input Password    name:ConfirmPassword   johndavid@123
    Sleep    2
    Close All Browsers