*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
launch browser
    [Arguments]    ${pageurl}    ${appbrowser}
    Open Browser    ${pageurl}    ${appbrowser}
    Maximize Browser Window
    ${title}    Get Title
    RETURN    ${title}