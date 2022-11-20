*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Click PaymentScheduleSection
    Click Element  ${PaymentScheduleSection}

Click Sales
    Wait Until Element Is Visible  ${Sales}  timeout=5
    Click Element  ${Sales}

Click Studio
    Wait Until Element Is Visible  ${Studio}  timeout=5
    Click Element  ${Studio}

Click TopMenu
    Wait Until Element Is Visible  ${TopMenu}  timeout=5
    Click Element  ${TopMenu}

Go Studio
    Click TopMenu
    Click Studio

Go Sales
    Click TopMenu
    Click Sales