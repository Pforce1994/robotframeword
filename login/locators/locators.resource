*** Variables ***
${input_user}             //input[@id='username']
${input_pass}             //input[@id='password']
${click_login}            //button[@class='radius']
${click_logout}           //a[@class='button secondary radius']
${verify_namepage_login}  The Internet
${verify_login}           //*[contains(text(),'You logged into a secure area!')]
${verify_logut}           //*[contains(text(),'You logged out of the secure area!')]
${verify_login_failed}    //*[contains(text(),'Your password is invalid!')]
${verify_username_failed}    //*[contains(text(),'Your username is invalid!')]  