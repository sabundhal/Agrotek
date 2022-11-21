# Login Page locators
URL = "http://across-test.maticson-lab.ru/Login"  # Acros
LoginUsernameInputBox = "id:loginEdit-el"
LoginPasswordInputBox = "id:passwordEdit-el"
LoginButton = "id:t-comp17-textEl"

# Home Page Locators
MainHeaderLabel = "id:MainHeaderSchemaCaptionValueLabel"

# Left Menu
PaymentScheduleSection = "css:[module-name=\"McsPaymentSchedule\"]"
TopMenu = "id:top-menu-workplace-button-container"
Sales = "css:[data-item-marker=\"Продажи\"]"
Studio = "css:[data-item-marker=\"Студия\"]"

# CommonSection
CustomFilterContainer = "css:[class=\"custom-filter-container custom-filter-arrow\"]"
TagFilterAddButton = "css:[data-item-marker=\"TagFilterAddButton\"]"
FilterRemoveButton = ".//*[@class='t-btn-wrapper t-btn-no-text-padding t-btn-style-transparent filter-remove-button']"
AddFilterButton = "css:[class='filter-inner-container custom-filter-button-container']"
AddCondition = "css:[data-item-marker='Добавить условие']"
AddTypeFilter = ".//*[@class='base-edit ts-box-sizing base-edit-with-right-icon filter-simple-filter-edit']/input"
InputValueFilter = ".//*[@class='base-edit ts-box-sizing filter-simple-filter-edit']/input"
ApplyFilter = ".//*[@class='t-btn-wrapper t-btn-no-text-padding t-btn-style-blue filter-element-with-right-space']/span"
ListFilters = ".//*[@class='listview listview-scroll']/ul[1]//*[@data-item-marker='Валюта']"


# Payment Schedule Section
centerPanel = "id:centerPanel"

# ${src}=    Get Element Attribute    xpath=.//*[@class="t-btn-wrapper t-btn-no-text-padding t-btn-style-transparent filter-remove-button"]    id
# ${cun}=    get element count    xpath=.//*[@class="t-btn-wrapper t-btn-no-text-padding t-btn-style-transparent filter-remove-button"]
#
#    Get Element Attribute
#    [Arguments]    ${element}    ${attr}
#    ${list_of_attributes}    Get Attribute Names    ${element}
#    ${value}=    Set Variable    None
#    ${value}=    Run Keyword If    ${attr} in ${list_of_attributes}    Get Attribute    ${element}
#   ${attr}
#    [Return]    ${value}

#    wait until keyword succeeds    10s    1s    click element  ${locatorAttribute}

# base - edit - focus