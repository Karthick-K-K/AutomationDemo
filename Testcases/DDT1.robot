*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/login_resources.robot
Suite Setup    Open my Browser
Suite Teardown    Close browsers
Test Template    Invalid login

*** Test Cases ***        username        password
Right user empty pass    admin@yourstore.com    ${empty}
Right user wrng pass    admin@yourstore.com        xyz
Wrong user empty pass    adm@yourstore.com    ${empty}
Wrong user wrng pass    adm@yourstore.com    xyz
Wrong user right pass        adm@yourstore.com    admin


*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}

    Input username    ${username}
    Input passwrd    ${password}
    clik login button
    Error msg shouldbe visible