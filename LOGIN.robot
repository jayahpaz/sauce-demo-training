*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${web_url}    https://saucedemo.com/
${browser}    chrome
${username}    standard_user
${valid_password}    secret_sauce
${invalid_password}    secret_sauc


*** Test Cases ***
Valid Login
    Open Browser    ${web_url}    ${browser}
    Sleep    5seconds
    Page Should Contain Element    //input[@placeholder="Username"]
    Input Text    //input[@placeholder="Username"]    ${username}
    Page Should Contain Element    //input[@type="password"]
    Input Text    //input[@type="password"]    ${valid_password}
    Click Button    //input[@id="login-button"]
    Sleep    10seconds
    Page Should Contain Button    //*[@id="add-to-cart-sauce-labs-bike-light"]


Invalid Password Login
    Open Browser    ${web_url}    ${browser}
    Sleep    5seconds
    Page Should Contain Element    //input[@placeholder="Username"]
    Input Text    //input[@placeholder="Username"]    ${username}
    Page Should Contain Element    //input[@type="password"]
    Input Text    //input[@type="password"]    ${valid_password}
    Click Button    //input[@id="login-button"]
    Sleep    10seconds
    Page Should Not Contain Button    //*[@id="add-to-cart-sauce-labs-bike-light"]