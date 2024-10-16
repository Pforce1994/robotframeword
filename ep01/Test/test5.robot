*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    file:///C:/Users/pforc/Desktop/ep/random.html
${round}    5

*** Test Cases ***
Tc01
    List show    ${round}
    
*** Keywords ***
List show
    [Arguments]      ${round}
    Open Browser    ${url}    browser=chrome
    FOR    ${counter}    IN RANGE    1    ${round}+1    
        Click Button        xpath=//button
        ${value}    Get Text      id=randomNumber
        Log To Console    ${value}
    END
    


    
    