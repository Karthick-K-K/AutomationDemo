*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***

Open my Browser

    [Arguments]    ${siteurl}    ${browser}
    Open Browser    ${siteurl}    ${browser}
    Maximize Browser Window

Enter Login username
    [Arguments]    ${username}
    Input Text    ${txt_loginusername}    ${username}

Enter Login password
    [Arguments]    ${Password}
    Input Password    ${txt_loginpassword}    ${Password}

Click SignIn
    
    Click Button    ${btn_signIn}

Verify login
    Title Should Be    Login: Mercury Tours

Close my browser
    Close All Browsers
