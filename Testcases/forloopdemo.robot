*** Settings ***
Library    String
*** Test Cases ***
Forloop1
    
    FOR    ${i}    IN RANGE    1    10
    Log to Console    ${i}
    END

Forloop2
    FOR    ${i}    IN    1 2 3 4 5 6 7 8 9
    Log to Console    ${i}
    END

Forloop3

    @{items}    Create List    1 2 3 4 5 6
    FOR    ${i}    IN    @{items}
    Log to Console    ${i}
    END
    
Forloop4

    @{nameitems}    Create List    john  david  smith  jacob
    FOR    ${i}    IN    @{nameitems}
    Log to Console    ${i}
    END

Forloopwithexit1

    @{items}    Create List    1  2  3  4  5  6
    FOR    ${i}    IN    @{items}
    Log to Console    ${i}
    Exit For Loop If    ${i}==3
    END
    