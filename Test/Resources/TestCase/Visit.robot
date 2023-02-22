*** Settings ***
Documentation  Login
Library  SeleniumLibrary
Resource  ../../PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../../PageObject/KeywordDefinationFiles/LeftMenu.robot
Resource  ../../PageObject/KeywordDefinationFiles/CommonSection.robot
Resource  ../../PageObject/KeywordDefinationFiles/Counterparty.robot
Resource  ../../PageObject/KeywordDefinationFiles/Needs.robot
*** Variables ***

*** Test Cases ***
Create Visit
    [Tags]  Smoke
    When Auto Login
    sleep    2s
    When Go Sales
    sleep    2s
    When Add Needs
    sleep    2s
    When Add Visit
    sleep    2s
    sleep    5000s
    #When Close Browser


*** Keywords ***

