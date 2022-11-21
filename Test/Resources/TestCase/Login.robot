*** Settings ***
Documentation  Login
Library  SeleniumLibrary
Resource  ../../PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../../PageObject/KeywordDefinationFiles/LeftMenu.robot
Resource  ../../PageObject/KeywordDefinationFiles/HomePage.robot
Resource  ../../PageObject/KeywordDefinationFiles/PaymentScheduleSection.robot
Resource  ../../PageObject/KeywordDefinationFiles/CommonSection.robot
*** Variables ***

*** Test Cases ***
Login to Acros
    [Tags]  Smoke
    When Auto Login
    When Go Sales
    When Click PaymentScheduleSection
    When Section Filter Remove
    When Set Section Filter    Валюта    Рубль
    When Set Section Filter    Название    1
    sleep    5s
    When Close Browser


*** Keywords ***

