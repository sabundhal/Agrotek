*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/Testdata.py
Variables    ../Locators/Locators.py

*** Keywords ***
Open Chrome
    Open Browser  http://across-test.maticson-lab.ru/Login  Chrome
