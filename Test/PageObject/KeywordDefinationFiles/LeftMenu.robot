*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/Testdata.py
Variables    ../Locators/Locators.py

*** Keywords ***

##############################TopMenu################################
Click
    [Arguments]    ${Element}
    ${check_element}=  Run Keyword and Return Status   Wait Until Page Contains Element    ${Element}    10s
    Run Keyword If      '${check_element}' == 'True'     Click Element  ${Element}

Go Studio
    ${Label}=    get text      ${TextMenu}
    IF  "Продажи" == "${Label}"
        Click  ${TopMenu}
        Click  ${Studio}
    END

Go Sales
    ${Label}=    get text      ${TextMenu}
    IF  "Студия" == "${Label}"
        Click  ${TopMenu}
        Click  ${Sales}
    END

##############################GoPages################################

Click PaymentScheduleSection
    Click  ${PaymentScheduleSection}


Click IntegrationLogSection
    Click  ${IntegrationLogSection}


Click Сounterparty
    Click  ${Сounterparty}
    Wait Until Page Contains Element  ${AddСounterpartyBtn}  timeout=30



Click Needs
    Click  ${Needs}
    Wait Until Page Contains Element  ${AddСounterpartyBtn}  timeout=30


Click Activity
    Click  ${Activity}
    Wait Until Page Contains Element  ${ActivityAddRecordBtn}  timeout=30