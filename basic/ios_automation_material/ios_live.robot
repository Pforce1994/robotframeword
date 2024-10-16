*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
Verify that can open app and navigate
    ${capability}       Create dictionary          automationName=XCUItest
    ...                 platformName=ios
    ...                 platformVersion=14.5
    # ...                 udid=6AE72C85-6AC6-4758-A349-5B9A7B751F33
    ...                 bundleId=com.nsoojin.BookStore
    ...                 deviceName=iPhone 12 Pro Max
    Open Application    remote_url=http://localhost:4723/wd/hub
    ...                 &{capability}
    #Click search icon on bottom bar
    Wait until element is visible           id=Search
    Tap             id=Search
    #Type keyword into search box 
    Wait until element is visible           xpath=//XCUIElementTypeSearchField[@name="Search"]
    Input text          xpath=//XCUIElementTypeSearchField[@name="Search"]          MySQL
    #Click on first search result 
    Wait until element is visible           xpath=//XCUIElementTypeTable[@name="SearchTableView"]/XCUIElementTypeCell[1]
    Tap                 xpath=//XCUIElementTypeTable[@name="SearchTableView"]/XCUIElementTypeCell[1]
    #Click Close button - using ios chain 
    Sleep       2s
    Wait until element is visible           chain=**/XCUIElementTypeButton[`name == "Close"`]    
    Tap             chain=**/XCUIElementTypeButton[`name == "Close"`]    
    #Verify that search result contains expected book with expected price 
    Wait until element is visible           xpath=//XCUIElementTypeTable[@name="SearchTableView"]/XCUIElementTypeCell[//XCUIElementTypeStaticText[@name="MySQL Stored Procedure Programming"] and //XCUIElementTypeStaticText[@name="$6.38"]]

    #Assignment 
    # click on search result that book name is  Learning MySQL and Maria DB  ----> get price on popup and store in variable  (Get Text), Get Attribute 
    # click Close  
    # check that LEarning MySQL and Maria DB has price in result  = price in popup (that we collected in step 1 )