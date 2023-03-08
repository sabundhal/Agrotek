*** Settings ***
Documentation  Login
Library  SeleniumLibrary
Resource  ../../PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../../PageObject/KeywordDefinationFiles/LeftMenu.robot
Resource  ../../PageObject/KeywordDefinationFiles/CommonSection.robot
Resource  ../../PageObject/KeywordDefinationFiles/Counterparty.robot
*** Variables ***

*** Test Cases ***
Full Create Counterparty
    [Tags]  Smoke
    When Auto Login
    When Go Sales
    When Click Сounterparty
    When Click AddСounterpartyBtn
    When Add New Counterparty
    When Go Into Counterparty
    When Filling LegalInformation
    When Filling PaymentDetails
    When Filling CountryLookup
    When Filling Categorization
    When Filling AddNewContact
    When Finish Counterparty
    sleep    2s

    sleep    5000s
    #When Close Browser

Part Of Create Counterparty
    [Tags]  Smoke
    When Auto Login
    When Go Sales
    When Click Сounterparty
    #When Click AddСounterpartyBtn
    #When Add New Counterparty
    When Go Into Counterparty
    When Filling LegalInformation
    When Filling PaymentDetails
    When Filling CountryLookup
    When Filling Categorization
    When Filling AddNewContact
    When Finish Counterparty
    sleep    2s

    sleep    5000s
    #When Close Browser


Finish Counterparty
    [Tags]  Smoke
    When Auto Login
    When Go Sales
    When Click Сounterparty
    #When Click AddСounterpartyBtn
    #When Add New Counterparty
    Wait Until Page Contains Element  xpath=//*[@class='grid-cols-2 grid-primary-column']//*[text()='${NameCounterparty}']  timeout=30
    click Element   xpath=//*[@class='grid-cols-2 grid-primary-column']//*[text()='${NameCounterparty}']
    Wait Until Page Contains Element  ${LabelCounterparty}  timeout=30
    When Finish Counterparty
    sleep    2s

    sleep    5000s
    #When Close Browser

*** Keywords ***

