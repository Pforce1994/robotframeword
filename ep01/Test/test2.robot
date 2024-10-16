*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input_1}    8
${number}    5


*** Test Cases ***
Get User Input Example 
    Input number    ${input_1}
    # Log To Console    ${input_1}
    # Log    ${number}

    Log To Console   End     


*** Keywords ***
Input number
    [Arguments]    ${number}
    ${status}    BuiltIn.Run Keyword And Return Status    BuiltIn.Convert To Integer    ${number}
    Log To Console    status = ${status}
    IF  ${status}
        ${check}    BuiltIn.Evaluate    ${number}%2
        IF  ${check} == ${1}
            FOR    ${number}    IN RANGE    1    ${number}+1  
                
                Log To Console    *    no_newline=${True}
            
            END
        ELSE IF    ${check} == ${0}
            FOR    ${number}    IN RANGE    1    ${number}+1    
        
                Log To Console   +     no_newline=${True}    

                
            END
        END
    ELSE
        Log To Console     input ไม่ถูกต้อง!
    END