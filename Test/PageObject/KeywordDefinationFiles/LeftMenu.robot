*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/Testdata.py
Variables    ../Locators/Locators.py

*** Keywords ***

##############################TopMenu################################
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

##############################GoPages################################

Click PaymentScheduleSection
    Wait Until Element Is Visible  ${PaymentScheduleSection}  timeout=30
    set focus to element    ${PaymentScheduleSection}
    wait until keyword succeeds    10s    1s    click element  ${PaymentScheduleSection}

