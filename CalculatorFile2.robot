*** Settings ***

*** Variables ***

*** Test Cases ***
Calculator Actions
    ${operation_result}      Calculator Operations    *     100    4
    Log To Console           ${operation_result}

*** Keywords ***
Calculator Operations
    [Documentation]    This Keyword is used to perform all calculator operations which are addition, subtraction, multiplication and division.
    [Arguments]        ${operator}    ${operand_1}    ${operand_2}
    ${result}          Evaluate    ${operand_1}${operator}${operand_2}
    [Return]           ${result}