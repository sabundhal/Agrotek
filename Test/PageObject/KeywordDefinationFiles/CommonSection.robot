*** Settings ***
Library  SeleniumLibrary
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
    Wait Until Element Is Visible   ${AddTypeFilter}  timeout=5
    click element    ${AddTypeFilter}

Click Input Value Filter
    Wait Until Element Is Visible   ${InputValueFilter}  timeout=5
    click element    ${InputValueFilter}

Apply Filter
    Wait Until Element Is Visible   xpath=${ApplyFilter}  timeout=5
    double click element    xpath=${ApplyFilter}

Set Section Filter
    [Arguments]    ${TypeFilter}    ${ValueFilter}
    Click Add Filter Button
    Click Add Condition
    click element    ${TagFilterAddButton}
    Input Text  xpath=${AddTypeFilter}  ${TypeFilter}
    Press Keys  None  ENTER
    Input Text  xpath=${InputValueFilter}  ${ValueFilter}
    Press Keys  None  ENTER
    Apply Filter



#    Click Add Type Filter
#    click element  css:[data-item-marker='${TypeFilter}']
#    Click Input Value Filter
#    click element  css:[data-item-marker='${ValueFilter}']
