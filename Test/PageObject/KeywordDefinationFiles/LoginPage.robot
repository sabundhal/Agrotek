*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py
*** Keywords ***
Input Username
    Input Text  ${LoginUsernameInputBox}  ${Username}

Input Password
    Input Text  ${LoginPasswordInputBox}  ${Password}

Click Login
    Click Element  ${LoginButton}

Auto Login
    Open Browser  ${URL}  Chrome
    Wait Until Element Is Visible  ${LoginButton}  timeout=5
    Input Username
    Input Password
    Click Login
    Wait Until Element Is Visible  ${MainHeaderLabel}  timeout=30