*** Settings ***
Library    BuiltIn
Library    SeleniumLibrary

*** Test Cases ***
Hello Test Case
    Log To Console    Hello, Nihon!


First Test Case
    Open Browser    https://saucedemo.com/    chrome
    Sleep    5s
    Close Browser