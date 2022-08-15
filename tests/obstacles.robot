*** Settings ***
Library    Browser
Library    Collections
Suite Setup    New Browser    headless=${HEADLESS}

*** Variables ***
${URL}    
${HEADLESS}    True

*** Test Cases ***
Ids are not everything
    [Tags]    id=22505
    New Page    https://obstaclecourse.tricentis.com/Obstacles/22505/retry
    Click    "Click me!"
    Wait For Elements State    "Good job!"

Wait A Moment
    [Tags]    id=33678
    New Page    https://obstaclecourse.tricentis.com/Obstacles/33678/retry
    Click    "Calculate"
    Wait For Elements State    "Send"    enabled    timeout=20
    Click    "Send"
    Wait For Elements State    "Good job!"

Errors Occur
    [Tags]    id=70924
    New Page    https://obstaclecourse.tricentis.com/Obstacles/70924/retry
    Set Browser Timeout    1s
    ${number}    Set Variable    0
    WHILE     '${number}' != "9"
        TRY
            ${number}    Get Text    button\#b1
            Click    button\#b1
        EXCEPT
            Click    button\#tech
        END
    END
    Wait For Elements State    "Good job!"

Meeting Scheduler
    [Tags]    id=41037
    New Page    https://obstaclecourse.tricentis.com/Obstacles/41037/retry
    ${table}=    Set Variable    id=timeTable
    ${e}=    Get Table Cell Element    ${table}    "Thursday"    "11:00 - 13:00"
    ${status}    Get Text    ${e}
    Fill Text    id=resulttext    ${status}
    Wait For Elements State    "Good job!"

Bubble Sort
    [Tags]    id=73589
    New Page    https://obstaclecourse.tricentis.com/Obstacles/73589/retry
    ${status}    Set Variable    Keep sorting
    WHILE    '${status}'!='Done'    limit=1000
        ${elements}    Get Elements    div.bubble > div.num
        ${left} =    Get From List    ${elements}    0
        ${right} =    Get From List    ${elements}    1
        ${number_left}    Get Text    ${left}
        ${number_right}    Get Text    ${right}
        IF  ${number_left} > ${number_right}
            Click    "Swap"
            Sleep    0.2
        ELSE
            Click    "Next"
            Sleep    0.2        
        END
        TRY
            ${keep_sorting}    Get Element    "Keep sorting"
        EXCEPT            
            ${status}    Set Variable    Done
        END
    END
    Wait For Elements State    "Good job!"
    
