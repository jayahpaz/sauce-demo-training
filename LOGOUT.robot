*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Logout Test Case
    Open Browser    https://saucedemo.com/    chrome
    Sleep    5seconds
    Page Should Contain Element    //input[@placeholder="Username"]
    Input Text    //input[@placeholder="Username"]    standard_user
    Page Should Contain Element    //input[@type="password"]
    Input Text    //input[@type="password"]    secret_sauce
    Click Button    //input[@id="login-button"]
    Sleep    5seconds
    Page Should Contain Button    //*[@id="add-to-cart-sauce-labs-bike-light"]
    Click Button    //button[@id="react-burger-menu-btn"]
    Sleep    10seconds
    Click Link    //*[@id="logout_sidebar_link"]
    Sleep    5seconds
    Page Should Contain Element    //input[@id="login-button"]