*** Settings ***
Library		SeleniumLibrary
*** Variables ***
${message}		My message
*** Keywords ***
Open chrome browser
	[Arguments]             ${url}
    ${chrome_options}=     Evaluate       sys.modules['selenium.webdriver'].ChromeOptions()     sys, selenium.webdriver
    Call Method     ${chrome_options}     add_argument     --disable-infobars
    Call Method     ${chrome_options}     add_argument     --window-size\=1920,1080
    Call Method     ${chrome_options}     add_argument     --disable-dev-shm-usage
    Call Method     ${chrome_options}     add_argument     --disable-gpu
    Call Method     ${chrome_options}     add_argument     --no-sandbox
    Call Method     ${chrome_options}     add_argument     --ignore-certificate-errors
    SeleniumLibrary.Create WebDriver    Chrome      chrome_options=${chrome_options}
    SeleniumLibrary.Go To     ${url}


*** Test cases ***
Test print text
#	Open chrome browser		http://www.google.com	
	open browser            file:///C:/Users/pforc/Desktop/ep/ep01/ex06.html     browser=chrome
#    Input text				xpath=//div[@v='username']/input		Automate Test with Doppio    หา div ที่มี  v='username'
#	Input text				xpath=//div[contains(@v,'username')]/input		Automate Test with Doppio    หา div ที่มี v=username-contians
#   Input text				xpath=//div[span[@c='Username']]/input		Automate Test with Doppio    
#   Input text				xpath=//div[span[text()='User:']]/input		Automate Test with Doppio

    Input text				xpath=//div[@k='abc' and @p='xyz']/input		Automate Test with Doppio
    Input text				xpath=//div[@k='abc']/input		Automate Test with Doppio1
    Input text				xpath=//div[@p='xyz']/input		Automate Test with Doppio1