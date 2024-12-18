*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_keywords.robot

*** Variables ***
${Browser}    chrome
${url}    https://www.demo.guru99.com/test/newtours/
${UserName}    tutorial
${PassWord}    tutorial



*** Test Cases ***
Login Test
    
    Open my Browser    ${url}    ${Browser}
    Enter Login username    ${UserName}
    Enter Login password    ${PassWord}
    Click SignIn
    Sleep    2
    Verify login
    Close my browser
