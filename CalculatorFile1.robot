*** Settings ***

*** Variables ***

*** Test Cases ***
Calculator Actions
    ${addition}          Addition Function       3    4
    Log To Console       \nThe values have been passed to arguments
    Log To Console       The result of addition of 3 and 4 is : ${addition}
    ${subtraction}       Subtraction Function    20
    Log To Console       Used a default argument whose value is 10
    Log To Console       The result of subtraction of 20 and 10 is : ${subtraction}
    ${multiplication}    Multiplication Function    7    6
    Log To Console       Overrided a default argument whose value is 3 to 6
    Log To Console       The result of multiplication of 7 and 6 is : ${multiplication}
    Should Be Equal      ${multiplication}     ${42}
    Log To Console       The result has been checked and is equal to expected result
    ${division}          Division Function    operand_2=25    operand_1=125
    Log To Console       \nPassed values by naming arguments
    Log To Console       The result of division of 125 and 25 is : ${division}
    Should Be True       ${division}==5
    Log To Console       The result has been checked and is as expected
    Accepting List Variable    3     1     5     manoj     *       555
    Accepting Dict Variable    name=manoj     id=2111    designation=test engineer
*** Keywords ***
Addition Function
    [Documentation]     This keyword is used for performing addition
    [Arguments]         ${operand_1}       ${operand_2}
    ${result}           Evaluate        ${operand_1} + ${operand_2}
    [Return]            ${result}
Subtraction Function
    [Documentation]     This keyword is used for performing subtraction
    [Arguments]         ${operand_1}       ${operand_2}=10
    ${result}           Evaluate        ${operand_1} - ${operand_2}
    [Return]            ${result}
Multiplication Function
    [Documentation]     This keyword is used for performing multiplication
    [Arguments]         ${operand_1}       ${operand_2}=3
    ${result}           Evaluate        ${operand_1} * ${operand_2}
    [Return]            ${result}
Division Function
    [Documentation]     This keyword is used for performing division
    [Arguments]         ${operand_1}       ${operand_2}
    ${result}           Evaluate        ${operand_1} / ${operand_2}
    [Return]            ${result}
Accepting List Variable
    [Documentation]     This keyword is used to accept list variable
    [Arguments]         @{list}
    Log Many            @{list}
Accepting Dict Variable
    [Documentation]     This keyword is used to accept dict variable
    [Arguments]         &{dict}
    Log Many            &{dict}