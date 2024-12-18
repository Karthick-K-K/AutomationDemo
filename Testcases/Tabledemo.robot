*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://testautomationpractice.blogspot.com/
${browser}    chrome

*** Test Cases ***

TC1
    Open Browser   ${url}    ${browser}
    Maximize Browser Window

    ${rowcount}=    Get Element Count    xpath://table[@name="BookTable"]//tr
    ${columncount}=    Get Element Count    xpath://table[@name="BookTable"]//tr[1]/th

    Log To Console    ${rowcount}
    Log To Console    ${columncount}

    ${data}=    Get Text    xpath://table[@name="BookTable"]//tr[2]/td[1]
    Log To Console    ${data}
    Sleep    1

    Table Column Should Contain     xpath://table[@name="BookTable"]   2    Author
    Table Row Should Contain    xpath://table[@name="BookTable"]    4    Learn JS 
    Table Cell Should Contain    xpath://table[@name="BookTable"]    5    2    Mukesh
    Table Header Should Contain    xpath://table[@name="BookTable"]    BookName
    