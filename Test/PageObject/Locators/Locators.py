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
Activity = "id:sidebar-item-text-6"

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
LabelCounterparty = "//*[@id='MainHeaderSchemaPageHeaderCaptionLabel']"

Email = "xpath=//*[@data-row='7']/div/div/div/input"
Phone = "xpath=//*[@id='AccountPageV2AccountPhoneTextEdit-el']"

SaveBtn = "xpath=//*[@data-item-marker='SaveButton']"
SelectType = "xpath=//input[@id='AccountPageV2McsAccountInTypeComboBoxEdit-item-input']"
OurCompanyType = "xpath=//li[@data-value='57412fad-53e6-df11-971b-001d60e938c6']"
ContractorCompanyType = "xpath=//li[@data-value='f3c0ce97-53e6-df11-971b-001d60e938c6']"
ProviderCompanyType = "xpath=//li[@data-value='d34b9da2-53e6-df11-971b-001d60e938c6']"

#Execute Task
ExecuteTask = "xpath=//span[@data-item-marker='Execute']"
SelectResultTask = "xpath=//input[@id='ResultComboBoxEdit-el']"
#CooperationRecommended = "xpath=//li[@data-value='d8eefd51-a15f-4add-8289-8f70ff4c494c']"
CooperationRecommended = "xpath=//li[@data-item-marker='Сотрудничество рекомендовано']"
TaskCompleted = "xpath=//li[@data-item-marker='Выполнена']"



#Payment Details
AddAddressDetailsBtn = "xpath=//*[@id='McsAccountSignDetailAddRecordButtonButton-imageEl']"
NameAreaPlant = "xpath=//div[contains(@data-item-marker,'Название')]/input"
SpecialisationAreaPlant = "xpath=//div[contains(@data-item-marker,'Специализация')]/input"
TechCultureSpecialisationAreaPlant = "xpath=//li[contains(@data-item-marker,'Выращивание технических культур')]"
LocationAreaPlant = "xpath=//div[contains(@data-item-marker,'Расположение')]/input"
OwnershipTypeAreaPlant = "xpath=//div[contains(@data-item-marker,'Тип собственности')]/input"
OwnedOwnershipTypeAreaPlant = "xpath=//li[contains(@data-item-marker,'В собственности')]"
CultureAreaPlant = "xpath=//div[contains(@data-item-marker,'Культура')]/input"
SelectCultureAreaPlant = "xpath=//div[contains(@data-item-marker,'Культура')]/input/../div[4]"
SteamCultureAreaPlant = "xpath=//div[contains(@data-item-marker,'Пары')]/div"
Search = "xpath=//input[contains(@id,'searchEdit-el')]"
SearchBtn = "xpath=//span[contains(@data-tag,'SearchButton')]"
#ResponsibleSaveBtn

SquareAreaPlant = "xpath=//div[contains(@data-item-marker,'Площадь, га')]/input"




#//div[@class='grid-layout-row ts-box-sizing '][1]/div[1]/div/div[2]/div/input



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


#Needs

Needs = "id:sidebar-item-text-3"
AddNeedsBtn = "xpath=//span[@data-item-marker='SeparateModeAddRecordButton']"
TypeOfNeedsBtn = "xpath=//input[@id='LeadMiniPageLeadTypeComboBoxEdit-el']"
RevealingTypeOfNeedsBtn = "xpath=//li[@data-item-marker='Выявление']"
AdditionalServicesTypeOfNeedsBtn = "xpath=//li[@data-item-marker='Дополнительные услуги']"
ComputerTechnologyTypeOfNeedsBtn = "xpath=//li[@data-item-marker='Компьютерная техника']"
NeedForOurProductsTypeOfNeedsBtn = "xpath=//li[@data-item-marker='Потребность в наших продуктах']"
NeedForOurServicesTypeOfNeedsBtn = "xpath=//li[@data-item-marker='Потребность в наших услугах']"
SoftwareTypeOfNeedsBtn = "xpath=//li[@data-item-marker='Программное обеспечение']"
SelectСounterparty = "xpath=//div[contains(@data-row,'3')]/div/div/div/input"
SelectFirstPartOfNeeds = "xpath=//div[contains(@id,'grid-LeadSectionV2DataGridGrid-wrap')]/div[2]"
#//div[contains(@id,'grid-LeadSectionV2DataGridGrid')]//*[text()='j_Test_New11'][1]
OpenFirstPartOfNeeds = "xpath=//span[contains(@data-item-marker, 'Открыть')]"
SelectHistorySection = "xpath=//*[text()='История']"
OpenFirstPartOfActivityInHistory = "xpath=//div[contains(@id, 'grid-ActivityDetailV2DataGridGrid-wrap')]/div[2]/div/a"




#Visit
CreateVisitFromLeadButton = "xpath=//span[@data-item-marker='McsCreateVisitFromLeadButton']"
#BtnComplete = "xpath=//div[contains(@id,'LeadSectionActionsDashboardDashboardContainerGrid')]"
BtnComplete = "xpath=//span[contains(@data-item-marker,'Execute')]"



#ACTIVITY
ActivityAddRecordBtn = "xpath=//span[@id='ActivitySectionV2SeparateModeAddRecordButtonButton-textEl']"
#VisitInSelectActivity = "xpath=//*[contains(@data-item-marker,'SeparateModeAddRecordButton')]//*[text()='Визит'"
SelectFirstPartOfActivity = "xpath=//div[contains(@id,'grid-ActivitySectionV2DataGridGrid-wrap')]/div[1]"
OpenFirstPartOfVisit = "xpath=//*[contains(@data-item-marker,'Открыть')]"

SelectTabProductOnVisit = "xpath=//*[contains(@id,'ActivityPageV2TabsTabPanel-tabpanel-items')]//*[text()='Продукты']"
AddRecordBtnOnVisit = "xpath=//*[contains(@data-item-marker,'Продукты')]/div/div/span[1]/span"
SelectProductOnWindow = "xpath=//label[contains(@data-item-marker,'Product')]"
SelectProductOnWindow = "xpath=//*[text()='Продукты']"
SelectBtnOnProduct = "xpath=//*[contains(@data-tag,'SelectButton')]"
ClickMcsQuantity = "xpath=//*[contains(@column-name,'McsQuantity')]/span"
SetMcsQuantity = "xpath=//input[@id='McsQuantityFloatEdit-el']"
SaveMcsQuantityBtn = "xpath=//*[@data-item-marker='save']"
SelectMainInformationSectionOnWindow = "xpath=//*[text()='Основная информация']"
LeadNeedOfVisit = "xpath=//*[contains(@data-item-marker,'Lead Потребность')]/div/a"
LeadSalesOfVisit = "xpath=//*[contains(@data-item-marker,'Opportunity Продажа')]/div/a"


#SALES
OpportunutyOfContract = "xpath=//div[@id='OpportunityPageV2GeneralInfoTabGroupContractControlGroup']/div/div/div[2]/div/div[2]/div/input"
ArbitraryCredit = "xpath=//li[contains(@data-item-marker,'Произвольное Кредит (РУБ)')]"
TypicalPrepayment = "xpath=//li[contains(@data-item-marker,'Типовое Предоплата (РУБ)')]"
SayYesBtn = "xpath=//span[contains(@data-item-marker,'Да')]"
SalesPassportSection = "xpath=//*[text()='Паспорт Продажи']"
SelectAddressList = "xpath=//div[@id='AddressContainerContainerList']/div[1]/div/label"
DataOfSalesSection = "xpath=//*[text()='Данные о продаже']"
ShipmentWarehouse = "xpath=//div[contains(@data-item-marker,'Склад отгрузки')]/input"
SelectedShipmentWarehouse = "xpath=//*[@data-item-marker='Ахтубинск Альянс']"





















# Payment Schedule Section
centerPanel = "id:centerPanel"

