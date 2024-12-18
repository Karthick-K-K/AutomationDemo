*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

TabbedWindowsTest

    Open Browser    https://demo.automationtesting.in/Windows.html    chrome
    Sleep    2
    Click Element    xpath://a[@target='_blank']/button
    Sleep    2
    Switch Window    title=Selenium
    Sleep    2
    Click Element    css:a[href="/documentation"]
    Sleep    2
    Close All Browsers