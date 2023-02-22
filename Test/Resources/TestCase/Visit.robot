*** Settings ***
Documentation  Login
Library  SeleniumLibrary
Resource  ../../PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../../PageObject/KeywordDefinationFiles/LeftMenu.robot
Resource  ../../PageObject/KeywordDefinationFiles/CommonSection.robot
Resource  ../../PageObject/KeywordDefinationFiles/Counterparty.robot
Resource  ../../PageObject/KeywordDefinationFiles/Needs.robot
Resource  ../../PageObject/KeywordDefinationFiles/Visit.robot
*** Variables ***

*** Test Cases ***
Create Sale
    [Tags]  Smoke
    When Auto Login
    sleep    2s
    When Go Sales
    sleep    2s




    sleep    5000s
    #When Close Browser


*** Keywords ***
