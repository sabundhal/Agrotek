*** Settings ***
Library  SeleniumLibrary
Library    Maticson.py
Variables  ../TestData/Testdata.py
Variables    ../Locators/Locators.py

*** Keywords ***
Wait Until Page Is Loaded
    Wait For Condition    return window.document.readyState === "complete"

##############################SectionFilter################################
Click
    [Arguments]    ${Element}
    ${check_element}=  Run Keyword and Return Status   Wait Until Page Contains Element    ${Element}    10s
    Run Keyword If      '${check_element}' == 'True'     Click Element  ${Element}

Section Filter Remove
    Wait Until Page Contains Element  ${TagFilterAddButton}  timeout=60
    Wait Until Element Is Visible   ${TagFilterAddButton}  timeout=60
    # находим все элементы по локатору и добавляем в массив
    ${webElements} =    Get WebElements     ${FilterRemoveButton}
    FOR    ${webElement}    IN    @{webElements}
        ${locatorAttribute}=  Get Element Attribute    ${webElement}    id
        Click  ${locatorAttribute}
    END
    # проверяем что фильтров больше нет
    ${countFilter}=    get element count     ${FilterRemoveButton}
    Should Be Equal As Integers  0  ${countFilter}


Set Section Filter
    [Arguments]    ${TypeFilter}    ${ValueFilter}
    Click  ${AddFilterButton}
    Click    ${AddCondition}
    Click     ${AddTypeFilter}
    ${InputValue}=  Get Element Attribute     ${InputValueFilter}    id
    click element     xpath=.//*[@class='listview listview-scroll']/ul[1]//*[@data-item-marker='${TypeFilter}']
    Input Text  ${InputValue}  ${ValueFilter}
    Click     ${ApplyFilter}

Click AddСounterpartyBtn
    Click  ${AddСounterpartyBtn}
    Wait Until Page Contains Element  ${MiniPageHeader}  timeout=30

Click AddPaymentDetailsBtn
    Click  ${AddPaymentDetailsBtn}
    Wait Until Page Contains Element  ${BIK}  timeout=30

Click TypeAdress
    Click  ${TypeAdress}
    Wait Until Page Contains Element  ${Country}  timeout=30

Click OwnerLookup
    Click   ${OwnerLookup1}
    sleep    2s
    Click   ${OwnerLookup2}
    Wait Until Page Contains Element  ${Responsible}  timeout=30

Click ResponsibleSaveBtn
    Click  ${ResponsibleSaveBtn}
    Wait Until Page Contains Element  ${AddNewContactBtn}  timeout=30
    Wait Until Page Contains Element  ${CloseBtn}  timeout=30

Click AddNewContactBtn
    Click  ${AddNewContactBtn}
    Wait Until Page Contains Element  ${ContactHeader}  timeout=30
    Wait Until Page Contains Element  ${NameNewContact}  timeout=30

Select TypeCounterparty
    Run Keyword And Ignore Error    Scroll Element Into View    xpath=//input[@id='AccountPageV2McsAccountInTypeComboBoxEdit-item-input']
    sleep    2s
    Click    ${SelectType}
    Wait Until Page Contains Element  ${OurCompanyType}  timeout=30
    sleep    2s
    Click    ${OurCompanyType}
    sleep    2s
    Click    ${SelectType}
    Wait Until Page Contains Element  ${ContractorCompanyType}  timeout=30
    sleep    2s
    Click    ${ContractorCompanyType}
    sleep    2s
    Click    ${SelectType}
    sleep    2s
    Wait Until Page Contains Element  ${ProviderCompanyType}  timeout=30
    Click    ${ProviderCompanyType}


Execute Task
    Click    ${ExecuteTask}
    Wait Until Page Contains Element  ${SelectResultTask}  timeout=30
    Click    ${SelectResultTask}
    Wait Until Page Contains Element  ${CooperationRecommended}  timeout=30
    Click    ${CooperationRecommended}
    sleep    2s
    Click    ${SaveEditButton}

Payment Details
    Click    ${AddAddressDetailsBtn}
    Wait Until Page Contains Element  ${SelectResultTask}  timeout=30
    Click    ${NameAreaPlant}
    sleep    2s
    Press Our Key    \ue003    1    xpath=//div[contains(@data-item-marker,'Название')]/input
    sleep    2s
    Input Text  ${NameAreaPlant}  ${NameAreaPlantValue}
    Click    ${CultureAreaPlant}
    Input Text  ${SteamCultureAreaPlant}  ${SteamCultureAreaPlantValue}
    Click    ${SelectCultureAreaPlant}
    Wait Until Page Contains Element  ${SteamCultureAreaPlant}  timeout=30
    Click    ${SteamCultureAreaPlant}
    Click    ${ResponsibleSaveBtn}
    Wait Until Page Contains Element  ${SelectResultTask}  timeout=30
    Click    ${ResponsibleSaveBtn}
    Input Text  ${SquareAreaPlant}  ${SquareAreaPlantValue}
    Input Text  ${LocationAreaPlant}  ${LocationAreaPlantValue}
    Click    ${OwnershipTypeAreaPlant}
    Wait Until Page Contains Element  ${OwnedOwnershipTypeAreaPlant}  timeout=30
    Click    ${OwnedOwnershipTypeAreaPlant}





Input NameCounterparty
    Input Text  ${NameCounterpartyPH}  ${NameCounterparty}
Input InnCounterparty
    Input Text  ${InnCounterpartyPH}  ${InnCounterparty}

Input Email
    Input Text  ${Email}  ${EmailValue}

Input Phone
    Input Text  ${Phone}  ${PhoneValue}

Input PublicName
    Input Text  ${PublicName}  ${PublicNameValue}

Input ShortName
    Input Text  ${ShortName}  ${ShortNameValue}

Input OGRN
    Input Text  ${OGRN}  ${OGRNValue}

Input KPP
    Input Text  ${KPP}  ${KPPValue}

Input OKPO
    Input Text  ${OKPO}  ${OKPOValue}

Input BIK
    Input Text  ${BIK}  ${BIKValue}

Input AccountNumber
    Input Text  ${AccountNumber}  ${AccountNumberValue}

Input Country
    Input Text  ${Country}  ${CountryValue}

Input Region
    Input Text  ${Region}  ${RegionValue}

Input Area
    Input Text  ${Area}  ${AreaValue}

Input City
    Input Text  ${City}  ${CityValue}

Input AdressFromCity
    Input Text  ${AdressFromCity}  ${AdressFromCityValue}

Input NameNewContact
    Input Text  ${NameNewContact}  ${NameNewContactValue}

Input EmailNewContact
    Input Text  ${EmailNewContact}  ${EmailNewContactValue}

Input JobTitleNewContact
    Input Text  ${JobTitleNewContact}  ${SupervisorNewContactValue}

Press Our Key
    [Arguments]    ${Key}   ${Num}    ${xpath}
    FOR    ${index}    IN RANGE     ${Num}
        Press Key   ${xpath}        ${Key}
    END



Input ZipCode
    Input Text  ${ZipCode}  ${ZipCodeValue}

Add New Counterparty
     sleep    2s
     Input NameCounterparty
     sleep    2s
     Input InnCounterparty
     sleep    2s
     Click Element  ${OwnersFormCounterpartyPH}
     sleep    2s
     Click Element   ${OwnersFormCounterparty}
     sleep    2s
     Click Element    ${SaveEditButton}

Go Into Counterparty
    click Element   xpath=//*[@class='grid-cols-2 grid-primary-column']//*[text()='${NameCounterparty}']
    sleep    2s
    Select TypeCounterparty
    sleep    2s
    Input Email
    sleep    2s
    Click Element   xpath=//*[@id='AccountPageV2AccountPhoneTextEdit-el']
    sleep    2s
    Press Our Key    \ue012    14    xpath=//input[@id='AccountPageV2AccountPhoneTextEdit-el']
    sleep    2s
    Press Our Key    \ue021    10    xpath=//input[@id='AccountPageV2AccountPhoneTextEdit-el']
    sleep    2s
    Click Element    ${SaveButton}
    sleep    5s

Filling LegalInformation
    Input PublicName
    sleep    2s
    Input ShortName
    sleep    2s
    Input OGRN
    sleep    2s
    Input KPP
    sleep    2s
    Input OKPO
    sleep    2s
    Click Element    ${SaveButton}
Filling PaymentDetails
    Click AddPaymentDetailsBtn
    Input BIK
    sleep    5s
    click element   xpath=//li[contains(@data-item-marker,'${BIKValue}')][1]
    Input AccountNumber
    sleep    5s
    Click Element    ${SaveButton}

Filling CountryLookup
    sleep    2s
    Click Element   ${AddAddressDetailsBtn}
    sleep    2s
    Click TypeAdress
    sleep    2s
    Input Country
    sleep    2s
    click element   xpath=//li[contains(@data-item-marker,'${CountryValue}')][1]
    sleep    2s
    Input Region
    sleep    2s
    click element   xpath=//li[contains(@data-item-marker,'${RegionValue}')][1]
    sleep    2s
    Input Area
    sleep    2s
    click element   xpath=//div[contains(@data-item-marker,'Район')]/ul/li[1]
    sleep    2s
    Input City
    sleep    2s
    click element   xpath=//div[contains(@data-item-marker,'Город')]/ul/li[1]
    sleep    2s
    Input AdressFromCity
    sleep    2s
    Input ZipCode
    sleep    2s
    Click Element    ${SaveButton}
    sleep    2s

Filling Categorization
    Click Element   ${SelectOwnerLookup1}
    sleep    2s
    #Click Element   ${SelectOwnerLookup2}
    sleep    2s
    Click Element   ${SelectFromListOwnerLookup}
    sleep    5s
    Run Keyword And Ignore Error    Scroll Element Into View    xpath=//*[@id='AccountPageV2AccountOwnerLookupEdit-el']/..
    #Scroll Element Into View   ${OwnerLookup1}
    sleep    5s
    Click OwnerLookup
    sleep    2s
    Click Element   ${Responsible}
    sleep    2s
    Click ResponsibleSaveBtn

Filling AddNewContact
    sleep    5s
    Click AddNewContactBtn
    sleep    5s
    Input NameNewContact
    sleep    2s
    Input EmailNewContact
    sleep    2s
    Click Element    ${WorkSpaceNewContact}
    sleep    2s
    Input JobTitleNewContact
    sleep    2s
    Click Element    ${SupervisorNewContact}
    sleep    2s
    Click Element    ${DepartmentNewContact}
    sleep    2s
    Click Element    ${AdministrationNewContact}
    sleep    2s
    Click Element    ${MobilePhoneNewContact}
    sleep    2s
    Press Our Key    \ue012    14    xpath=//input[@id='ContactPageV2AccountMobilePhoneTextEdit-el']
    sleep    2s
    Press Our Key    \ue023    10    xpath=//input[@id='ContactPageV2AccountMobilePhoneTextEdit-el']
    sleep    2s
    Click Element    ${WorkPhoneNewContact}
    sleep    2s
    Press Our Key    \ue012    14    xpath=//input[@id='ContactPageV2AccountPhoneTextEdit-el']
    sleep    2s
    Press Our Key    \ue022    10    xpath=//input[@id='ContactPageV2AccountPhoneTextEdit-el']
    sleep    2s
    Click Element    ${SaveButton}
    sleep    5s
    Click Element    ${SaveButton}







