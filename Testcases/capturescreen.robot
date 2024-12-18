*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

CaptureScreen

    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login   chrome
    Maximize Browser Window
    Sleep    2

    Capture Page Screenshot    page.png
