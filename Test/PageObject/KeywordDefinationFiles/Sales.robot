*** Settings ***
Library  SeleniumLibrary
Library    Maticson.py
Variables  ../TestData/Testdata.py
Variables    ../Locators/Locators.py
Resource  ../../PageObject/KeywordDefinationFiles/Needs.robot
*** Keywords ***
Wait Until Page Is Loaded
    Wait For Condition    return window.document.readyState === "complete"

##############################SectionFilter################################
Click
    [Arguments]    ${Element}
    ${check_element}=  Run Keyword and Return Status   Wait Until Page Contains Element    ${Element}    10s
    Run Keyword If      '${check_element}' == 'True'     Click Element  ${Element}

Select Adress
    Wait Until Page Contains Element  ${SalesPassportSection}  timeout=30
    Click    ${SalesPassportSection}
    Wait Until Page Contains Element  ${SelectAddressList}  timeout=30
    Click    ${SelectAddressList}

Select OpportunutyOfContract
    Wait Until Page Contains Element  ${OpportunutyOfContract}  timeout=30
    Click    ${OpportunutyOfContract}
    Wait Until Page Contains Element  ${ArbitraryCredit}  timeout=30
    Click    ${ArbitraryCredit}
    Wait Until Page Contains Element  ${SayYesBtn}  timeout=30
    Click    ${SayYesBtn}

Select ShipmentWarehouse
    Wait Until Page Contains Element  ${ShipmentWarehouse}  timeout=30
    Click    ${ShipmentWarehouse}
    Input Text  ${ShipmentWarehouse}  ${ShipmentWarehouseValue}
    Wait Until Page Contains Element  ${SelectedShipmentWarehouse}  timeout=30
    Click    ${SelectedShipmentWarehouse}




Data of Sales
    Select Adress
    Click   ${DataOfSalesSection}
    #Select ShipmentWarehouse
    Select OpportunutyOfContract
    #ДОБАВИТЬ ЗАДЕРЖКУ НА ОК ЧТО график будет пересоздан

    Complete Task Visit







