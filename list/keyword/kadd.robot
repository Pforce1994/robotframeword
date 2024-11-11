*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    String
Variables   C:\Users\pforc\Desktop\robotframework\list\variables\vlist.yml
*** Keywords ***
Show datas from list
    @{list}      BuiltIn.Create List    
    ${result}    BuiltIn.Catenate     
    FOR  ${indexa}  IN  @{list_a}
        FOR     ${indexb}     IN      @{list_b}
            IF    ${indexa} == ${indexb}
                IF  '${result}' == '${EMPTY}'
                    ${result}  BuiltIn.Set Variable      ${result}${indexa}
                ELSE IF    '${result}' != '${EMPTY}'
                    ${result}  BuiltIn.Set Variable      ${result},${indexa}
                END                   
                    Collections.Append To List   ${list}    ${indexa}
            END    
        END
    END   
    BuiltIn.Log To Console     ${result}
    [Return]    ${list}
