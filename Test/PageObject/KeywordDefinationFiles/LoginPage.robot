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

Click CollapseBtnMenu
    Click Element  ${CollapseBtnMenu}

Auto Login
    Open Browser  ${URL}  Chrome
    Wait Until Page Contains Element  ${LoginButton}  timeout=30
    Input Username
    Input Password
    Click Login
    Wait Until Page Contains Element  ${MainHeaderLabel}  timeout=30
    Click CollapseBtnMenu