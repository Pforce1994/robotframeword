*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Dropdown test
    SeleniumLibrary.Open Browser    https://the-internet.herokuapp.com/dropdown    chrome
    SeleniumLibrary.Select From List By Value    //select[@id="dropdown"]    2     
    BuiltIn.Sleep     5s