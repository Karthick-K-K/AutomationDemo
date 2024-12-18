*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}    headlesschrome
${url}    https://www.demo.guru99.com/test/newtours/


*** Test Cases ***
Login Test
    
    Open my Browser    ${url}    ${Browser}
    # Set Selenium Speed    1 seconds
    Click Register Link
    Enter Firstname    Random
    Enter Lastname    Random
    Enter Phonenumber    9876543210
    Enter Emailid    randomregister@yopmail.com
    Enter Address    Dubai main Road
    Enter CityName    Dubai
    Enter Statename    Abudhabi
    Enter Pincode    123456
    Select Country    UNITED ARAB EMIRATES
    Enter Login_username    randomregister
    Enter Login_password    randomregister
    Enter Confirm_password    randomregister  
    Click Submit
    Verify Registration successful
    Close my browser
