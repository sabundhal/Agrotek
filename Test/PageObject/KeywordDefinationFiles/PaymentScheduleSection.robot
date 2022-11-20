*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/Locators.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Section Filter Remove
  ${list} =   get selected list labels   ${FilterRemoveButton}
  log    ${list}