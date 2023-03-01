*** Settings ***
Documentation  Login
Library  SeleniumLibrary
Resource  ../../PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../../PageObject/KeywordDefinationFiles/LeftMenu.robot
Resource  ../../PageObject/KeywordDefinationFiles/CommonSection.robot
Resource  ../../PageObject/KeywordDefinationFiles/Counterparty.robot
*** Variables ***

*** Test Cases ***
Login to Agrotek
    [Tags]  Smoke
    When Auto Login
    When Go Sales
    When Click Сounterparty
    #When Click AddСounterpartyBtn
    #When Add New Counterparty
    #When Go Into Counterparty
    When Filling LegalInformation
    When Filling PaymentDetails
    When Filling CountryLookup
    When Filling Categorization
    When Filling AddNewContact
    When Finish Counterparty
    sleep    2s

    sleep    5000s
    #When Close Browser


*** Keywords ***

