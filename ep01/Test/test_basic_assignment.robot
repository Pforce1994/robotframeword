*** Settings ***
Library		SeleniumLibrary

*** Variables ***
${message}		My message

*** Keywords ***


*** Test cases ***
Basic Assignment For EP01 - Basic Robot Framework
    Open browser        file:///C:/Users/pforc/Desktop/ep/ep01/ep01_small_excercise.html    browser=chrome
    Input text          id=username-box                             Pichaya
    Input text          xpath=//div[@v='password']/input            password
    Input text          xpath=//input[@doppio='nickname']           Got Zilla

    Select From List By Label      id=company                       Doppio
    Click Element                  id=op1
    Click Button                   id=use-me

    sleep   3       