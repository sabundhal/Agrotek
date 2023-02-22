*** Settings ***
Library  SeleniumLibrary
Library    Maticson.py
Variables  ../TestData/Testdata.py
Variables    ../Locators/Locators.py

*** Keywords ***
Wait Until Page Is Loaded
    Wait For Condition    return window.document.readyState === "complete"

##############################SectionFilter################################
Click
    [Arguments]    ${Element}
    ${check_element}=  Run Keyword and Return Status   Wait Until Page Contains Element    ${Element}    10s
    Run Keyword If      '${check_element}' == 'True'     Click Element  ${Element}

Click Needs
    Click  ${Needs}
    Wait Until Page Contains Element  ${AddNeedsBtn}  timeout=30

Click AddNeedsBtn
    Click  ${AddNeedsBtn}
    Wait Until Page Contains Element  ${TypeOfNeedsBtn}  timeout=30

Click TypeOfNeedsBtn
    Click  ${TypeOfNeedsBtn}
    Wait Until Page Contains Element  ${RevealingTypeOfNeedsBtn}  timeout=30


Click RevealingTypeOfNeedsBtn
    Click  ${RevealingTypeOfNeedsBtn}
    Wait Until Page Contains Element  ${SelectСounterparty}  timeout=30

Input NameOfCounterparty
    Click  ${SelectСounterparty}
    Input Text  ${SelectСounterparty}  ${NameCounterparty}
    sleep    5s
    click Element   xpath=//li[@data-item-marker='${NameCounterparty}']
    sleep    2s

Click SaveEditButton
    Click  ${SaveEditButton}
    Wait Until Page Contains Element  ${SelectFirstPartOfNeeds}  timeout=30

Click SelectFirstPartOfNeeds
    Click  ${SelectFirstPartOfNeeds}
    Wait Until Page Contains Element  ${OpenFirstPartOfNeeds}  timeout=30

Click OpenFirstPartOfNeeds
    Click  ${OpenFirstPartOfNeeds}
    Wait Until Page Contains Element  ${CreateVisitFromLeadButton}  timeout=30

Click CreateVisitFromLeadButton
    Click  ${CreateVisitFromLeadButton}
    sleep    3s
    RELOAD PAGE
    Wait Until Page Contains Element  ${BtnComplete}  timeout=30





Add Needs
    sleep    5s
    Click Needs
    sleep    5s
    Click AddNeedsBtn
    sleep    5s
    Click TypeOfNeedsBtn
    sleep    5s
    Click RevealingTypeOfNeedsBtn
    sleep    5s
    Input NameOfCounterparty
    sleep    5s
    Click SaveEditButton


Add Visit
    sleep    5s
    Click SelectFirstPartOfNeeds
    sleep    5s
    Click OpenFirstPartOfNeeds
    sleep    5s
    Click CreateVisitFromLeadButton





