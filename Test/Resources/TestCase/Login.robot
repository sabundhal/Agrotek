*** Settings ***
Documentation  Login
Library  SeleniumLibrary
Resource  ../../PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../../PageObject/KeywordDefinationFiles/Common.robot
Resource  ../../PageObject/KeywordDefinationFiles/HomePage.robot

*** Variables ***

*** Test Cases ***
Login to Acros
    [Tags]  Smoke
    When Auto Login
    When Click PaymentScheduleSection
    When Close Browser


*** Keywords ***

