*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome

*** Test Cases ***

TC1
    ${pagetitle}    launch browser    ${url}    ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}
    Sleep    4
    Input Text    name:username    Admin
    Input Password    name:password    admin123

*** Keywords ***
launch browser
    [Arguments]    ${pageurl}    ${appbrowser}
    Open Browser    ${pageurl}    ${appbrowser}
    Maximize Browser Window
    ${title}    Get Title
    RETURN    ${title}