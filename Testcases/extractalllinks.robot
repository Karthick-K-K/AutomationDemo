*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}    chrome

*** Test Cases ***

TC1
    Open Browser   ${url}    ${browser}
    Maximize Browser Window

    ${Alllinkcount}    Get Element Count    xpath://link
    Log To Console    ${Alllinkcount}

    @{Linkelements}    Create List

    FOR    ${i}    IN RANGE    1    ${Alllinkcount}
        ${linktext}    Get Text    xpath:(//link)[${i}]
        Log To Console    ${linktext}
        Sleep    1
    END