*** Settings ***
Library  SeleniumLibrary
Library    Maticson.py
Variables  ../TestData/Testdata.py
Variables    ../Locators/Locators.py
Resource  ../../PageObject/KeywordDefinationFiles/Needs.robot
Resource  ../../PageObject/KeywordDefinationFiles/Visits.robot
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
    Wait Until Page Contains Element  ${NeedForOurProductsTypeOfNeedsBtn}  timeout=30


Click NeedForOurProductsTypeOfNeedsBtn
    Click  ${NeedForOurProductsTypeOfNeedsBtn}
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
    sleep    2s
    RELOAD PAGE
    sleep    5s

Complete Task Visit

    Wait Until Page Contains Element  ${BtnComplete}  timeout=30
    Mouse Over  ${BtnComplete}
    Click  ${BtnComplete}
    Wait Until Page Contains Element  ${SelectResultTask}  timeout=30
    Click  ${SelectResultTask}
    Wait Until Page Contains Element  ${TaskCompleted}  timeout=30
    Click  ${TaskCompleted}
    sleep    1s
    Click  ${SaveEditButton}
    sleep    5s


Click SelectFirstPartOfActivity
    Click  ${SelectFirstPartOfActivity}
    Wait Until Page Contains Element  ${BtnComplete}  timeout=30
    Click  ${OpenFirstPartOfVisit}

Click SelectTabProductOnVisit
    Click  ${SelectTabProductOnVisit}
    Wait Until Page Contains Element  ${AddRecordBtnOnVisit}  timeout=30
    Click  ${AddRecordBtnOnVisit}
    Wait Until Page Contains Element  ${SelectProductOnWindow}  timeout=30

Click SelectHistorySection

    Wait Until Page Contains Element  ${SelectHistorySection}  timeout=30
    Click  ${SelectHistorySection}
    Wait Until Page Contains Element  ${OpenFirstPartOfActivityInHistory}  timeout=30
    Click  ${OpenFirstPartOfActivityInHistory}
    Click  ${OpenFirstPartOfActivityInHistory}
    Wait Until Page Contains Element  ${SelectMainInformationSectionOnWindow}  timeout=30


Add Needs
    sleep    5s
    Click Needs
    Click AddNeedsBtn
    Click TypeOfNeedsBtn
    Click NeedForOurProductsTypeOfNeedsBtn
    Input NameOfCounterparty
    Click SaveEditButton
    sleep    5s


Add Visit
    sleep    5s
    Click SelectFirstPartOfNeeds
    sleep    5s
    Click OpenFirstPartOfNeeds
    sleep    5s
    Click CreateVisitFromLeadButton





