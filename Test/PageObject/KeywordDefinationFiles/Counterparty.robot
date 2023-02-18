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
    sleep    5s
    Input Email
    sleep    2s
    Click Element   ${Phone}
    sleep    2s
    Input Phone
    sleep    2s
    Click Element    ${SaveButton}
    sleep    2s
    #LegalInformation
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




