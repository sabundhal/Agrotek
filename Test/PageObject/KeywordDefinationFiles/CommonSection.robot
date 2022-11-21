*** Settings ***
Library  SeleniumLibrary
Library    Maticson.py
Variables  ../TestData/Testdata.py
Variables    ../Locators/Locators.py

*** Keywords ***

##############################SectionFilter################################

Section Filter Remove
    Wait Until Element Is Visible   ${TagFilterAddButton}  timeout=30
    # находим все элементы по локатору и добавляем в массив
    ${webElements} =    Get WebElements    xpath=${FilterRemoveButton}
    FOR    ${webElement}    IN    @{webElements}
        # достаем из массива элемент и получаем атрибут
        ${locatorAttribute}=  Get Element Attribute    ${webElement}    id
        click element  ${locatorAttribute}
    END
    # проверяем что фильтров больше нет
    ${countFilter}=    get element count    xpath=${FilterRemoveButton}
    Should Be Equal As Integers  0  ${countFilter}

Click Add Filter Button
    Wait Until Element Is Visible   ${AddFilterButton}  timeout=5
    click element  ${AddFilterButton}

Click Add Condition
    Wait Until Element Is Visible   ${AddCondition}  timeout=5
    click element    ${AddCondition}

Click Add Type Filter
    Wait Until Element Is Visible   xpath=${AddTypeFilter}  timeout=5
    click element    xpath=${AddTypeFilter}

Click Input Value Filter
    Wait Until Element Is Visible   xpath=${InputValueFilter}  timeout=5
    click element    xpath=${InputValueFilter}


Set Section Filter
    [Arguments]    ${TypeFilter}    ${ValueFilter}
    Click Add Filter Button
    Click Add Condition
    Click Add Type Filter
    ${InputValue}=  Get Element Attribute    xpath=${InputValueFilter}    id
    ${val} =    string format    .//*[@class='listview listview-scroll']/ul[1]//*[@data-item-marker='   ${TypeFilter}   ']
    click element    xpath=${val}
    Input Text  ${InputValue}  ${ValueFilter}
    Press Keys  None  ENTER








#    @{element_list}=    get webelements    xpath=.//*[@class='listview listview-scroll']/ul[1]//*[@data-item-marker='       ']
#    :FOR  ${element}    IN     @{element_list}
#

#    ${AddType}=  Get Element Attribute    xpath=${AddTypeFilter}    id
#    Wait Until Element Is Visible   ${AddType}  timeout=10
#    click element    ${AddType}
#    set focus to element     ${AddType}
#    Input Text  ${AddType}  ${TypeFilter}
#    Press Keys  None  ENTER
#            sleep    19999s
#    ${InputValue}=  Get Element Attribute    xpath=${InputValueFilter}    id
#    Wait Until Element Is Visible   ${InputValue}  timeout=10
#    Input Text  ${InputValue}  ${ValueFilter}
#    Press Keys  None  ENTER
#    ${Apply}=  Get Element Attribute    xpath=${ApplyFilter}    id
#    Apply Filter    ${Apply}




#    Click Add Type Filter
#    click element  css:[data-item-marker='${TypeFilter}']
#    Click Input Value Filter
#    click element  css:[data-item-marker='${ValueFilter}']
