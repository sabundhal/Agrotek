*** Settings ***
Library  SeleniumLibrary
Library    Maticson.py
Variables  ../TestData/Testdata.py
Resource  ../../PageObject/KeywordDefinationFiles/LeftMenu.robot
Resource  ../../PageObject/KeywordDefinationFiles/Counterparty.robot
Resource  ../../PageObject/KeywordDefinationFiles/Needs.robot
Resource  ../../PageObject/KeywordDefinationFiles/Visits.robot
Variables    ../Locators/Locators.py

*** Keywords ***
Wait Until Page Is Loaded
    Wait For Condition    return window.document.readyState === "complete"

##############################SectionFilter################################
Click
    [Arguments]    ${Element}
    ${check_element}=  Run Keyword and Return Status   Wait Until Page Contains Element    ${Element}    10s
    Run Keyword If      '${check_element}' == 'True'     Click Element  ${Element}



Click SelectFirstPartOfActivity
    Click  ${SelectFirstPartOfActivity}
    Wait Until Page Contains Element  ${OpenFirstPartOfVisit}  timeout=30

Click OpenFirstPartOfVisit
    Click  ${OpenFirstPartOfVisit}
    Wait Until Page Contains Element  ${SelectTabProductOnVisit}  timeout=30

Click SelectTabProductOnVisit
    Click  ${SelectTabProductOnVisit}
    Wait Until Page Contains Element  ${AddRecordBtnOnVisit}  timeout=30

Input ProductValue1
    Input Text  ${Search}  ${ProductValue1}
    Click  ${SearchBtn}
    sleep    5s
    click Element   xpath=//div[contains(@data-item-marker,'${ProductValue1}')]

Input ProductValue2
    Input Text  ${Search}  ${ProductValue2}
    Click  ${SearchBtn}
    sleep    3s
    click Element   xpath=//div[contains(@data-item-marker,'${ProductValue2}')]

Input ProductValue3
    Input Text  ${Search}  ${ProductValue3}
    Click  ${SearchBtn}
    sleep    3s
    click element   xpath=//div[contains(@data-item-marker,'${ProductValue3}')]


Input McsQuantityProductValue1

    click element   xpath=//*[text()='${ProductValue1}']/../../div[2]/span
    sleep    3s
    Input Text  ${SetMcsQuantity}  ${McsQuantityValue}
    sleep    3s
    Click  ${SaveMcsQuantityBtn}

Input McsQuantityProductValue2

    click element   xpath=//*[text()='${ProductValue2}']/../../div[2]/span
    sleep    3s
    Input Text  ${SetMcsQuantity}  ${McsQuantityValue}
    sleep    3s
    Click  ${SaveMcsQuantityBtn}

Input McsQuantityProductValue3

    click element   xpath=//*[text()='${ProductValue3}']/../../div[2]/span
    sleep    3s
    Input Text  ${SetMcsQuantity}  ${McsQuantityValue}
    sleep    3s
    Click  ${SaveMcsQuantityBtn}


Click SelectMainInformationSectionOnWindow
    Click  ${SelectMainInformationSectionOnWindow}
    Wait Until Page Contains Element  ${LeadNeedOfVisit}  timeout=30
    Click  ${LeadNeedOfVisit}



Go To Sales
   Click SelectHistorySection




Click AddRecordBtnOnVisit
    Click  ${AddRecordBtnOnVisit}
    Wait Until Page Contains Element  ${SelectProductOnWindow}  timeout=30
    sleep    2s
    Input ProductValue1
    sleep    2s
    Input ProductValue2
    sleep    2s
    Input ProductValue3
    sleep    2s
    Click  ${ResponsibleSaveBtn}

Click SaveButton
    Wait Until Page Contains Element  ${SaveButton}  timeout=30
    Click  ${SaveButton}

Create SaleOnVisit
    #переход в визит и добавление товаров
    Click SelectHistorySection
    sleep    5s
    Click SelectTabProductOnVisit
    sleep    5s
    Click AddRecordBtnOnVisit
    sleep    5s
    Input McsQuantityProductValue1
    sleep    5s
    Input McsQuantityProductValue2
    sleep    5s
    Input McsQuantityProductValue3
    sleep    5s
     #перейти обратно в потребность и закрыть ее
    Click SelectMainInformationSectionOnWindow
    #закрыть задачу
    Complete Task Visit
    #перейти в продажу
    Click SelectHistorySection
    sleep    5s
    Click  ${LeadSalesOfVisit}
    #Click SaveButton




















