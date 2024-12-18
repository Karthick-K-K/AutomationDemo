*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Keywords ***

Open my Browser

    [Arguments]    ${siteurl}    ${browser}
    Open Browser    ${siteurl}    ${browser}
    Maximize Browser Window

Click Register Link
    Click Link    ${link_Reg}

Enter Firstname
    [Arguments]    ${firstname}
    Input Text    ${txt_firstName}    ${firstname}

Enter Lastname
    [Arguments]    ${lastname}
    Input Text    ${txt_lastName}    ${lastname}

Enter Phonenumber
    [Arguments]    ${mobnum}
    Input Text    ${txt_phone}    ${mobnum}

Enter Emailid
    [Arguments]    ${emailid}
    Input Text    ${txt_email}    ${emailid}

Enter Address
    [Arguments]    ${add1}
    Input Text    ${txt_add1}    ${add1}

Enter CityName
    [Arguments]    ${citi}
    Input Text    ${txt_city}    ${citi}

Enter Statename
    [Arguments]    ${state}
    Input Text    ${txt_state}    ${state}

Enter Pincode
    [Arguments]    ${pincode}
    Input Text    ${txt_postcode}    ${pincode}

Select Country
    [Arguments]    ${country}
    Select From List By Label    ${drp_country}    ${country}

Enter Login_username
    [Arguments]    ${username}
    Input Text    ${txt_userName}    ${username}

Enter Login_password
    [Arguments]    ${Password}
    Input Password    ${txt_Password}    ${Password}

Enter Confirm_password
    [Arguments]    ${CFMPassword}
    Input Password    ${txt_ConfirmPassword}    ${CFMPassword}


Click Submit
    Click Button    ${btn_submit}

Verify Registration successful
    Page Should Contain    Thank you for registering.

Close my browser
    Close All Browsers
