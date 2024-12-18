*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://ui.vision/demo/webtest/frames/

*** Test Cases ***
Frames selection
    
    Open Browser    ${url}    chrome

    Select Frame    //frame[@src="frame_1.html"]
    Input Text    name:mytext1    frame1
    Unselect Frame
    Sleep    2

    Select Frame    //frame[@src="frame_2.html"]
    Input Text    name:mytext2    frame2
    Sleep    2
    Close All Browsers




