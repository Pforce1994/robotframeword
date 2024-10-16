*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_1}    test input 1
${input_2}    test input 2



*** Test Cases ***
Get User Input Example 
    show text    ${input_1}    txt_3=${input_2}

























*** Keywords ***
show text
    [Arguments]    ${txt_1}=1234    ${txt_2}=${None}    ${txt_3}=${None}
    Log To Console   txt_1 = ${txt_1}
    IF  '${txt_2}' != '${None}'
        Log To Console   txt_2 = ${txt_2}
    END
    IF  '${txt_3}' != '${None}'
        Log To Console   txt_3 = ${txt_3}
    END