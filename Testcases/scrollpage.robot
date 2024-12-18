*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://formstone.it/components/dropdown/demo/
${browser}    chrome

*** Test Cases ***

TC1
    Open Browser   ${url}    ${browser}
    Maximize Browser Window
    Sleep    3
    Execute Javascript    window.scrollTo(0,500)
    Sleep    2

    Scroll Element Into View    xpath://h4[text()='Custom Labels']
    Sleep    2

    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    2

    Execute Javascript    window.scrollTo(0, -document.body.scrollHeight)
    Sleep    2