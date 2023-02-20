# Login Page locators

LoginUsernameInputBox = "id:loginEdit-el"
LoginPasswordInputBox = "id:passwordEdit-el"
LoginButton = "id:t-comp16-textEl"

# Home Page Locators
MainHeaderLabel = "id:MainHeaderSchemaCaptionValueLabel"

# Left Menu
PaymentScheduleSection = "id:sidebar-item-text-8"
IntegrationLogSection = "id:sidebar-item-text-11"
Сounterparty = "id:sidebar-item-text-4"
TopMenu = "id:top-menu-workplace-button-container"
TextMenu = "xpath=.//*[@id='top-menu-workplace-button-container']/span/span"
CollapseBtnMenu = "id:collapse-button-imageEl"
Sales = "css:[data-item-marker=\"Продажи\"]"
Studio = "css:[data-item-marker=\"Студия\"]"

#СounterpartySection
AddСounterpartyBtn = "id:AccountSectionV2SeparateModeAddRecordButtonButton-textEl"
MiniPageHeader = "id:AccountMiniPageMiniPageHeaderCaptionLabel"
DivMinipage = "id:AccountMiniPageMiniPageGridLayout"
#IdCounterparty = "xpath=//div[starts-with(@data-item-marker,'Name')]"
NameCounterpartyPH = "xpath=//*[@data-row='1']/div/div/div/input"
#NameCounterpartyPH = "xpath=//*[contains(@data-item-marker,'Название')]"
InnCounterpartyPH = "xpath=//*[@data-row='12']/div/div/div/input"
#OwnersFormCounterpartyPH = "xpath=//*[@data-row='1']//following::input[3]"
OwnersFormCounterpartyPH = "xpath=//*[@data-row='13']//div[@class='base-edit-right-icon-wrapper']"
OwnersFormCounterparty = "xpath=//li[@data-value='98be4276-f36b-1410-fb98-00155d043204']"
SaveEditButton = "xpath=//*[@data-item-marker='SaveEditButton']"
#PaymentDetails
AddPaymentDetailsBtn = "xpath=//*[@id='AccountBillingInfoDetailV2AddRecordButtonButton-imageEl']"
BIK = "xpath=//div[contains(@data-item-marker,'БИК')]/input"
AccountNumber = "xpath=//div[contains(@data-item-marker,'Номер счета')]/input"
SaveButton = "xpath=//*[@data-item-marker='SaveButton']"


#Into СounterpartySection
Email = "xpath=//*[@data-row='7']/div/div/div/input"
Phone = "xpath=//*[@id='AccountPageV2AccountPhoneTextEdit-el']"
SaveBtn = "xpath=//*[@data-item-marker='SaveButton']"

#CountryLookup
AddAddressDetailsBtn = "xpath=//*[@id='AccountAddressDetailV2AddTypedRecordButtonButton-imageEl']"
TypeAdress = "xpath=//*[@data-item-marker='Юридический']"
Country = "//input[@id='AccountAddressPageV2CountryLookupEdit-el']"
Region = "//input[@id='AccountAddressPageV2RegionLookupEdit-el']"
Area = "xpath=//div[contains(@data-item-marker,'Район')]/input"
City = "xpath=//input[@id='AccountAddressPageV2CityLookupEdit-el']"
AdressFromCity = "xpath=//*[@data-row='4']/div/div/div/input"
ZipCode = "//input[@id='AccountAddressPageV2ZipTextEdit-el']"
SaveButtonAdress = "xpath=//*[@data-item-marker='SaveButton']"

#LegalInformation
PublicName = "xpath=//div[contains(@data-item-marker,'Публичное наименование')]/input"
ShortName = "xpath=//div[contains(@data-item-marker,'Краткое наименование')]/div/textarea[2]"
OGRN = "xpath=//div[contains(@data-item-marker,'ОГРН')]/../div/input"
KPP = "xpath=//div[contains(@data-item-marker,'КПП')]/../div/input"
OKPO = "xpath=//div[contains(@data-item-marker,'Код ОКПО')]/../div/input"

#Categorization
SelectOwnerLookup1 = "xpath=//div[starts-with(@id,'AccountPageV2LOOKUP62')]//div[@class='base-edit-right-icon-wrapper']/../input"
#SelectOwnerLookup2 = "xpath=//div[starts-with(@id,'AccountPageV2LOOKUP62')]//div[@class='base-edit-right-icon-wrapper']"
SelectFromListOwnerLookup = "xpath=//li[contains(@data-item-marker,'ОП Воронеж')]"
OwnerLookup1 = "xpath=//*[@id='AccountPageV2AccountOwnerLookupEdit-el']/.."
OwnerLookup2 = "xpath=//*[@id='AccountPageV2AccountOwnerLookupEdit-right-icon-wrapper']"
Responsible = "xpath=//div[@id='grid-grid-wrap']//descendant::div[8]/.."
ResponsibleSaveBtn = "xpath=//*[@data-tag='SelectButton']"






# CommonSection
CustomFilterContainer = "css:[class=\"custom-filter-container custom-filter-arrow\"]"
TagFilterAddButton = "css:[data-item-marker=\"TagFilterAddButton\"]"
FilterRemoveButton = "xpath=.//*[@class='custom-filter-container custom-filter-arrow']//*[@class='t-btn-wrapper t-btn-no-text-padding t-btn-style-transparent filter-remove-button']"
AddFilterButton = "css:[class='filter-inner-container custom-filter-button-container']"
AddCondition = "css:[data-item-marker='Добавить условие']"
AddTypeFilter = "xpath=.//*[@class='base-edit ts-box-sizing base-edit-with-right-icon filter-simple-filter-edit']/input"
InputValueFilter = "xpath=.//*[@class='base-edit ts-box-sizing filter-simple-filter-edit']/input"
ApplyFilter = "xpath=.//*[@class='t-btn-wrapper t-btn-no-text-padding t-btn-style-blue filter-element-with-right-space']/span"
ListFilters = "xpath=.//*[@class='listview listview-scroll']/ul[1]//*[@data-item-marker='Валюта']"



#AddNewContact
CloseBtn = "xpath=//span[@data-item-marker='CloseButton']"
AddNewContactBtn = "xpath=//span[@id='ContactProfileSchemaAddButtonButton-textEl']"
ContactHeader = "xpath=//label[@id='MainHeaderSchemaPageHeaderCaptionLabel']"
NameNewContact = "xpath=//input[@id='ContactPageV2AccountNameTextEdit-el']"
MobilePhoneNewContact = "xpath=//input[@id='ContactPageV2AccountMobilePhoneTextEdit-el']"
WorkPhoneNewContact = "xpath=//input[@id='ContactPageV2AccountPhoneTextEdit-el']"
EmailNewContact = "xpath=//input[@id='ContactPageV2AccountEmailTextEdit-el']"
WorkSpaceNewContact = "xpath=//ul[@id='ContactPageV2TabsTabPanel-tabpanel-items']/li[2]"
JobTitleNewContact = "xpath=//input[@id='ContactPageV2JobComboBoxEdit-el']"
SupervisorNewContact = "xpath=//li[@data-item-marker='Руководитель']"
DepartmentNewContact = "xpath=//input[@id='ContactPageV2DepartmentComboBoxEdit-el']"
AdministrationNewContact = "xpath=//li[@data-item-marker='Администрация']"




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