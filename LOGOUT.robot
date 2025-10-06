*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${web_url}    https://saucedemo.com/
${browser}    chrome
${username}    standard_user
${valid_password}    secret_sauce


*** Test Cases ***
Logout Test Case
    Open Browser    ${web_url}    ${browser}
    Sleep    5seconds
    Page Should Contain Element    //input[@placeholder="Username"]
    Input Text    //input[@placeholder="Username"]    ${username}
    Page Should Contain Element    //input[@type="password"]
    Input Password    //input[@type="password"]    ${valid_password}
    Click Button    //input[@id="login-button"]
    Sleep    5seconds
    Page Should Contain Button    //*[@id="add-to-cart-sauce-labs-bike-light"]
    Click Button    //button[@id="react-burger-menu-btn"]
    Sleep    10seconds
    Click Link    //*[@id="logout_sidebar_link"]
    Sleep    5seconds
    Page Should Contain Element    //input[@id="login-button"]