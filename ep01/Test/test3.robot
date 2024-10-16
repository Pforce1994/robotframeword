*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${input}    6
${index}    7


*** Test Cases ***
Get User Input Example 
    Preramit    ${input}

    

*** Keywords ***
Preramit
    [Arguments]    ${num}
    ${status}    BuiltIn.Run Keyword And Return Status        BuiltIn.Convert To Integer    ${num}
    Log To Console    status=${status}
    IF  ${status}
        ${revan} =  Set Variable     ${num}
        FOR    ${round}    IN RANGE    1    ${num}+1    2
            ${revan1} =     Evaluate   ${revan} - ${round}   
            ${revan2} =    Evaluate    ' ' * ${revan1}
            ${result}=    Evaluate    ' *' * ${round}
            Log To Console     ${revan2}${result}
            #      *
            #    * * *
            #  * * * * *
        END
    ELSE
        Log To Console    data invalid!
    END