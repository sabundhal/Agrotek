*** Settings ***
Library  SeleniumLibrary
Library    Maticson.py
Variables  ../TestData/Testdata.py
Resource  ../../PageObject/KeywordDefinationFiles/LeftMenu.robot
Variables    ../Locators/Locators.py

*** Keywords ***
Wait Until Page Is Loaded
    Wait For Condition    return window.document.readyState === "complete"

##############################SectionFilter################################
Click
    [Arguments]    ${Element}
    ${check_element}=  Run Keyword and Return Status   Wait Until Page Contains Element    ${Element}    10s
    Run Keyword If      '${check_element}' == 'True'     Click Element  ${Element}



Click SelectFirstPartOfVisit
    Click  ${SelectFirstPartOfVisit}
    Wait Until Page Contains Element  ${OpenFirstPartOfVisit}  timeout=30

Click OpenFirstPartOfVisit
    Click  ${OpenFirstPartOfVisit}
    Wait Until Page Contains Element  ${SelectTabProductOnVisit}  timeout=30

Click SelectTabProductOnVisit
    Click  ${SelectTabProductOnVisit}
    Wait Until Page Contains Element  ${AddRecordBtnOnVisit}  timeout=30

Click AddRecordBtnOnVisit
    Click  ${AddRecordBtnOnVisit}
    Wait Until Page Contains Element  ${SelectProductOnWindow}  timeout=30
    sleep    2s
    click element     = "xpath=//*[text()='${ProductValue1}']"
    sleep    2s
    click element     = "xpath=//*[text()='${ProductValue2}']"
    sleep    2s
    click element     = "xpath=//*[text()='${ProductValue3}']"
    sleep    2s
    Click  ${ResponsibleSaveBtn}

Click SaveButton
    Wait Until Page Contains Element  ${SaveButton}  timeout=30
    Click  ${SaveButton}

Create Sale
    Click Activity
    Click SelectFirstPartOfVisit
    Click OpenFirstPartOfVisit
    Click SelectTabProductOnVisit
    Click AddRecordBtnOnVisit
    Click SaveButton



















