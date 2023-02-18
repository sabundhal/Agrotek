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
    Click  ${OwnerLookup}
    Wait Until Page Contains Element  ${Responsible}  timeout=30

Click ResponsibleSaveBtn
    Click  ${ResponsibleSaveBtn}
    Wait Until Page Contains Element  ${MiniPageHeader}  timeout=30

Click AddNewContactBtn
    Click  ${AddNewContactBtn}
    Wait Until Page Contains Element  ${ContactHeader}  timeout=30




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

Input MobilePhoneNewContact
    Input Text  ${MobilePhoneNewContact}  ${PhoneValue}




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
    click element   xpath=//*[@class='grid-cols-2 grid-primary-column']//*[text()='${NameCounterparty}']
    #sleep    7s
    #Input Email
    sleep    2s
    #Click Element   ${Phone}
    #sleep    2s
    #Input Phone
    #sleep    2s
    #Click Element    ${SaveButton}
    #sleep    2s
    ##############LegalInformation
    #Input PublicName
    #sleep    2s
    #Input ShortName
    #sleep    2s
    #Input OGRN
    #sleep    2s
    #Input KPP
    #sleep    2s
    #Input OKPO
    #sleep    2s
    #Click Element    ${SaveButton}
    ############PaymentDetails
    #Click AddPaymentDetailsBtn
    #Input BIK
    #sleep    5s
    #click element   xpath=//li[contains(@data-item-marker,'${BIKValue}')][1]
    #Input AccountNumber
    #sleep    5s
    #Click Element    ${SaveButton}

    ########################CountryLookup
    #sleep    2s
    #Click Element   ${AddAddressDetailsBtn}
    #sleep    2s
    #Click TypeAdress
    #sleep    2s
    #Input Country
    #sleep    2s
    #click element   xpath=//li[contains(@data-item-marker,'${CountryValue}')][1]
    #sleep    2s
    #Input Region
    #sleep    2s
#    click element   xpath=//li[contains(@data-item-marker,'${RegionValue}')][1]
#    sleep    2s
#    Input Area
#    sleep    2s
#    click element   xpath=//div[contains(@data-item-marker,'Район')]/ul/li[1]
#    sleep    2s
#    Input City
#    sleep    2s
#    click element   xpath=//div[contains(@data-item-marker,'Город')]/ul/li[1]
#    sleep    2s
#    Input AdressFromCity
#    sleep    2s
#    Input ZipCode
#    sleep    2s
#    Click Element    ${SaveButton}
#    sleep    2s
    ##########Categorization
    #Click Element   ${SelectOwnerLookup}
    #sleep    2s
    #Click Element   ${SelectFromListOwnerLookup}
    #sleep    2s
    #Click OwnerLookup
    #sleep    2s
    #Click Element   ${Responsible}
    #sleep    2s
    #Click ResponsibleSaveBtn
    ############AddNewContact
    sleep    2s
    Click AddNewContactBtn
#    sleep    2s
#    Input NameNewContact
#    sleep    2s
#    Input EmailNewContact
#    sleep    2s
#    Click Element    ${WorkSpaceNewContact}
#    sleep    2s
#    Input JobTitleNewContact
#    sleep    2s
#    Click Element    ${SupervisorNewContact}
#    sleep    2s
#    Click Element    ${DepartmentNewContact}
#    sleep    2s
#    Click Element    ${AdministrationNewContact}
    sleep    2s
    Input MobilePhoneNewContact
    sleep    10s
    #Click Element    ${MobilePhoneNewContact}
    sleep    10s
    Click Element    ${WorkPhoneNewContact}
    sleep    10s










#    @{element_list}=    get webelements     .//*[@class='listview listview-scroll']/ul[1]//*[@data-item-marker='       ']
#    :FOR  ${element}    IN     @{element_list}
#

#    ${AddType}=  Get Element Attribute     ${AddTypeFilter}    id
#    Wait Until Element Is Visible   ${AddType}  timeout=10
#    click element    ${AddType}
#    set focus to element     ${AddType}
#    Input Text  ${AddType}  ${TypeFilter}
#    Press Keys  None  ENTER
#            sleep    19999s
#    ${InputValue}=  Get Element Attribute     ${InputValueFilter}    id
#    Wait Until Element Is Visible   ${InputValue}  timeout=10
#    Input Text  ${InputValue}  ${ValueFilter}
#    Press Keys  None  ENTER
#    ${Apply}=  Get Element Attribute     ${ApplyFilter}    id
#    Apply Filter    ${Apply}




#    Click Add Type Filter
#    click element  css:[data-item-marker='${TypeFilter}']
#    Click Input Value Filter
#    click element  css:[data-item-marker='${ValueFilter}']


#${common xpath}    xpath=//label[contains(text(), '{0}')]
#
#${text to be replaced}    my name
#
#${final xpath}    Evaluate    "${common xpath}".format("${text to be replaced}")
#
#log ${final xpath}
#
#
#Section Filter Remove
#    Wait Until Page Contains Element  ${TagFilterAddButton}  timeout=60
#    Wait Until Element Is Visible   ${TagFilterAddButton}  timeout=60
#    # находим все элементы по локатору и добавляем в массив
#    ${webElements} =    Get WebElements     ${FilterRemoveButton}
#    FOR    ${webElement}    IN    @{webElements}
#        # достаем из массива элемент и получаем атрибут
#        ${locatorAttribute}=  Get Element Attribute    ${webElement}    id
#        Click  ${locatorAttribute}
#    END
#    # проверяем что фильтров больше нет
#    ${countFilter}=    get element count     ${FilterRemoveButton}
#    Should Be Equal As Integers  0  ${countFilter}
#




