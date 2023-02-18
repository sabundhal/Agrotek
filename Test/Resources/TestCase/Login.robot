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
    sleep    2s
    When Go Sales
     sleep    2s
    When Click Сounterparty
     sleep    2s
    #When Click AddСounterpartyBtn
     #sleep    2s
    #When Add New Counterparty
    sleep    5s
    When Go Into Counterparty
    sleep    2s
    sleep    5000s
    #When Close Browser


*** Keywords ***

