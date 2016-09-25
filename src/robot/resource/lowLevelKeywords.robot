*** Settings ***
Library  sample.robot.SampleKeyword

*** Keywords ***
Enter username and password
    [Documentation]  This low-level keyword demonstrate how we can link robot keyword to Java keyword class
    [Arguments]    ${Username}    ${Password}
    Ping        ${Username} ${Password}

Result should be
    [Arguments]    ${Expected Result}
    ${Result}=      Get System Result
    Should Be Equal     ${Expected Result}      ${Result}
