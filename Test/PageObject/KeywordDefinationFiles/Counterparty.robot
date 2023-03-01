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
    Wait Until Page Contains Element  ${NameCounterpartyPH}  timeout=30

Click MainPhone
    Wait Until Page Contains Element  ${Phone}  timeout=30
    Click  ${Phone}

Click AddPaymentDetailsBtn
    Wait Until Page Contains Element  ${AddPaymentDetailsBtn}  timeout=30
    Click  ${AddPaymentDetailsBtn}
    Wait Until Page Contains Element  ${BIK}  timeout=30

Click TypeAdress
    Wait Until Page Contains Element  ${TypeAdress}  timeout=30
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
    Wait Until Page Contains Element  ${AddNewContactBtn}  timeout=30
    Click  ${AddNewContactBtn}
    Wait Until Page Contains Element  ${ContactHeader}  timeout=30
    Wait Until Page Contains Element  ${NameNewContact}  timeout=30


Click SelectOwnerLookup1
    Wait Until Page Contains Element  ${SelectOwnerLookup1}  timeout=30
    Click   ${SelectOwnerLookup1}

Click SelectFromListOwnerLookup
    Wait Until Page Contains Element  ${SelectFromListOwnerLookup}  timeout=30
    Click   ${SelectFromListOwnerLookup}

Click Responsible
    Wait Until Page Contains Element  ${Responsible}  timeout=30
    Click   ${Responsible}


Click DepartmentNewContact
    Wait Until Page Contains Element  ${DepartmentNewContact}  timeout=30
    Click   ${DepartmentNewContact}
    Wait Until Page Contains Element  ${AdministrationNewContact}  timeout=30
    Click   ${AdministrationNewContact}



Select TypeCounterparty
    Run Keyword And Ignore Error    Scroll Element Into View    xpath=//input[@id='AccountPageV2McsAccountInTypeComboBoxEdit-item-input']
    Click    ${SelectType}
    Wait Until Page Contains Element  ${OurCompanyType}  timeout=30
    sleep    2s
    Click    ${OurCompanyType}
    Click    ${SelectType}
    Wait Until Page Contains Element  ${ContractorCompanyType}  timeout=30
    sleep    2s
    Click    ${ContractorCompanyType}
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
    Wait Until Page Contains Element  ${InnCounterpartyPH}  timeout=30

Input InnCounterparty
    Input Text  ${InnCounterpartyPH}  ${InnCounterparty}

Input Email
    Wait Until Page Contains Element  ${Email}  timeout=30
    Input Text  ${Email}  ${EmailValue}

#Input Phone
    #Input Text  ${Phone}  ${PhoneValue}

Input PublicName
    Wait Until Page Contains Element  ${PublicName}  timeout=30
    Input Text  ${PublicName}  ${PublicNameValue}

Input ShortName
    Wait Until Page Contains Element  ${ShortName}  timeout=30
    Input Text  ${ShortName}  ${ShortNameValue}

Input OGRN
    Wait Until Page Contains Element  ${OGRN}  timeout=30
    Input Text  ${OGRN}  ${OGRNValue}

Input KPP
    Wait Until Page Contains Element  ${KPP}  timeout=30
    Input Text  ${KPP}  ${KPPValue}

Input OKPO
    Wait Until Page Contains Element  ${OKPO}  timeout=30
    Input Text  ${OKPO}  ${OKPOValue}

Input BIK
    Wait Until Page Contains Element  ${BIK}  timeout=30
    Input Text  ${BIK}  ${BIKValue}

Input AccountNumber
    Wait Until Page Contains Element  ${AccountNumber}  timeout=30
    Input Text  ${AccountNumber}  ${AccountNumberValue}

Input Country
    Wait Until Page Contains Element  ${Country}  timeout=30
    Input Text  ${Country}  ${CountryValue}

Input Region
    Wait Until Page Contains Element  ${Region}  timeout=30
    Input Text  ${Region}  ${RegionValue}

Input Area
    Wait Until Page Contains Element  ${Area}  timeout=30
    Input Text  ${Area}  ${AreaValue}

Input City
    Wait Until Page Contains Element  ${City}  timeout=30
    Input Text  ${City}  ${CityValue}

Input AdressFromCity
    Wait Until Page Contains Element  ${AdressFromCity}  timeout=30
    Input Text  ${AdressFromCity}  ${AdressFromCityValue}

Input NameNewContact
    Wait Until Page Contains Element  ${NameNewContact}  timeout=30
    Input Text  ${NameNewContact}  ${NameNewContactValue}

Input EmailNewContact
    Wait Until Page Contains Element  ${EmailNewContact}  timeout=30
    Input Text  ${EmailNewContact}  ${EmailNewContactValue}

Input JobTitleNewContact
    Wait Until Page Contains Element  ${JobTitleNewContact}  timeout=30
    Input Text  ${JobTitleNewContact}  ${SupervisorNewContactValue}
    Wait Until Page Contains Element  ${SupervisorNewContact}  timeout=30
    Click    ${SupervisorNewContact}



Press Our Key
    [Arguments]    ${Key}   ${Num}    ${xpath}
    FOR    ${index}    IN RANGE     ${Num}
        Press Key   ${xpath}        ${Key}
    END



Input ZipCode
    Input Text  ${ZipCode}  ${ZipCodeValue}

Add New Counterparty
     Input NameCounterparty
     Input InnCounterparty
     Wait Until Page Contains Element  ${OwnersFormCounterpartyPH}  timeout=30
     Click Element  ${OwnersFormCounterpartyPH}
     Wait Until Page Contains Element  ${OwnersFormCounterparty}  timeout=30
     Click Element   ${OwnersFormCounterparty}
     Click Element    ${SaveEditButton}


Go Into Counterparty
    Wait Until Page Contains Element  xpath=//*[@class='grid-cols-2 grid-primary-column']//*[text()='${NameCounterparty}']  timeout=30
    click Element   xpath=//*[@class='grid-cols-2 grid-primary-column']//*[text()='${NameCounterparty}']
    Select TypeCounterparty
    Input Email
    Click Element   xpath=//*[@id='AccountPageV2AccountPhoneTextEdit-el']
    sleep    1s
    Press Our Key    \ue012    14    xpath=//input[@id='AccountPageV2AccountPhoneTextEdit-el']
    sleep    1s
    Press Our Key    \ue021    10    xpath=//input[@id='AccountPageV2AccountPhoneTextEdit-el']
    Click Element    ${SaveButton}
    sleep    5s

Filling LegalInformation
    Wait Until Page Contains Element  xpath=//*[@class='grid-cols-2 grid-primary-column']//*[text()='${NameCounterparty}']  timeout=30
    click Element   xpath=//*[@class='grid-cols-2 grid-primary-column']//*[text()='${NameCounterparty}']
    Input PublicName
    Input ShortName
    Input OGRN
    Input KPP
    Input OKPO
    Click Element    ${SaveButton}
    sleep    5s

Filling PaymentDetails
    sleep    5s
    Click AddPaymentDetailsBtn
    Input BIK
    Wait Until Page Contains Element  xpath=//li[contains(@data-item-marker,'${BIKValue}')][1]  timeout=30
    click element   xpath=//li[contains(@data-item-marker,'${BIKValue}')][1]
    Input AccountNumber
    Click Element    ${SaveButton}
    sleep    5s

Filling CountryLookup
    sleep    5s
    Click Element   ${AddAddressDetailsBtn}
    Click TypeAdress
    Input Country
    sleep    5s
    click element   xpath=//li[contains(@data-item-marker,'${CountryValue}')][1]
    Input Region
    sleep    5s
    click element   xpath=//li[contains(@data-item-marker,'${RegionValue}')][1]
    Input Area
    sleep    5s
    click element   xpath=//div[contains(@data-item-marker,'Район')]/ul/li[1]
    Input City
    sleep    5s
    click element   xpath=//div[contains(@data-item-marker,'Город')]/ul/li[1]
    Input AdressFromCity
    Input ZipCode
    Click Element    ${SaveButton}
    sleep    5s

Filling Categorization
    Click SelectOwnerLookup1
    Click SelectFromListOwnerLookup
    Run Keyword And Ignore Error    Scroll Element Into View    xpath=//*[@id='AccountPageV2AccountOwnerLookupEdit-el']/..
    Click OwnerLookup
    Click Responsible
    Click ResponsibleSaveBtn
    sleep    5s

Filling AddNewContact
    Click AddNewContactBtn
    Input NameNewContact
    Input EmailNewContact
    Click Element    ${WorkSpaceNewContact}
    Input JobTitleNewContact
    Click DepartmentNewContact
    #Click Element    ${SupervisorNewContact}
    #Click Element    ${DepartmentNewContact}
    #Click Element    ${AdministrationNewContact}
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
    sleep    5s


Finish Counterparty
     RELOAD PAGE
     Wait Until Page Contains Element  ${LabelCounterparty}  timeout=30
     Wait Until Page Contains Element  ${ExecuteTask}  timeout=30
     Click Element    ${ExecuteTask}
     Wait Until Page Contains Element  ${SelectResultTask}  timeout=30
     Click Element    ${SelectResultTask}
     Wait Until Page Contains Element  ${CooperationRecommended}  timeout=30
     Click Element    ${CooperationRecommended}
     sleep    2s
     Click Element    ${SaveEditButton}





