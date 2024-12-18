*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome

*** Test Cases ***

TC1
    launch browser
    Sleep    4
    Input Text    name:username    Admin
    Input Password    name:password    admin123

*** Keywords ***
launch browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window