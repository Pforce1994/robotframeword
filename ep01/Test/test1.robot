*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_1}    16
${number}    6



*** Test Cases ***
Get User Input Example 
    Input number    ${input_1}




*** Keywords ***
Input number
    [Arguments]    ${number}
    ${status}    BuiltIn.Run Keyword And Return Status    BuiltIn.Convert To Integer    ${number}
    Log To Console    status = ${status}
    IF  ${status}
        ${check}    BuiltIn.Evaluate    ${number}%2
        IF  ${check} == ${1}
            Log To Console      เลขคี่
        ELSE
            Log To Console      เลขคู่
        END
    ELSE
        Log To Console     input ไม่ถูกต้อง!
    END