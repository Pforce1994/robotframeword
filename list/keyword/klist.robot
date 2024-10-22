*** Settings ***
Library    SeleniumLibrary
Library    Collections
Variables   ..\variables\vlist.yml  
*** Keywords ***
Show datas from list
    [Arguments]       @{list}
    FOR  ${index}  IN  @{list}
        Log To Console      ${index}
    END 
Show datas in list
    [Arguments]       @{list}
    FOR    ${index}      IN    @{list}
        Log To Console  ${index}
    END
Show datas in people
    [Arguments]       @{list}
    FOR    ${index}  IN     @{list}
        Log To Console  name: ${index[name]}    age:${index[age]}    city: ${index[city]}
    END