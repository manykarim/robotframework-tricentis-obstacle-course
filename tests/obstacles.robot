*** Settings ***
Library    Browser
Library    Collections
Suite Setup    New Browser    headless=${HEADLESS}

*** Variables *** 
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
    



Twins
    [Tags]    id=12952
    New Page    https://obstaclecourse.tricentis.com/Obstacles/12952/retry
    Fail

Not a table
    [Tags]    id=64161
    New Page    https://obstaclecourse.tricentis.com/Obstacles/64161/retry
    Fail

Two times
    [Tags]    id=72954
    New Page    https://obstaclecourse.tricentis.com/Obstacles/72954/retry
    Fail

Fun with tables
    [Tags]    id=92248
    New Page    https://obstaclecourse.tricentis.com/Obstacles/92248/retry
    Fail

Testing methods
    [Tags]    id=94441
    New Page    https://obstaclecourse.tricentis.com/Obstacles/94441/retry
    Fail

And counting
    [Tags]    id=24499
    New Page    https://obstaclecourse.tricentis.com/Obstacles/24499/retry
    Fail

Toscabot can fly
    [Tags]    id=60469
    New Page    https://obstaclecourse.tricentis.com/Obstacles/60469/retry
    Fail

Todolist
    [Tags]    id=23292
    New Page    https://obstaclecourse.tricentis.com/Obstacles/23292/retry
    Fail

Extracting text
    [Tags]    id=81012
    New Page    https://obstaclecourse.tricentis.com/Obstacles/81012/retry
    Fail

Addition
    [Tags]    id=78264
    New Page    https://obstaclecourse.tricentis.com/Obstacles/78264/retry
    Fail

Be fast - automate
    [Tags]    id=87912
    New Page    https://obstaclecourse.tricentis.com/Obstacles/87912/retry
    Fail

Tough cookie
    [Tags]    id=45618
    New Page    https://obstaclecourse.tricentis.com/Obstacles/45618/retry
    Fail

Confusing dates
    [Tags]    id=57683
    New Page    https://obstaclecourse.tricentis.com/Obstacles/57683/retry
    Fail

Again and again and again
    [Tags]    id=81121
    New Page    https://obstaclecourse.tricentis.com/Obstacles/81121/retry
    Fail

Popup windows
    [Tags]    id=51130
    New Page    https://obstaclecourse.tricentis.com/Obstacles/51130/retry
    Fail

Tomorrow
    [Tags]    id=19875
    New Page    https://obstaclecourse.tricentis.com/Obstacles/19875/retry
    Fail

Lots of rows
    [Tags]    id=41032
    New Page    https://obstaclecourse.tricentis.com/Obstacles/41032/retry
    Fail

The last row
    [Tags]    id=70310
    New Page    https://obstaclecourse.tricentis.com/Obstacles/70310/retry
    Fail

Math
    [Tags]    id=32403
    New Page    https://obstaclecourse.tricentis.com/Obstacles/32403/retry
    Fail

Table Search
    [Tags]    id=41036
    New Page    https://obstaclecourse.tricentis.com/Obstacles/41036/retry
    Fail

Halfway
    [Tags]    id=41038
    New Page    https://obstaclecourse.tricentis.com/Obstacles/41038/retry
    Fail

Click me if you can
    [Tags]    id=41040
    New Page    https://obstaclecourse.tricentis.com/Obstacles/41040/retry
    Fail

Escape
    [Tags]    id=41041
    New Page    https://obstaclecourse.tricentis.com/Obstacles/41041/retry
    Fail

Hidden element
    [Tags]    id=66666
    New Page    https://obstaclecourse.tricentis.com/Obstacles/66666/retry
    Fail

Empty
    [Tags]    id=66667
    New Page    https://obstaclecourse.tricentis.com/Obstacles/66667/retry
    Fail

DropDown Table
    [Tags]    id=14090
    New Page    https://obstaclecourse.tricentis.com/Obstacles/14090/retry
    Fail

Scroll into view
    [Tags]    id=99999
    New Page    https://obstaclecourse.tricentis.com/Obstacles/99999/retry
    Fail

Get Sue's Number
    [Tags]    id=72946
    New Page    https://obstaclecourse.tricentis.com/Obstacles/72946/retry
    Fail

Future Christmas
    [Tags]    id=21269
    New Page    https://obstaclecourse.tricentis.com/Obstacles/21269/retry
    Fail

Red stripe
    [Tags]    id=30034
    New Page    https://obstaclecourse.tricentis.com/Obstacles/30034/retry
    Fail

The Obvious
    [Tags]    id=73588
    New Page    https://obstaclecourse.tricentis.com/Obstacles/73588/retry
    Fail

Find and Fill
    [Tags]    id=73590
    New Page    https://obstaclecourse.tricentis.com/Obstacles/73590/retry
    Fail

Testdata in a service
    [Tags]    id=16384
    New Page    https://obstaclecourse.tricentis.com/Obstacles/16384/retry
    Fail

Tricentis Tosca Olympics
    [Tags]    id=82018
    New Page    https://obstaclecourse.tricentis.com/Obstacles/82018/retry
    Fail

Find the changed cell
    [Tags]    id=73591
    New Page    https://obstaclecourse.tricentis.com/Obstacles/73591/retry
    Fail