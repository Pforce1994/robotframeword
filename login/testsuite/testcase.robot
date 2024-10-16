*** Settings ***
Resource     ../keyword/keyword.robot
*** Test Cases ***
Login seccess
    Open website
    # Verify page login
    Log hello
    Input user
    Input pass
    Click login
    Verify login seccess
    Click logout
    Verify logout
Login failed-password incorrect
    Open website
    # Verify page login
    Input user
    Input pass invalid
    Click login
    Verify login failed
Login failed-username not found
    Open website
    # Verify page login
    Input user invalid
    Input pass invalid
    Click login
    Verify user not found

