*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/

*** Test Cases ***
Input textboxes
    Open Browser    ${url}    chrome

    Click Element    id:alertBtn
    Sleep    2
    #Alert Should Be Present    Press a button
      
    Handle Alert    accept
    Close All Browsers



