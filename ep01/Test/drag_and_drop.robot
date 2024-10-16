*** Settings ***
Library    SeleniumLibrary
*** Test Cases ***
Drang and drop
    SeleniumLibrary.Open Browser    https://the-internet.herokuapp.com/drag_and_drop    chrome
    SeleniumLibrary.Drag And Drop    //div[@id="column-a"]    //div[@id="column-b"]
    BuiltIn.Sleep    5s
