*** Settings ***
Library    BuiltIn

*** Variables ***
${condition}    True

*** Test Cases ***
Example If Else
    Run Keyword If    '${condition}' == 'True'    Keyword If True
    ...    ELSE    Keyword If False
    

*** Keywords ***
Keyword If True
    Log    The condition is true!

Keyword If False
    Log    The condition is false!