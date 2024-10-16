*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://the-internet.herokuapp.com/login
${usercorrect}        tomsmith
${passwordcorrect}    SuperSecretPassword!
${userincorrect}      tomsmith1 
${passwordincorrect}  SuperSecretPassword
${btn_login}    //button
${btn_logout}    //a[@class='button secondary radius']
${msg_login_success}    //*[contains(text(),"You logged into a secure area!")]
${msg_after_logout}    //*[contains(text()," You logged out of the secure area!")]
*** Keywords ***
Login username and password
    [Arguments]    ${username}    ${password}
    Open Browser    ${url}        browser=chrome
    Input Text    id=username    text=${username}
    Input Password    id=password    password=${password}
    Click Button        xpath=//button
    # IF  '${username}' == '${usercorrect}' and '${password}' == '${passwordcorrect}'
    #     Click Element        xpath=//a[@class='button secondary radius']   
    # END

Click btn login
    Click Button     ${btn_login}

Click btn logout
    Click Element    ${btn_logout}
    # Click Button    ${btn_logout}

Open website
    Open Browser    ${url}        browser=chrome
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Wait Until Element Is Visible    ${btn_login}


*** Test Cases ***
Login success
    #Step 1
    Open website
    
    #Verify 1
    SeleniumLibrary.Page Should Contain    The Internet

    #Step 2
    Input Text        id=username    text=${usercorrect}
    Input Password    id=password    password=${passwordcorrect}
    Click btn login
    

    #Verify 2
    # SeleniumLibrary.Element Should Be Visible        ${msg_login_success}
    SeleniumLibrary.Wait Until Element Is Visible    ${msg_login_success}


    #Step 3
    Click btn logout

    #Verify 3
    SeleniumLibrary.Wait Until Element Is Visible    ${msg_after_logout}


# Login failed - ppppp
#     Login username and password    username=${usercorrect}    password=${passwordincorrect}
#     Sleep    time_= 3 seconds

# Login failed - ttttt
#     Login username and password    username=${userincorrect}    password=${passwordcorrect}
#     Sleep    time_= 3 seconds