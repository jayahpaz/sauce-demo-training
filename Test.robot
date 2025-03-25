*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Sauce Demo Site
    Open Browser    https://www.saucedemo.com/    chrome
    Page Should Contain    Swag Labs
    Capture Page Screenshot
    Close Browser


Locate Different Elements of Login Form
    Open Browser    https://www.saucedemo.com/    chrome
    Page Should Contain Element    //*[@class="login_logo"]
    Page Should Contain Element    //input[@type="password"]
    Page Should Contain Button    //*[@id="login-button"]
    Close Browser