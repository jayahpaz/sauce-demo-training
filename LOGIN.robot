*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Valid Login
    Open Browser    https://saucedemo.com/    chrome
    Sleep    5seconds
    Page Should Contain Element    //input[@placeholder="Username"]
    Input Text    //input[@placeholder="Username"]    standard_user
    Page Should Contain Element    //input[@type="password"]
    Input Text    //input[@type="password"]    secret_sauce
    Click Button    //input[@id="login-button"]
    Sleep    10seconds
    Page Should Contain Button    //*[@id="add-to-cart-sauce-labs-bike-light"]


Invalid Password Login
    Open Browser    https://saucedemo.com/    chrome
    Sleep    5seconds
    Page Should Contain Element    //input[@placeholder="Username"]
    Input Text    //input[@placeholder="Username"]    standard_user
    Page Should Contain Element    //input[@type="password"]
    Input Text    //input[@type="password"]    secret_sauc
    Click Button    //input[@id="login-button"]
    Sleep    10seconds
    Page Should Not Contain Button    //*[@id="add-to-cart-sauce-labs-bike-light"]