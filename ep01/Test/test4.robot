*** Settings ***
Library    SeleniumLibrary
Library    String
*** Variables ***
${valus1}    1010001
${valus2}    101000
${valus3}    001100
${valus4}    111011010
${valus5}    000000
${valus6}    111111
${valus7}    hello
${valus8}    1a0a
${valus9}    1a0a2b1
*** Test Cases ***
Tc01
    ${result}    Cont zero   ${valus1}
    Log To Console  \n${valus1} --> result = ${result}
Tc02
    ${result}    Cont zero   ${valus2}
    Log To Console  \n${valus2} --> result = ${result}
Tc03
    ${result}    Cont zero    ${valus3}
    Log To Console    \n${valus3} --> result = ${result}    
Tc04
    ${result}    Cont zero    ${valus4}
    Log To Console    \n${valus4} --> result = ${result}
Tc05
    ${result}    Cont zero    ${valus5}
    Log To Console    \n${valus5} --> result = ${result}
Tc06
    ${result}    Cont zero    ${valus6}
    Log To Console    \n${valus6} --> result = ${result}
Tc07
    ${result}    Cont zero    ${valus7}
    Log To Console    \n${valus7} --> result = ${result}
Tc08
    ${result}    Cont zero    ${valus8}
    Log To Console    \n${valus8} --> result = ${result}
Tc09
    ${result}    Cont zero    ${valus9}
    Log To Console    \n${valus9} --> result = ${result}
*** Keywords ***
Cont zero
    [Arguments]    ${num}
    ${total_length}    BuiltIn.Get Length    ${num}
    ${total_zero}    BuiltIn.Set Variable    ${0}
    FOR    ${counter}    IN RANGE    0    ${total_length}    #วนค่าออกมาเริ่มจากตำแหน่ง Array 0
        ${count_zero}    BuiltIn.Set Variable     ${0}
        IF  '${num}[${counter}]' == '${1}'                    #ถ้าเจอ 1 ให้เริ่มวนค่าใน Array ใหม่ต่อจากตำแหน่งล่าสุด เพื่อเก็บ 0 ระหว่าง 1
            FOR    ${counter_go}    IN RANGE    ${counter}+${1}    ${total_length}    
                IF  '${num}[${counter_go}]' == '${0}'
                    ${count_zero}    BuiltIn.Evaluate    ${count_zero}+${1}    
                ELSE IF    '${num}[${counter_go}]' == '${1}'
                    ${total_zero}    BuiltIn.Evaluate    ${total_zero}+${count_zero}    #เก็บค่า 0 ระหว่าง 1 เข้าตัวแปร 
                    BuiltIn.Exit For Loop
                END                            
            END        
        END                
    END
    [Return]    ${total_zero}
    # ${total_length}    BuiltIn.Get Length    ${num}
    # ${count_0}         BuiltIn.Set Variable    ${0}
    # FOR  ${index}  IN RANGE  0  ${total_length}
    #     IF  '${num}[${index}]' == '${0}'
    #         ${count_0}    BuiltIn.Evaluate    ${count_0}+${1}
    #     END
    # END
    # Log    total zero = ${count_0}
    # [Return]    ${count_0}



    
