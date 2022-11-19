*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Click PaymentScheduleSection
    Click Element  ${PaymentScheduleSection}
