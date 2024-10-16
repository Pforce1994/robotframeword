*** Settings ***
Library    SeleniumLibrary
Variables    ../variable/vopen_brown.yaml
Variables    ../variable/vinputuser_and_pass.yaml
Resource     ../locators/locators.resource
*** Keywords ***
Open website           
    SeleniumLibrary.Open Browser    ${url}       ${brownser}
    SeleniumLibrary.Maximize Browser Window
    SeleniumLibrary.Title Should Be    ${verify_namepage_login}
    # SeleniumLibrary.Page Should Contain    ${verify_namepage_login}
    # SeleniumLibrary.Wait Until Element Is Visible    //*[contains(text(),'The Internet')]
Input user
    SeleniumLibrary.Input Text        ${input_user}       ${user_valid}
Input pass
    SeleniumLibrary.Input Password    ${input_pass}    ${pass_valid}
Input user invalid
    SeleniumLibrary.Input Text        ${input_user}    ${user_invalid}
Input pass invalid
    SeleniumLibrary.Input Text    ${input_pass}    ${pass_invalid}
Click login
    SeleniumLibrary.Click Element    ${click_login}
Click logout
    SeleniumLibrary.Click Element    ${click_logout}
# Verify page login
#     SeleniumLibrary.Page Should Contain    ${verify_namepage_login}
Verify login seccess
    SeleniumLibrary.Wait Until Element Is Visible     ${verify_login}
Verify logout
    SeleniumLibrary.Wait Until Element Is Not Visible    ${click_logout}
Verify login failed
    SeleniumLibrary.Wait Until Element Is Visible    ${verify_login_failed}
Verify user not found
    SeleniumLibrary.Wait Until Element Is Visible      ${verify_username_failed}  

