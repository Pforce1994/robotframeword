*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
checkbox
    SeleniumLibrary.Open Browser    https://the-internet.herokuapp.com/checkboxes    browser=chrome
    SeleniumLibrary.Select Checkbox    xpath=//input[@type='checkbox']
    SeleniumLibrary.Checkbox Should Be Selected      xpath=//input[@type='checkbox']
    BuiltIn.Sleep    5s