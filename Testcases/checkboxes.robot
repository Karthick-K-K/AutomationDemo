*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
checkboxes
    Open Browser    ${url}    chrome
    Select Checkbox    checkBoxOption1
    Select Checkbox    checkBoxOption2

    Sleep    2
    Unselect Checkbox    checkBoxOption1
    Sleep   2 
    Close All Browsers

