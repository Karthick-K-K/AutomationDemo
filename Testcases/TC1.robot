*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/register

*** Test Cases ***
Testing input box
    #create webdriver    chrome  executable_path="C:\KKK\work\chromedriver.exe"
    open browser    ${url}  chrome
    maximize browser window
    # Title Should Be    nopCommerce demo store
    click link      xpath://a[@class='ico-login']
    ${"email_txt"}      set variable   id:Email

    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}
    input text  ${"email_txt"}  johndavaid@gmail.com
    sleep    5
