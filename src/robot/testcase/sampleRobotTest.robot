*** Settings ***
Resource          ../resource/lowLevelKeywords.robot

*** Variables ***
${Some Password}        anything

#    ...                with the logic implemented in the main java source
*** Test Cases ***    Username  Password  Reult
This test should always pass
    [Template]         Verify login result
    as@as       ${Some Password}        as@as ${Some Password} pong
    @as         ${Some Password}        @as ${Some Password} pong
    as@         ${Some Password}        as@ ${Some Password} pong

This test should always fail
    [Template]         Verify login result
    do       ${Some Password}        OK

*** Keywords ***
Verify login result
    [Arguments]    ${Username}    ${Password}       ${Result}
    Enter username and password  ${Username}    ${Password}
    Result should be        ${Result}
