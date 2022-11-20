*** Settings ***
Documentation  Login
Library  SeleniumLibrary
Resource  ../../PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../../PageObject/KeywordDefinationFiles/Common.robot
Resource  ../../PageObject/KeywordDefinationFiles/HomePage.robot
Resource  ../../PageObject/KeywordDefinationFiles/PaymentScheduleSection.robot
*** Variables ***

*** Test Cases ***
Login to Acros
    [Tags]  Smoke
    When Auto Login
    When Go Sales
    When Click PaymentScheduleSection
    When Wait Until Element Is Visible  ${centerPanel}  timeout=5
    When Section Filter Remove
    sleep    5s
    When Close Browser


*** Keywords ***

