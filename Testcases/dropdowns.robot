*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://formstone.it/components/dropdown/demo/

*** Test Cases ***
dropdowns
    Open Browser    ${url}    chrome
    Maximize Browser Window

    #dropdown
    Select From List By Value    demo_basic    2
    Sleep    2
    Select From List By Index    demo_basic    0
    
    #dropdownlists
    Select From List By Label    demo_multiple    Four
    Sleep    2
    Select From List By Value    demo_multiple    2
    Sleep    2
    Select From List By Index    demo_multiple    6
    Sleep    2
    Close All Browsers
    