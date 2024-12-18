*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

NavKeywords

    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    ${title1}    Get Location
    Log To Console    ${title1}
    Sleep    2

    Go To    https://www.bing.com
    ${title2}    Get Location
    Log To Console    ${title2}
    Sleep    2

    Go Back
    ${title3}    Get Location
    Log To Console    ${title3}
    Sleep    2