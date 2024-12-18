*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Drag&Drop

    Open Browser     http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html     chrome
    Maximize Browser Window

    Drag And Drop    id:box1    id:box106
    Sleep    3
    Close Browser

