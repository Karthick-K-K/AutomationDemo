*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://the-internet.herokuapp.com/login
${browser}    chrome

*** Keywords ***
Open my Browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close browsers
    Close All Browsers

Open login page
    Go To    ${url}

Input username
    [Arguments]    ${username}
    Input Text    name:username    ${username}

Input passwrd

    [Arguments]    ${password}
    Input Password    name:password    ${password}

clik login button
    
    Click Button    css:button[type='submit']

click logout
    Click Link    Logout

Error msg shouldbe visible
    Page Should Contain    is invalid!

Dashboard page shouldbe visible
    Page Should Contain    You logged into a secure area!

