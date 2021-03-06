-------------------------------------------------------------------------------
-- CARD DEFINITION: RefPartners
-------------------------------------------------------------------------------

-- Store card definition
EXECUTE [dbo].[dvsys_cardtype_set_info] @CardTypeID='{65FF9382-17DC-4E9F-8E93-84D6D3D8FE8C}', @Alias='RefPartners', @Version=91, @SysVersion=1584, @LibraryID='C257FEAA-7F8C-48BD-AB05-397507F88985', @ControlInfo = 'clsid:{e6c573c2-19ef-4f41-9fc2-8b17e88319dd},license:qmnmvorljnknolnpnm', @Options=16802347, @FetchMode=8, @XMLSchema=N'<?xml version="1.0" encoding="utf-8"?>
<CardDefinition xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" ID="65FF9382-17DC-4E9F-8E93-84D6D3D8FE8C" Alias="RefPartners" Version="91" LibraryID="C257FEAA-7F8C-48BD-AB05-397507F88985" ProgID="clsid:{e6c573c2-19ef-4f41-9fc2-8b17e88319dd},license:qmnmvorljnknolnpnm" Dictionary="true" NonSearchable="true" NonCreatable="true" NonDeletable="true" IconFile="Icons\RefPartners.ico" NoLockOnOpen="true" AlwaysRead="true" ItemsSelectable="true" FetchMode="8" NonArchivable="true">
	<Actions />
	<Modes />
	<Name>
		<LocalizedString Language="en">Partners directory</LocalizedString>
		<LocalizedString Language="uk">Довідник контрагентів</LocalizedString>
		<LocalizedString Language="ru">Справочник контрагентов</LocalizedString>
		<LocalizedString Language="lv">Partneru mape</LocalizedString>
	</Name>
	<Sections>
		<Section Alias="Companies" Type="tree" ID="C78ABDED-DB1C-4217-AE0D-51A400546923" ItemsSelectable="true">
			<Name>
				<LocalizedString Language="en">Departments</LocalizedString>
				<LocalizedString Language="uk">Компанії</LocalizedString>
				<LocalizedString Language="ru">Подразделения</LocalizedString>
				<LocalizedString Language="lv">Organizācijas</LocalizedString>
			</Name>
			<Field Alias="Name" ID="97C4CDFB-EA24-4E3B-9CA7-9FE8CFF4E3B0" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Type" ID="BA82AA3A-519A-4247-BD5A-89957AB7B488" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Department type</LocalizedString>
					<LocalizedString Language="uk">Тип підрозділу</LocalizedString>
					<LocalizedString Language="ru">Тип подразделения</LocalizedString>
					<LocalizedString Language="lv">Tips</LocalizedString>
				</Name>
				<Enum Alias="Organization" Value="0">
					<Name>
						<LocalizedString Language="ru">Организация</LocalizedString>
						<LocalizedString Language="uk">Організація</LocalizedString>
						<LocalizedString Language="en">Organization</LocalizedString>
						<LocalizedString Language="lv">Organizācija</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Department" Value="1">
					<Name>
						<LocalizedString Language="ru">Подразделение</LocalizedString>
						<LocalizedString Language="uk">Підрозділ</LocalizedString>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="Manager" ID="C4AAAED5-700A-4912-82E6-760FCC866375" Type="refid" RefType="65FF9382-17DC-4E9F-8E93-84D6D3D8FE8C" RefSection="1A46BF0F-2D02-4AC9-8866-5ADF245921E8" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Manager</LocalizedString>
					<LocalizedString Language="uk">Керівник</LocalizedString>
					<LocalizedString Language="ru">Руководитель</LocalizedString>
					<LocalizedString Language="lv">Vadītājs</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Pres_FName">FirstName</RefField>
					<RefField Alias="Pres_MName">MiddleName</RefField>
					<RefField Alias="Pres_LName">LastName</RefField>
				</RefFields>
			</Field>
			<Field Alias="ContactPerson" ID="4C6DF902-562F-40D0-8384-E9B74367CB63" Type="refid" RefType="65FF9382-17DC-4E9F-8E93-84D6D3D8FE8C" RefSection="1A46BF0F-2D02-4AC9-8866-5ADF245921E8" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Contact person</LocalizedString>
					<LocalizedString Language="uk">Контактна особа</LocalizedString>
					<LocalizedString Language="ru">Контактное лицо</LocalizedString>
					<LocalizedString Language="lv">Kontakt persona</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Contact_FName">FirstName</RefField>
					<RefField Alias="Contact_MName">MiddleName</RefField>
					<RefField Alias="Contact_LName">LastName</RefField>
				</RefFields>
			</Field>
			<Field Alias="Phone" ID="9F55C443-7BB5-4571-B5FC-3E403201FE4C" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Phone</LocalizedString>
					<LocalizedString Language="uk">Телефон</LocalizedString>
					<LocalizedString Language="ru">Телефон</LocalizedString>
					<LocalizedString Language="lv">Telefons</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Fax" ID="A0A35311-E69F-44A4-B2D8-B3C90BFAA154" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Fax</LocalizedString>
					<LocalizedString Language="uk">Факс</LocalizedString>
					<LocalizedString Language="ru">Факс</LocalizedString>
					<LocalizedString Language="lv">Fakss</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Email" ID="D20BD247-FD0B-4BB4-A9A6-BCAF7964CD35" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">E-mail</LocalizedString>
					<LocalizedString Language="uk">Електронна пошта</LocalizedString>
					<LocalizedString Language="ru">Электронная почта</LocalizedString>
					<LocalizedString Language="lv">E-pasts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Telex" ID="427D042F-3FE0-40B3-9594-B355B8E842FF" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Telex</LocalizedString>
					<LocalizedString Language="uk">Телекс</LocalizedString>
					<LocalizedString Language="ru">Телекс</LocalizedString>
					<LocalizedString Language="lv">Vien. Reg. Nr.:</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Account" ID="7EC3FAC0-CA57-49C4-B279-13B2F737CB22" Type="unistring" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Account</LocalizedString>
					<LocalizedString Language="uk">Розрахунковий рахунок</LocalizedString>
					<LocalizedString Language="ru">Расчетный счет</LocalizedString>
					<LocalizedString Language="lv">Konts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CorrespondentAccount" ID="B66AFCCB-1EFE-4020-9F18-BE1B07F4F5DA" Type="unistring" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Correspondent Account</LocalizedString>
					<LocalizedString Language="uk">Кореспондентський рахунок</LocalizedString>
					<LocalizedString Language="ru">Корреспондентский счет</LocalizedString>
					<LocalizedString Language="lv">Korespondenta konts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="BankName" ID="9DAEB4A4-08A8-48DB-9BFB-E67FA98FC549" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Bank name</LocalizedString>
					<LocalizedString Language="uk">Назва банку</LocalizedString>
					<LocalizedString Language="ru">Название банка</LocalizedString>
					<LocalizedString Language="lv">Bankas nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="BIK" ID="3BC49DFE-7F1A-4F6B-8A58-ECEF51E0F745" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">BIK</LocalizedString>
					<LocalizedString Language="uk">БІК</LocalizedString>
					<LocalizedString Language="ru">БИК</LocalizedString>
					<LocalizedString Language="lv">Konts (EUR)</LocalizedString>
				</Name>
			</Field>
			<Field Alias="INN" ID="3CA0A2C7-8BFC-4C9B-9F76-2482523A0071" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">INN</LocalizedString>
					<LocalizedString Language="uk">ІНН</LocalizedString>
					<LocalizedString Language="ru">ИНН</LocalizedString>
					<LocalizedString Language="lv">INN</LocalizedString>
				</Name>
			</Field>
			<Field Alias="KPP" ID="064FD61D-B3F8-4877-A5C0-3352660F935A" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">KPP</LocalizedString>
					<LocalizedString Language="uk">КПП</LocalizedString>
					<LocalizedString Language="ru">КПП</LocalizedString>
					<LocalizedString Language="lv">KPP</LocalizedString>
				</Name>
			</Field>
			<Field Alias="OKPO" ID="A9CFCA0B-B471-4262-B409-15D310363EAB" Type="unistring" Max="128" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">OKPO</LocalizedString>
					<LocalizedString Language="uk">ЄДРПОУ</LocalizedString>
					<LocalizedString Language="ru">ОКПО</LocalizedString>
					<LocalizedString Language="lv">Konts (USD):</LocalizedString>
				</Name>
			</Field>
			<Field Alias="OKONH" ID="113BA36A-62ED-44FF-8276-73DB0D4B3230" Type="unistring" Max="128" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">OKVED</LocalizedString>
					<LocalizedString Language="uk">ОКВЭД</LocalizedString>
					<LocalizedString Language="ru">ОКВЭД</LocalizedString>
					<LocalizedString Language="lv">OKONH</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comments" ID="B17A2EE1-FD67-4403-88B1-68C7596F5EAB" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Additional information</LocalizedString>
					<LocalizedString Language="uk">Додаткова інформація</LocalizedString>
					<LocalizedString Language="ru">Дополнительная информация</LocalizedString>
					<LocalizedString Language="lv">Papildus informācija</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsVendor" ID="99B145C2-C5E1-4A66-B0D9-3A5B5E65C60E" Type="bool" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Vendor</LocalizedString>
					<LocalizedString Language="uk">Постачальник</LocalizedString>
					<LocalizedString Language="ru">Поставщик</LocalizedString>
					<LocalizedString Language="lv">Piegādātājs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsClient" ID="DA189447-FA15-4F99-A5DD-87F25AB1C861" Type="bool" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Client</LocalizedString>
					<LocalizedString Language="uk">Клієнт</LocalizedString>
					<LocalizedString Language="ru">Клиент</LocalizedString>
					<LocalizedString Language="lv">Klients</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FullName" ID="BDFEADDA-BBE0-4E96-824B-2FFEE26EE018" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Full name</LocalizedString>
					<LocalizedString Language="uk">Повна назва</LocalizedString>
					<LocalizedString Language="ru">Полное название</LocalizedString>
					<LocalizedString Language="lv">Pilns vārds</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SyncTag" ID="255BA019-CEA1-446E-B4DB-C8470858621C" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Synchronization field</LocalizedString>
					<LocalizedString Language="uk">Поле синхронізації</LocalizedString>
					<LocalizedString Language="ru">Поле синхронизации</LocalizedString>
					<LocalizedString Language="lv">Sinhronizācijas tags</LocalizedString>
				</Name>
			</Field>
			<Field Alias="NotAvailable" ID="FA547392-E858-4B7A-B11F-05E83BD7D2CC" Type="bool" DefaultValue="0" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Hide in selection mode</LocalizedString>
					<LocalizedString Language="uk">Не використовується</LocalizedString>
					<LocalizedString Language="ru">Не показывать при выборе</LocalizedString>
					<LocalizedString Language="lv">Nav pieejams </LocalizedString>
				</Name>
			</Field>
			<Field Alias="ChiefAccountant" ID="10D06BE1-DCA7-4C53-9B1F-788020A94218" Type="refid" RefType="65FF9382-17DC-4E9F-8E93-84D6D3D8FE8C" RefSection="1A46BF0F-2D02-4AC9-8866-5ADF245921E8" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Chief accountant</LocalizedString>
					<LocalizedString Language="uk">Головний бухгалтер</LocalizedString>
					<LocalizedString Language="ru">Главный бухгалтер</LocalizedString>
					<LocalizedString Language="lv">Galvenais grāmatvedis</LocalizedString>
				</Name>
			</Field>
			<Field Alias="OrgType" ID="A3954013-D489-44D0-A84A-5795D2811BDF" Type="refid" RefType="65FF9382-17DC-4E9F-8E93-84D6D3D8FE8C" RefSection="4B25DA25-ACE2-4205-BD28-69F80D1CF57F" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Legal entity type</LocalizedString>
					<LocalizedString Language="uk">Тип юридичної особи</LocalizedString>
					<LocalizedString Language="ru">Тип юридического лица</LocalizedString>
					<LocalizedString Language="lv">Juridiskais saimniecības veids</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="OrgTypeName">Name</RefField>
				</RefFields>
			</Field>
			<Field Alias="URL" ID="CAD15A19-0130-4C86-8781-88D385F955FB" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Company web site</LocalizedString>
					<LocalizedString Language="uk">Сайт компанії</LocalizedString>
					<LocalizedString Language="ru">Сайт компании</LocalizedString>
					<LocalizedString Language="lv">Organizācijas mājas lapa</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DuplicateID" ID="1992B2F8-F2C6-4FBF-A4DF-422D06FB83F3" Type="unistring" Max="256" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Duplicate ID</LocalizedString>
					<LocalizedString Language="ru">Идентификатор дубликата</LocalizedString>
				</Name>
			</Field>
			<Section Alias="Employees" Type="coll" ID="1A46BF0F-2D02-4AC9-8866-5ADF245921E8" ItemsSelectable="true">
				<Name>
					<LocalizedString Language="en">Employees</LocalizedString>
					<LocalizedString Language="uk">Співробітники</LocalizedString>
					<LocalizedString Language="ru">Сотрудники</LocalizedString>
					<LocalizedString Language="lv">Darbinieki</LocalizedString>
				</Name>
				<Field Alias="FirstName" ID="45466116-BC86-4795-A169-849D6E5F420C" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">FirstName</LocalizedString>
						<LocalizedString Language="uk">Ім''я</LocalizedString>
						<LocalizedString Language="ru">Имя</LocalizedString>
						<LocalizedString Language="lv">Vārds</LocalizedString>
					</Name>
				</Field>
				<Field Alias="MiddleName" ID="A4205CDF-287A-4834-B077-60248DFDC5F9" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">MiddleName</LocalizedString>
						<LocalizedString Language="uk">По батькові</LocalizedString>
						<LocalizedString Language="ru">Отчество</LocalizedString>
						<LocalizedString Language="lv">Otrs priekšvārds</LocalizedString>
					</Name>
				</Field>
				<Field Alias="LastName" ID="B62D5DB8-7AB1-492E-A761-3BCD2D18652D" Type="unistring" Max="32" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">LastName</LocalizedString>
						<LocalizedString Language="uk">Прізвище</LocalizedString>
						<LocalizedString Language="ru">Фамилия</LocalizedString>
						<LocalizedString Language="lv">Uzvārds</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Position" ID="EDA90677-221F-438C-9E46-C73851B4A2BC" Type="refid" RefType="65FF9382-17DC-4E9F-8E93-84D6D3D8FE8C" RefSection="BDAFE82A-04FA-4391-98B7-5DF6502E03DD" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Position</LocalizedString>
						<LocalizedString Language="uk">Посада</LocalizedString>
						<LocalizedString Language="ru">Должность</LocalizedString>
						<LocalizedString Language="lv">Amats</LocalizedString>
					</Name>
					<RefFields>
						<RefField Alias="PositionName">Name</RefField>
					</RefFields>
				</Field>
				<Field Alias="Phone" ID="FBFE034E-EC91-4497-962F-468F66A7D9A5" Type="string" Max="64" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Work phone</LocalizedString>
						<LocalizedString Language="uk">Телефон</LocalizedString>
						<LocalizedString Language="ru">Рабочий телефон</LocalizedString>
						<LocalizedString Language="lv">Telefons</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Fax" ID="E057E152-212C-4240-B661-D89A9EDB3873" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Fax</LocalizedString>
						<LocalizedString Language="uk">Факс</LocalizedString>
						<LocalizedString Language="ru">Факс</LocalizedString>
						<LocalizedString Language="lv">Fakss</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Email" ID="15D569BA-9495-4655-8706-501985DA5372" Type="string" Max="64" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">E-mail</LocalizedString>
						<LocalizedString Language="uk">Електронна пошта</LocalizedString>
						<LocalizedString Language="ru">Электронная почта</LocalizedString>
						<LocalizedString Language="lv">E-pasts</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Comments" ID="EBE03298-8DBB-47A6-B1C9-5A61D5E0BAE0" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Additional information</LocalizedString>
						<LocalizedString Language="uk">Додаткова інформація</LocalizedString>
						<LocalizedString Language="ru">Дополнительная информация</LocalizedString>
						<LocalizedString Language="lv">Papildus informācija</LocalizedString>
					</Name>
				</Field>
				<Field Alias="SyncTag" ID="90B857AC-AED3-4AED-B120-EDFD376C0F4A" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Synchronization field</LocalizedString>
						<LocalizedString Language="uk">Поле синхронізації</LocalizedString>
						<LocalizedString Language="ru">Поле синхронизации</LocalizedString>
						<LocalizedString Language="lv">Sinhronizācijas tags</LocalizedString>
					</Name>
				</Field>
				<Field Alias="ZipCode" ID="94066991-E82A-4FF1-9DB3-B7698A8FBDFA" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Zip code</LocalizedString>
						<LocalizedString Language="uk">Індекс</LocalizedString>
						<LocalizedString Language="ru">Индекс</LocalizedString>
						<LocalizedString Language="lv">Pasta kods</LocalizedString>
					</Name>
				</Field>
				<Field Alias="City" ID="FE647F30-5DD2-460C-B5C7-F682870A7867" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">City</LocalizedString>
						<LocalizedString Language="uk">Місто&gt;</LocalizedString>
						<LocalizedString Language="ru">Город</LocalizedString>
						<LocalizedString Language="lv">Pilsēta</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Address" ID="69567499-58F8-4D5A-9473-3C6FE8B39992" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Address</LocalizedString>
						<LocalizedString Language="uk">Адреса</LocalizedString>
						<LocalizedString Language="ru">Адрес</LocalizedString>
						<LocalizedString Language="lv">Adrese</LocalizedString>
					</Name>
				</Field>
				<Field Alias="NotAvailable" ID="C718B931-0B78-4E75-B6F3-FA9791DCB83A" Type="bool" DefaultValue="0" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Hide in selection mode</LocalizedString>
						<LocalizedString Language="uk">Не використовується</LocalizedString>
						<LocalizedString Language="ru">Не показывать при выборе</LocalizedString>
						<LocalizedString Language="lv">Nav pieejams </LocalizedString>
					</Name>
				</Field>
				<Field Alias="Title" ID="BABE2E42-18E0-4C31-B8A3-AB12AF76BD07" Type="refid" RefType="65FF9382-17DC-4E9F-8E93-84D6D3D8FE8C" RefSection="2F443CEF-BC72-4853-89E6-34D59A63E49F" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Title</LocalizedString>
						<LocalizedString Language="uk">Звернення</LocalizedString>
						<LocalizedString Language="ru">Обращение</LocalizedString>
						<LocalizedString Language="lv">Nosaukums</LocalizedString>
					</Name>
					<RefFields>
						<RefField Alias="TitleName">Name</RefField>
					</RefFields>
				</Field>
				<Field Alias="Gender" ID="FE1E64CB-6240-45A6-93EA-E1FBA2F21E4A" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="0" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Gender</LocalizedString>
						<LocalizedString Language="uk">Стать</LocalizedString>
						<LocalizedString Language="ru">Пол</LocalizedString>
						<LocalizedString Language="lv">Dzimte</LocalizedString>
					</Name>
					<Enum Alias="None" Value="0">
						<Name>
							<LocalizedString Language="en">None</LocalizedString>
							<LocalizedString Language="uk">Відсутні</LocalizedString>
							<LocalizedString Language="ru">Нет</LocalizedString>
							<LocalizedString Language="lv">Nekas</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Male" Value="1">
						<Name>
							<LocalizedString Language="en">Male</LocalizedString>
							<LocalizedString Language="uk">Чоловіча</LocalizedString>
							<LocalizedString Language="ru">Мужской</LocalizedString>
							<LocalizedString Language="lv">Vīrietis</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Female" Value="2">
						<Name>
							<LocalizedString Language="en">Female</LocalizedString>
							<LocalizedString Language="uk">Жіноча</LocalizedString>
							<LocalizedString Language="ru">Женский</LocalizedString>
							<LocalizedString Language="lv">Sieviete</LocalizedString>
						</Name>
					</Enum>
				</Field>
				<Field Alias="MobilePhone" ID="A9EFEB4D-527F-4D98-B837-C01492799777" Type="string" Max="64" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Mobile phone</LocalizedString>
						<LocalizedString Language="uk">Мобільний телефон</LocalizedString>
						<LocalizedString Language="ru">Мобильный телефон</LocalizedString>
						<LocalizedString Language="lv">Mobilais telefons</LocalizedString>
					</Name>
				</Field>
				<Field Alias="AdditionalPhone" ID="E5DFA966-3A5A-4E20-B95D-456751D30652" Type="string" Max="64" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Additional phone</LocalizedString>
						<LocalizedString Language="uk">Додатковий телефон</LocalizedString>
						<LocalizedString Language="ru">Дополнительный телефон</LocalizedString>
						<LocalizedString Language="lv">Papildus telefons</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Country" ID="3C193492-EB8B-44AA-96A3-B96817DF72DC" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Country</LocalizedString>
						<LocalizedString Language="uk">Країна</LocalizedString>
						<LocalizedString Language="ru">Страна</LocalizedString>
						<LocalizedString Language="lv">Valsts</LocalizedString>
					</Name>
				</Field>
				<Field Alias="BirthDate" ID="BCD3B2A3-48A2-4F31-8B8E-F6CF5C849B9A" Type="datetime" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Birth date</LocalizedString>
						<LocalizedString Language="ru">Дата рождения</LocalizedString>
						<LocalizedString Language="lv">Dzimšanas datums</LocalizedString>
					</Name>
				</Field>
				<Field Alias="DuplicateID" ID="3A575E04-6472-41BB-A1F6-3AF7B9C6C747" Type="unistring" Max="256" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Duplicate ID</LocalizedString>
						<LocalizedString Language="ru">Идентификатор дубликата</LocalizedString>
					</Name>
				</Field>
				<Section Alias="NameCases" Type="coll" ID="E7192F4F-D9C6-46D9-B133-5F02B825CABA" SuppressSearch="true">
					<Name>
						<LocalizedString Language="en">Name cases</LocalizedString>
						<LocalizedString Language="uk">Відмінки імен</LocalizedString>
						<LocalizedString Language="ru">Падежи имени</LocalizedString>
						<LocalizedString Language="lv">Nosaukuma locījumi</LocalizedString>
					</Name>
					<Field Alias="NameCase" ID="CF9BD72E-7BE8-4697-8DBA-D29D0A482783" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Name case</LocalizedString>
							<LocalizedString Language="uk">Відмінок імені</LocalizedString>
							<LocalizedString Language="ru">Падеж имени</LocalizedString>
							<LocalizedString Language="lv">Nosaukuma locījums</LocalizedString>
						</Name>
						<Enum Alias="Nominative" Value="0">
							<Name>
								<LocalizedString Language="en">Nominative</LocalizedString>
								<LocalizedString Language="uk">Називний</LocalizedString>
								<LocalizedString Language="ru">Именительный</LocalizedString>
								<LocalizedString Language="lv">Nominatīvs</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Genitive" Value="1">
							<Name>
								<LocalizedString Language="en">Genitive</LocalizedString>
								<LocalizedString Language="uk">Родовий</LocalizedString>
								<LocalizedString Language="ru">Родительный</LocalizedString>
								<LocalizedString Language="lv">Ģenitīvs</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Dative" Value="2">
							<Name>
								<LocalizedString Language="en">Dative</LocalizedString>
								<LocalizedString Language="uk">Давальний</LocalizedString>
								<LocalizedString Language="ru">Дательный</LocalizedString>
								<LocalizedString Language="lv">Datīvs</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Accusative" Value="3">
							<Name>
								<LocalizedString Language="en">Accusative</LocalizedString>
								<LocalizedString Language="uk">Знахідний</LocalizedString>
								<LocalizedString Language="ru">Винительный</LocalizedString>
								<LocalizedString Language="lv">Akuzatīvs</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Instrumental" Value="4">
							<Name>
								<LocalizedString Language="en">Instrumental</LocalizedString>
								<LocalizedString Language="uk">Орудний</LocalizedString>
								<LocalizedString Language="ru">Творительный</LocalizedString>
								<LocalizedString Language="lv">Instrumentāls</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Prepositional" Value="5">
							<Name>
								<LocalizedString Language="en">Prepositional</LocalizedString>
								<LocalizedString Language="uk">Місцевий</LocalizedString>
								<LocalizedString Language="ru">Предложный</LocalizedString>
								<LocalizedString Language="lv">Prepozicionāls</LocalizedString>
							</Name>
						</Enum>
					</Field>
					<Field Alias="FirstName" ID="4DFCBF49-FF47-402B-BC78-F53E4E74F4CA" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">First Name</LocalizedString>
							<LocalizedString Language="uk">Ім''я</LocalizedString>
							<LocalizedString Language="ru">Имя</LocalizedString>
							<LocalizedString Language="lv">Vārds</LocalizedString>
						</Name>
					</Field>
					<Field Alias="MiddleName" ID="D8618E8F-CA13-4578-BB2E-D81EF21DAA0C" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Middle Name</LocalizedString>
							<LocalizedString Language="uk">По батькові</LocalizedString>
							<LocalizedString Language="ru">Отчество</LocalizedString>
							<LocalizedString Language="lv">Otrs priekšvārds</LocalizedString>
						</Name>
					</Field>
					<Field Alias="LastName" ID="C8D3CEA0-47BB-4791-86B0-9464F02A7B9E" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">LastName</LocalizedString>
							<LocalizedString Language="uk">Прізвище</LocalizedString>
							<LocalizedString Language="ru">Фамилия</LocalizedString>
							<LocalizedString Language="lv">Uzvārds</LocalizedString>
						</Name>
					</Field>
					<DisplayFields />
				</Section>
				<SortBy>
					<Field>LastName</Field>
					<Field>FirstName</Field>
					<Field>MiddleName</Field>
				</SortBy>
				<DisplayFields FormatString="">
					<DisplayField>LastName</DisplayField>
					<DisplayField>FirstName</DisplayField>
					<DisplayField>MiddleName</DisplayField>
				</DisplayFields>
			</Section>
			<Section Alias="Addresses" Type="coll" ID="1DE3032F-1956-4C37-AE14-A29F8B47E0AC">
				<Name>
					<LocalizedString Language="en">Addresses</LocalizedString>
					<LocalizedString Language="uk">Адреса</LocalizedString>
					<LocalizedString Language="ru">Адреса</LocalizedString>
					<LocalizedString Language="lv">Adreses</LocalizedString>
				</Name>
				<Field Alias="AddressType" ID="B80E6402-6DA4-4B73-A7A6-618D13CD72BB" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Address type</LocalizedString>
						<LocalizedString Language="uk">Тип адреси</LocalizedString>
						<LocalizedString Language="ru">Тип адреса</LocalizedString>
						<LocalizedString Language="lv">Adreses tips</LocalizedString>
					</Name>
					<Enum Alias="ContactAddress" Value="0">
						<Name>
							<LocalizedString Language="en">Contact address</LocalizedString>
							<LocalizedString Language="uk">Контактна адреса</LocalizedString>
							<LocalizedString Language="ru">Контактный адрес</LocalizedString>
							<LocalizedString Language="lv">Kontakt adrese</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="PostAddress" Value="1">
						<Name>
							<LocalizedString Language="en">Post address</LocalizedString>
							<LocalizedString Language="uk">Поштова адреса</LocalizedString>
							<LocalizedString Language="ru">Почтовый адрес</LocalizedString>
							<LocalizedString Language="lv">Pasta adrese</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="LegalAddress" Value="2">
						<Name>
							<LocalizedString Language="en">Legal address</LocalizedString>
							<LocalizedString Language="uk">Юридична адреса</LocalizedString>
							<LocalizedString Language="ru">Юридический адрес</LocalizedString>
							<LocalizedString Language="lv">Juridiskā adrese</LocalizedString>
						</Name>
					</Enum>
				</Field>
				<Field Alias="ZipCode" ID="96CD59A5-BF5B-45EF-BEAA-29ACC6A9CF26" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Zip code</LocalizedString>
						<LocalizedString Language="uk">Індекс</LocalizedString>
						<LocalizedString Language="ru">Индекс</LocalizedString>
						<LocalizedString Language="lv">Pasta kods</LocalizedString>
					</Name>
				</Field>
				<Field Alias="City" ID="BB8EEB66-F63A-4FA8-820B-19CAE1C35BA5" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">City</LocalizedString>
						<LocalizedString Language="uk">Місто</LocalizedString>
						<LocalizedString Language="ru">Город</LocalizedString>
						<LocalizedString Language="lv">Pilsēta</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Address" ID="60CADF09-19F9-428C-9DD5-2FE1F8ABFDB9" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Address</LocalizedString>
						<LocalizedString Language="uk">Адреса</LocalizedString>
						<LocalizedString Language="ru">Адрес</LocalizedString>
						<LocalizedString Language="lv">Adrese</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Country" ID="6C1580E8-2A9E-4AE5-8765-F31BD5E26618" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Country</LocalizedString>
						<LocalizedString Language="uk">Країна</LocalizedString>
						<LocalizedString Language="ru">Страна</LocalizedString>
						<LocalizedString Language="lv">Valsts</LocalizedString>
					</Name>
				</Field>
				<DisplayFields />
			</Section>
			<Section Alias="Contacts" Type="coll" ID="9FD4934C-2353-4518-8513-A6F8B501973E">
				<Name>
					<LocalizedString Language="en">Contacts</LocalizedString>
					<LocalizedString Language="uk">Контакти</LocalizedString>
					<LocalizedString Language="ru">Контакты</LocalizedString>
					<LocalizedString Language="lv">Kontakti</LocalizedString>
				</Name>
				<Field Alias="Type" ID="C7A634D1-1B3A-4795-B5C9-7E7136F1D139" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Type</LocalizedString>
						<LocalizedString Language="uk">Тип</LocalizedString>
						<LocalizedString Language="ru">Тип</LocalizedString>
						<LocalizedString Language="lv">Tips</LocalizedString>
					</Name>
					<Enum Alias="Phone" Value="0">
						<Name>
							<LocalizedString Language="en">Phone</LocalizedString>
							<LocalizedString Language="uk">Телефон</LocalizedString>
							<LocalizedString Language="ru">Телефон</LocalizedString>
							<LocalizedString Language="lv">Telefons</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Fax" Value="1">
						<Name>
							<LocalizedString Language="en">Fax</LocalizedString>
							<LocalizedString Language="uk">Факс</LocalizedString>
							<LocalizedString Language="ru">Факс</LocalizedString>
							<LocalizedString Language="lv">Fakss</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="E-mail" Value="2">
						<Name>
							<LocalizedString Language="en">E-mail</LocalizedString>
							<LocalizedString Language="uk">E-mail</LocalizedString>
							<LocalizedString Language="ru">E-mail</LocalizedString>
							<LocalizedString Language="lv">E-pasts</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="URL" Value="3">
						<Name>
							<LocalizedString Language="en">URL</LocalizedString>
							<LocalizedString Language="uk">Адреса URL</LocalizedString>
							<LocalizedString Language="ru">Адрес URL</LocalizedString>
							<LocalizedString Language="lv">Saite</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Other" Value="4">
						<Name>
							<LocalizedString Language="en">Other</LocalizedString>
							<LocalizedString Language="uk">Інше</LocalizedString>
							<LocalizedString Language="ru">Прочее</LocalizedString>
							<LocalizedString Language="lv">Cits</LocalizedString>
						</Name>
					</Enum>
				</Field>
				<Field Alias="Name" ID="A735F5C5-E299-4030-84E8-4FE15D935764" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Name</LocalizedString>
						<LocalizedString Language="uk">Назва</LocalizedString>
						<LocalizedString Language="ru">Название</LocalizedString>
						<LocalizedString Language="lv">Nosaukums</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Comments" ID="345F3F64-623D-4643-9035-0ADB2725054B" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Comment</LocalizedString>
						<LocalizedString Language="uk">Коментар</LocalizedString>
						<LocalizedString Language="ru">Комментарий</LocalizedString>
						<LocalizedString Language="lv">Komentāri</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>Name</Field>
				</SortBy>
				<DisplayFields>
					<DisplayField>Name</DisplayField>
				</DisplayFields>
			</Section>
			<Section Alias="Codes" Type="coll" ID="156CE04E-A0A0-4003-B068-709992035FA7">
				<Name>
					<LocalizedString Language="en">Codes</LocalizedString>
					<LocalizedString Language="uk">Коди</LocalizedString>
					<LocalizedString Language="ru">Коды</LocalizedString>
					<LocalizedString Language="lv">Kodi</LocalizedString>
				</Name>
				<Field Alias="Name" ID="46B50773-791D-47B2-AC68-68D2EF3499F4" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Name</LocalizedString>
						<LocalizedString Language="uk">Назва</LocalizedString>
						<LocalizedString Language="ru">Название</LocalizedString>
						<LocalizedString Language="lv">Nosaukums</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Value" ID="56378AD2-FE01-4DD2-9B91-32A1CFF453B5" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Value</LocalizedString>
						<LocalizedString Language="uk">Значення</LocalizedString>
						<LocalizedString Language="ru">Значение</LocalizedString>
						<LocalizedString Language="lv">Vērtība</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>Name</Field>
				</SortBy>
				<DisplayFields>
					<DisplayField>Name</DisplayField>
				</DisplayFields>
			</Section>
			<Section Alias="BankAccounts" Type="coll" ID="2DF0D5D5-9C4A-4C34-AAB9-B3826D4D95DF">
				<Name>
					<LocalizedString Language="en">Bank accounts</LocalizedString>
					<LocalizedString Language="uk">Банківські реквізити</LocalizedString>
					<LocalizedString Language="ru">Банковские реквизиты</LocalizedString>
					<LocalizedString Language="lv">Bankas konti</LocalizedString>
				</Name>
				<Field Alias="BankName" ID="A845DD60-33E5-4004-8899-2CF6EADBE0F7" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Bank name</LocalizedString>
						<LocalizedString Language="uk">Назва банку</LocalizedString>
						<LocalizedString Language="ru">Название банка</LocalizedString>
						<LocalizedString Language="lv">Bankas nosaukums</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Account" ID="E51C5336-0689-4DC5-A97B-684233BE30A0" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Account</LocalizedString>
						<LocalizedString Language="uk">Розрахунковий рахунок</LocalizedString>
						<LocalizedString Language="ru">Расчетный счет</LocalizedString>
						<LocalizedString Language="lv">Konts</LocalizedString>
					</Name>
				</Field>
				<Field Alias="CorrespondentAccount" ID="4C773AA6-44AB-4812-82CE-7853669C2BA6" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Correspondent account</LocalizedString>
						<LocalizedString Language="uk">Кореспондентський рахунок</LocalizedString>
						<LocalizedString Language="ru">Корреспондентский счет</LocalizedString>
						<LocalizedString Language="lv">Korespondenta konts</LocalizedString>
					</Name>
				</Field>
				<Field Alias="BIK" ID="88E1B60D-B2DA-47F2-990B-4C0AD5E30B7A" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">BIK</LocalizedString>
						<LocalizedString Language="uk">БІК</LocalizedString>
						<LocalizedString Language="ru">БИК</LocalizedString>
						<LocalizedString Language="lv">Konts (EUR)</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Comments" ID="EF5B9CBA-88B4-4F23-AA75-2DE934B414E0" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Comment</LocalizedString>
						<LocalizedString Language="uk">Коментар</LocalizedString>
						<LocalizedString Language="ru">Комментарий</LocalizedString>
						<LocalizedString Language="lv">Komentāri</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>BankName</Field>
				</SortBy>
				<DisplayFields>
					<DisplayField>BankName</DisplayField>
				</DisplayFields>
			</Section>
			<Section Alias="EmplViewFields" Type="coll" ID="0C420DE1-36B3-445C-B4F7-9A2A361C5254">
				<Name>
					<LocalizedString Language="en">Displayed fields of department employees</LocalizedString>
					<LocalizedString Language="ru">Отображаемые поля сотрудников подразделения</LocalizedString>
					<LocalizedString Language="lv">Departamenta darbinieku attēlotie lauki</LocalizedString>
				</Name>
				<Field Alias="Order" ID="6F099922-444E-42DF-81AC-568652F5A731" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Order</LocalizedString>
						<LocalizedString Language="ru">Порядок</LocalizedString>
						<LocalizedString Language="lv">Kārtība</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FieldName" ID="507CC0B1-EBCE-4B56-9BFB-0F2122369D29" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Field</LocalizedString>
						<LocalizedString Language="ru">Поле</LocalizedString>
						<LocalizedString Language="lv">Lauks</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FirstLetterOnly" ID="1977C146-F46D-4098-AFC9-099A8FA9575F" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">First symbol only</LocalizedString>
						<LocalizedString Language="ru">Только первый символ</LocalizedString>
						<LocalizedString Language="lv">Tikai pirmo burta</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>Order</Field>
				</SortBy>
				<DisplayFields />
			</Section>
			<Section Alias="DepViewFields" Type="coll" ID="51A72E72-7A3D-4EE9-8955-76A1574F7153">
				<Name>
					<LocalizedString Language="en">Child departments view fields</LocalizedString>
					<LocalizedString Language="ru">Отображаемые поля подчиненных подразделений</LocalizedString>
					<LocalizedString Language="lv">Apakšnodaļu lauku pārskats</LocalizedString>
				</Name>
				<Field Alias="Order" ID="AB43F557-CFEB-432A-B969-C2AF7EDCA08F" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Order</LocalizedString>
						<LocalizedString Language="ru">Порядок</LocalizedString>
						<LocalizedString Language="lv">Kārtība</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FieldName" ID="00F07B9F-B109-4ACB-8DD0-608C925AB525" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Field</LocalizedString>
						<LocalizedString Language="ru">Поле</LocalizedString>
						<LocalizedString Language="lv">Lauks</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FirstLetterOnly" ID="F68A4DA2-3BB7-4A86-A031-9374862D6B9B" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">First symbol only</LocalizedString>
						<LocalizedString Language="ru">Только первый символ</LocalizedString>
						<LocalizedString Language="lv">Tikai pirmo burtu</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>Order</Field>
				</SortBy>
				<DisplayFields />
			</Section>
			<SortBy>
				<Field>Name</Field>
			</SortBy>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueTree">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields FormatString="">
				<DisplayField>Name</DisplayField>
			</DisplayFields>
		</Section>
		<Section Alias="Positions" Type="coll" ID="BDAFE82A-04FA-4391-98B7-5DF6502E03DD">
			<Name>
				<LocalizedString Language="en">Positions</LocalizedString>
				<LocalizedString Language="uk">Посади</LocalizedString>
				<LocalizedString Language="ru">Должности</LocalizedString>
				<LocalizedString Language="lv">Amati</LocalizedString>
			</Name>
			<Field Alias="Name" ID="208A5758-A7E0-4351-90A8-81DB10ACB90D" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comments" ID="2B50B90B-9BE4-4B35-9261-13AAB0AB768C" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comments</LocalizedString>
					<LocalizedString Language="uk">Коментарі</LocalizedString>
					<LocalizedString Language="ru">Комментарии</LocalizedString>
					<LocalizedString Language="lv">Komentāri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Genitive" ID="9FC1E788-C6B3-4985-B9FE-0891706F8F32" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Genitive</LocalizedString>
					<LocalizedString Language="uk">Родовий відмінок</LocalizedString>
					<LocalizedString Language="ru">Родительный падеж</LocalizedString>
					<LocalizedString Language="lv">Ģenitīvs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Dative" ID="13501E7F-6CF9-4D6D-B96A-16A98B603F77" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Dative</LocalizedString>
					<LocalizedString Language="uk">Давальний</LocalizedString>
					<LocalizedString Language="ru">Дательный</LocalizedString>
					<LocalizedString Language="lv">Datīvs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Accusative" ID="DCAF24E3-FEE0-4238-9CC6-A7CC7EFE7AEB" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Accusative</LocalizedString>
					<LocalizedString Language="uk">Знахідний</LocalizedString>
					<LocalizedString Language="ru">Винительный</LocalizedString>
					<LocalizedString Language="lv">Akuzatīvs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Instrumental" ID="33496B72-8AEE-4FB2-88B4-2F75A6FBDD49" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Instrumental</LocalizedString>
					<LocalizedString Language="uk">Орудний</LocalizedString>
					<LocalizedString Language="ru">Творительный</LocalizedString>
					<LocalizedString Language="lv">Instrumentāls</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Prepositional" ID="EFB638E1-55C5-48BE-8688-F9F21B800891" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Prepositional</LocalizedString>
					<LocalizedString Language="uk">Місцевий</LocalizedString>
					<LocalizedString Language="ru">Предложный</LocalizedString>
					<LocalizedString Language="lv">Prepozicionāls</LocalizedString>
				</Name>
			</Field>
			<Field Alias="AlternativeName" ID="E409F29C-E08B-45E3-9737-279DAAA85916" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Alternative name</LocalizedString>
					<LocalizedString Language="uk">Назва на англійській мові</LocalizedString>
					<LocalizedString Language="ru">Название по-английски</LocalizedString>
					<LocalizedString Language="lv">Alternatīva nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SyncTag" ID="7BFE69C3-C4A9-4043-8E36-C4D7A95EA1AD" Type="unistring" Max="256" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Synchronization field</LocalizedString>
					<LocalizedString Language="ru">Поле синхронизации</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DuplicateID" ID="A1ADFD6A-A773-4662-9ECC-F1EAF1367B63" Type="unistring" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Duplicate ID</LocalizedString>
					<LocalizedString Language="ru">ID строки-дубликата</LocalizedString>
				</Name>
			</Field>
			<SortBy>
				<Field>Name</Field>
			</SortBy>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueGlobal">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields FormatString="">
				<DisplayField>Name</DisplayField>
			</DisplayFields>
		</Section>
		<Section Alias="Titles" Type="coll" ID="2F443CEF-BC72-4853-89E6-34D59A63E49F">
			<Name>
				<LocalizedString Language="en">Titles</LocalizedString>
				<LocalizedString Language="uk">Звернення</LocalizedString>
				<LocalizedString Language="ru">Обращения</LocalizedString>
				<LocalizedString Language="lv">Nosaukumi</LocalizedString>
			</Name>
			<Field Alias="Name" ID="7F975816-F7CF-4CA9-B4DB-C903CAFABFEA" Type="unistring" Max="32" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="AlternativeName" ID="375E57FF-A9C8-4325-A28B-61E8DD88B6D5" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Alternative name</LocalizedString>
					<LocalizedString Language="uk">Назва на англійській мові</LocalizedString>
					<LocalizedString Language="ru">Название по-английски</LocalizedString>
					<LocalizedString Language="lv">Alternatīva nosaukums</LocalizedString>
				</Name>
			</Field>
			<SortBy>
				<Field>Name</Field>
			</SortBy>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueGlobal">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields>
				<DisplayField>Name</DisplayField>
			</DisplayFields>
		</Section>
		<Section Alias="OrgTypes" Type="coll" ID="4B25DA25-ACE2-4205-BD28-69F80D1CF57F">
			<Name>
				<LocalizedString Language="en">Legal entity types</LocalizedString>
				<LocalizedString Language="uk">Типи юридичних осіб</LocalizedString>
				<LocalizedString Language="ru">Типы юридических лиц</LocalizedString>
				<LocalizedString Language="lv">Juridiskie saimniecības veidi</LocalizedString>
			</Name>
			<Field Alias="Name" ID="6268AAE3-3876-4F7F-B555-7B3F9E78670D" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<SortBy>
				<Field>Name</Field>
			</SortBy>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueGlobal">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields>
				<DisplayField>Name</DisplayField>
			</DisplayFields>
		</Section>
		<Section Alias="Groups" Type="tree" ID="78875629-78D3-4CCC-90D9-127B438C5522">
			<Name>
				<LocalizedString Language="en">Groups</LocalizedString>
				<LocalizedString Language="uk">Групи</LocalizedString>
				<LocalizedString Language="ru">Группы</LocalizedString>
				<LocalizedString Language="lv">Grupas</LocalizedString>
			</Name>
			<Field Alias="Name" ID="FCB777AA-05C9-42BF-B5B2-C7939C8C6C96" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comments" ID="9EEEE140-021F-4AF4-B8A4-FB64B9E1D29C" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comment</LocalizedString>
					<LocalizedString Language="uk">Коментар</LocalizedString>
					<LocalizedString Language="ru">Комментарий</LocalizedString>
					<LocalizedString Language="lv">Komentāri</LocalizedString>
				</Name>
			</Field>
			<Section Alias="Group" Type="coll" ID="33B49D2A-5A74-4AC6-B001-B463839B7D5C">
				<Name>
					<LocalizedString Language="en">Group</LocalizedString>
					<LocalizedString Language="uk">Група</LocalizedString>
					<LocalizedString Language="ru">Группа</LocalizedString>
					<LocalizedString Language="lv">Grupa</LocalizedString>
				</Name>
				<Field Alias="DepartmentID" ID="19EE0BEB-041C-4BA3-9B71-620CF2BB48C1" Type="refid" NotNull="true" RefType="65FF9382-17DC-4E9F-8E93-84D6D3D8FE8C" RefSection="C78ABDED-DB1C-4217-AE0D-51A400546923" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="uk">Підрозділ</LocalizedString>
						<LocalizedString Language="ru">Подразделение</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
					<RefFields>
						<RefField Alias="">Name</RefField>
						<RefField Alias="">Phone</RefField>
						<RefField Alias="">Email</RefField>
						<RefField Alias="">Type</RefField>
					</RefFields>
				</Field>
				<Constraints>
					<Constraint AllowNulls="false" Type="UniqueSection">
						<ConstraintField>DepartmentID</ConstraintField>
					</Constraint>
				</Constraints>
				<DisplayFields />
			</Section>
			<SortBy>
				<Field>Name</Field>
			</SortBy>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueTree">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields>
				<DisplayField>Name</DisplayField>
			</DisplayFields>
		</Section>
		<Section Alias="UserSettings" Type="struct" ID="0F6D2670-FEC0-4385-BD7B-5FCCB4A1EBE6" SuppressSearch="true">
			<Name>
				<LocalizedString Language="en">User settings</LocalizedString>
				<LocalizedString Language="uk">Налаштування користувача</LocalizedString>
				<LocalizedString Language="ru">Пользовательские настройки</LocalizedString>
				<LocalizedString Language="lv">Lietotāja uzstādījumi</LocalizedString>
			</Name>
			<Field Alias="Reserved" ID="DF456E61-E825-47B2-9959-BE2CB7B67E2E" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reserved</LocalizedString>
					<LocalizedString Language="uk">Зарезервовано</LocalizedString>
					<LocalizedString Language="ru">Зарезервировано</LocalizedString>
					<LocalizedString Language="lv">Rezervēts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsSearchMode" ID="082E3BA9-81BD-47D1-B4DF-D30E97B3A645" Type="bool" UserDependent="true" DeleteLinkedOnValueChange="false" DefaultValue="0" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Search mode</LocalizedString>
					<LocalizedString Language="uk">Режим пошуку</LocalizedString>
					<LocalizedString Language="ru">Режим поиска</LocalizedString>
					<LocalizedString Language="lv">Meklēšanas režīms</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SearchFor" ID="0FD715FE-A636-4820-A662-1B57479B5EDC" Type="enum" UserDependent="true" DeleteLinkedOnValueChange="false" DefaultValue="0" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Search for</LocalizedString>
					<LocalizedString Language="uk">Шукати</LocalizedString>
					<LocalizedString Language="ru">Искать</LocalizedString>
					<LocalizedString Language="lv">Meklēt</LocalizedString>
				</Name>
				<Enum Alias="Employee" Value="0">
					<Name>
						<LocalizedString Language="en">Employee</LocalizedString>
						<LocalizedString Language="uk">Співробітник</LocalizedString>
						<LocalizedString Language="ru">Сотрудник</LocalizedString>
						<LocalizedString Language="lv">Darbinieks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Department" Value="1">
					<Name>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="uk">Підрозділ</LocalizedString>
						<LocalizedString Language="ru">Подразделение</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="OpenMode" ID="795CD1C7-E636-43C3-A304-92575A521D6D" Type="enum" UserDependent="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Opening mode</LocalizedString>
					<LocalizedString Language="uk">Режим відкриття</LocalizedString>
					<LocalizedString Language="ru">Режим открытия</LocalizedString>
					<LocalizedString Language="lv">Atvēršanas režīms</LocalizedString>
				</Name>
				<Enum Alias="Departments" Value="0">
					<Name>
						<LocalizedString Language="en">Departments</LocalizedString>
						<LocalizedString Language="uk">Підрозділи</LocalizedString>
						<LocalizedString Language="ru">Подразделения</LocalizedString>
						<LocalizedString Language="lv">Departamenti</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Employees" Value="1">
					<Name>
						<LocalizedString Language="en">Employees</LocalizedString>
						<LocalizedString Language="uk">Співробітники</LocalizedString>
						<LocalizedString Language="ru">Сотрудники</LocalizedString>
						<LocalizedString Language="lv">Darbinieki</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<DisplayFields />
		</Section>
		<Section Alias="AllEmplViewFields" Type="coll" ID="3228AA12-A828-473A-A093-265711BB1D3F">
			<Name>
				<LocalizedString Language="en">Displayed employee fields</LocalizedString>
				<LocalizedString Language="ru">Отображаемые поля сотрудников</LocalizedString>
				<LocalizedString Language="lv">Attēlojamie darbinieku lauki</LocalizedString>
			</Name>
			<Field Alias="Order" ID="9CAF9EB8-C60F-4B29-A565-B4AFAC534611" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Order</LocalizedString>
					<LocalizedString Language="ru">Порядок</LocalizedString>
					<LocalizedString Language="lv">Kārtība</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FieldName" ID="717F6E4F-35B5-4E63-9BF4-2449239E5148" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Field</LocalizedString>
					<LocalizedString Language="ru">Поле</LocalizedString>
					<LocalizedString Language="lv">Lauks</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FirstLetterOnly" ID="B34A2909-E9E7-4F26-A23F-0F1A10739296" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">First symbol only</LocalizedString>
					<LocalizedString Language="ru">Только первый символ</LocalizedString>
					<LocalizedString Language="lv">Tikai pirmo burtu</LocalizedString>
				</Name>
			</Field>
			<SortBy>
				<Field>Order</Field>
			</SortBy>
			<DisplayFields />
		</Section>
		<Section Alias="AllDepViewFields" Type="coll" ID="A2E59113-83BD-49C8-B495-05A3D2DF9E42">
			<Name>
				<LocalizedString Language="en">Displayed departments fields</LocalizedString>
				<LocalizedString Language="ru">Отображаемые поля подразделений</LocalizedString>
				<LocalizedString Language="lv">Departamenta attēlotie lauki</LocalizedString>
			</Name>
			<Field Alias="Order" ID="AA09516D-ADD6-4837-9197-338D1B806E25" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Order</LocalizedString>
					<LocalizedString Language="ru">Порядок</LocalizedString>
					<LocalizedString Language="lv">Kārtība</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FieldName" ID="974FC40A-4C67-416A-B86C-7B46D3410631" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Field</LocalizedString>
					<LocalizedString Language="ru">Поле</LocalizedString>
					<LocalizedString Language="lv">Lauks</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FirstLetterOnly" ID="16A8F173-732A-4E27-B05E-12ED1176100E" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">First symbol only</LocalizedString>
					<LocalizedString Language="ru">Только первый символ</LocalizedString>
					<LocalizedString Language="lv">Tikai pirmo burtu</LocalizedString>
				</Name>
			</Field>
			<SortBy>
				<Field>Order</Field>
			</SortBy>
			<DisplayFields />
		</Section>
	</Sections>
	<Transformations />
	<ViewElements />
	<VirtualFields>
		<VirtualField Alias="PartnerName" ID="CB0BD34F-E700-474E-8CDF-56653D6A8F53">
			<Name>
				<LocalizedString Language="en">Partner name</LocalizedString>
				<LocalizedString Language="ru">ФИО контрагента</LocalizedString>
				<LocalizedString Language="lv">Klienta uzvārds, vārds</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="1A46BF0F-2D02-4AC9-8866-5ADF245921E8" Version="4000" Type="unistring"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="unistring"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="LastName" SectionAlias="Main" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value=" " Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="FirstName" SectionAlias="Main" Function="Left" ProtectNull="true" Default="" Type="unistring"&gt;&lt;Parameters&gt;&lt;Parameter Value="1" /&gt;&lt;/Parameters&gt;&lt;/DataItem&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="ConditionList"&gt;&lt;CaseItems&gt;&lt;CaseItem&gt;&lt;DataItem Value="." Type="unistring" /&gt;&lt;ConditionGroup Operation="And"&gt;&lt;Conditions&gt;&lt;Condition Operation="ISNOTNULL"&gt;&lt;ConditionItems&gt;&lt;ConditionItem Value="FirstName" SectionAlias="Main" /&gt;&lt;/ConditionItems&gt;&lt;/Condition&gt;&lt;/Conditions&gt;&lt;ConditionGroups /&gt;&lt;/ConditionGroup&gt;&lt;/CaseItem&gt;&lt;/CaseItems&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="MiddleName" SectionAlias="Main" Function="Left" ProtectNull="true" Default="" Type="unistring"&gt;&lt;Parameters&gt;&lt;Parameter Value="1" /&gt;&lt;/Parameters&gt;&lt;/DataItem&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="ConditionList"&gt;&lt;CaseItems&gt;&lt;CaseItem&gt;&lt;DataItem Value="." Type="unistring" /&gt;&lt;ConditionGroup Operation="And"&gt;&lt;Conditions&gt;&lt;Condition Operation="ISNOTNULL"&gt;&lt;ConditionItems&gt;&lt;ConditionItem Value="MiddleName" SectionAlias="Main" /&gt;&lt;/ConditionItems&gt;&lt;/Condition&gt;&lt;/Conditions&gt;&lt;ConditionGroups /&gt;&lt;/ConditionGroup&gt;&lt;/CaseItem&gt;&lt;/CaseItems&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="None" Type="int" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
	</VirtualFields>
</CardDefinition>', @XSDSchema='<?xml version="1.0" encoding="utf-8"?>
<xs:schema elementFormDefault="qualified" attributeFormDefault="unqualified" targetNamespace="http://www.docsvision.com/schemas/RefPartners" xmlns:my="http://www.docsvision.com/schemas/RefPartners" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xs:element name="RefPartners">
		<xs:complexType>
			<xs:sequence>
				<xs:element name="Companies" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:CompaniesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Positions" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:PositionsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Titles" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:TitlesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="OrgTypes" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:OrgTypesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Groups" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:GroupsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element ref="my:UserSettings" minOccurs="0" />
				<xs:element name="AllEmplViewFields" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:AllEmplViewFieldsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="AllDepViewFields" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:AllDepViewFieldsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="CardID" type="xs:string" />
			<xs:attribute name="CardTypeID" type="xs:string" />
			<xs:attribute name="Description" type="xs:string" />
			<xs:attribute name="CreationDateTime" type="xs:dateTime" />
			<xs:attribute name="ChangeDateTime" type="xs:dateTime" />
			<xs:attribute name="Template" type="xs:boolean" />
			<xs:attribute name="Topic" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="CompaniesRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element ref="my:CompaniesRow" minOccurs="0" maxOccurs="unbounded" />
				<xs:element name="Employees" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:EmployeesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Addresses" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:AddressesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Contacts" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:ContactsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Codes" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:CodesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="BankAccounts" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:BankAccountsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="EmplViewFields" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:EmplViewFieldsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="DepViewFields" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:DepViewFieldsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Type">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="Manager" type="xs:string" />
			<xs:attribute name="Pres_FName" type="xs:string" />
			<xs:attribute name="Pres_MName" type="xs:string" />
			<xs:attribute name="Pres_LName" type="xs:string" />
			<xs:attribute name="ContactPerson" type="xs:string" />
			<xs:attribute name="Contact_FName" type="xs:string" />
			<xs:attribute name="Contact_MName" type="xs:string" />
			<xs:attribute name="Contact_LName" type="xs:string" />
			<xs:attribute name="Phone" type="xs:string" />
			<xs:attribute name="Fax" type="xs:string" />
			<xs:attribute name="Email" type="xs:string" />
			<xs:attribute name="Telex" type="xs:string" />
			<xs:attribute name="Account" type="xs:string" />
			<xs:attribute name="CorrespondentAccount" type="xs:string" />
			<xs:attribute name="BankName" type="xs:string" />
			<xs:attribute name="BIK" type="xs:string" />
			<xs:attribute name="INN" type="xs:string" />
			<xs:attribute name="KPP" type="xs:string" />
			<xs:attribute name="OKPO" type="xs:string" />
			<xs:attribute name="OKONH" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
			<xs:attribute name="IsVendor" type="xs:boolean" />
			<xs:attribute name="IsClient" type="xs:boolean" />
			<xs:attribute name="FullName" type="xs:string" />
			<xs:attribute name="SyncTag" type="xs:string" />
			<xs:attribute name="NotAvailable" type="xs:boolean" />
			<xs:attribute name="ChiefAccountant" type="xs:string" />
			<xs:attribute name="OrgType" type="xs:string" />
			<xs:attribute name="OrgTypeName" type="xs:string" />
			<xs:attribute name="URL" type="xs:string" />
			<xs:attribute name="DuplicateID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="EmployeesRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element name="NameCases" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:NameCasesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
			<xs:attribute name="Position" type="xs:string" />
			<xs:attribute name="PositionName" type="xs:string" />
			<xs:attribute name="Phone" type="xs:string" />
			<xs:attribute name="Fax" type="xs:string" />
			<xs:attribute name="Email" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
			<xs:attribute name="SyncTag" type="xs:string" />
			<xs:attribute name="ZipCode" type="xs:string" />
			<xs:attribute name="City" type="xs:string" />
			<xs:attribute name="Address" type="xs:string" />
			<xs:attribute name="NotAvailable" type="xs:boolean" />
			<xs:attribute name="Title" type="xs:string" />
			<xs:attribute name="TitleName" type="xs:string" />
			<xs:attribute name="Gender">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="MobilePhone" type="xs:string" />
			<xs:attribute name="AdditionalPhone" type="xs:string" />
			<xs:attribute name="Country" type="xs:string" />
			<xs:attribute name="BirthDate" type="xs:dateTime" />
			<xs:attribute name="DuplicateID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="NameCasesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="NameCase">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="AddressesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="AddressType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ZipCode" type="xs:string" />
			<xs:attribute name="City" type="xs:string" />
			<xs:attribute name="Address" type="xs:string" />
			<xs:attribute name="Country" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="ContactsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Type">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="CodesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Value" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="BankAccountsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="BankName" type="xs:string" />
			<xs:attribute name="Account" type="xs:string" />
			<xs:attribute name="CorrespondentAccount" type="xs:string" />
			<xs:attribute name="BIK" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="EmplViewFieldsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="FirstLetterOnly" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="DepViewFieldsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="FirstLetterOnly" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="PositionsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
			<xs:attribute name="Genitive" type="xs:string" />
			<xs:attribute name="Dative" type="xs:string" />
			<xs:attribute name="Accusative" type="xs:string" />
			<xs:attribute name="Instrumental" type="xs:string" />
			<xs:attribute name="Prepositional" type="xs:string" />
			<xs:attribute name="AlternativeName" type="xs:string" />
			<xs:attribute name="SyncTag" type="xs:string" />
			<xs:attribute name="DuplicateID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="TitlesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="AlternativeName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="OrgTypesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="GroupsRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element ref="my:GroupsRow" minOccurs="0" maxOccurs="unbounded" />
				<xs:element name="Group" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:GroupRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="GroupRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="DepartmentID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Phone" type="xs:string" />
			<xs:attribute name="Email" type="xs:string" />
			<xs:attribute name="Type">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
		</xs:complexType>
	</xs:element>
	<xs:element name="UserSettings">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Reserved" type="xs:boolean" />
			<xs:attribute name="IsSearchMode" type="xs:boolean" />
			<xs:attribute name="SearchFor">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="OpenMode">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
		</xs:complexType>
	</xs:element>
	<xs:element name="AllEmplViewFieldsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="FirstLetterOnly" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="AllDepViewFieldsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="FirstLetterOnly" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
</xs:schema>', @Icon = 'AAABAAIAEBAAAAEACABoBQAAJgAAACAgAAABAAgAqAgAAI4FAAAoAAAAEAAAACAAAAABAAgAAAAAAEABAAAAAAAAAAAAAAABAAAAAAAAAAAAAP///wCwmIoAr5B+ALKSfwC0mosAwaKOAL+agwC/mYIAuZaBALSaigCrlYgApYJsAP/z5AD/69cA/+TKAP/cvQC0loUAx6KKAP7auwD94cYA/ebRAP3u3gCxh24ArpaIAJyFeACfemUA/9ayAK6IcwD+1LAA/di4APvcwQD64csA+ejXAK+AZgCoinkAl4J2AJ56ZACpfmYA/dKuAPrUtAD31boAvK6fAG+VnABOcHcAZm1rAP/bvAD+1bEAqHxkAPvPqgD4z68A4L6kAC2EnwAAndIAALn2AAC18ACMmp4Af2ljAP7jyQD+2boApnpiAPjKpQD0yKgA3LidACGDowAAnNAAALj1AACz7wCJl5sA/+rWAP7hxwD817cA+s2pAKR2XgD0w54A8MGgANmylgAhgqEAAJvPAAC28wAAsu0AiJaaAP7q1QD938UA+tOzAPXFoQBtWjQAgIUxAJOrLACSpjMAZrpCABupqwAAtfEAALHrAIaVmQCceGMA/unVAPzewwD40LAA67qXAFpoEwBrngAAnOYAAJniAAArsJYAALPuAACv6QB+aWMAkXNhAJ15YwCbdmAAnXRcAOm3lABYZxIAap0AAJrjAACY3wAAK66UAACt5gCFlJkAg3JtAJWCdgCWgHQAkXhrAIlrWgCDYE4AU2UQAGqbAACY4AAAltwAACqrkQAArugAAKvjAJaDeACGb2EAU2gTAGmbAACW3QAAlNkAACmpkAAArOUAAKnhAIOUmQBrd0IAaJkAAJTaAACOzgYALqGJAAqi1QAelb0Aj5qdAIWRlABrd3oAAACAAACAAAAAgIAAgAAAAIAAgACAgAAAwMDAAICAgAAAAP8AAP8AAAD//wD/AAAA/wD/AP//AAAJCQkAEhISAB8fHwAsLCwAOTk5AEVFRQBSUlIAX19fAGxsbAB4eHgAhYWFAJKSkgCfn58Aq6urALi4uADFxcUA0tLSAN7e3gDr6+sA+Pj4APD7/wCkoKAAwNzAAPDKpgAAAD4AAABdAAAAfAAAAJsAAAC6AAAA2QAAAPAAJCT/AEhI/wBsbP8AkJD/ALS0/wAAFD4AAB5dAAAofAAAMpsAADy6AABG2QAAVfAAJG3/AEiF/wBsnf8AkLX/ALTN/wAAKj4AAD9dAABUfAAAaZsAAH66AACT2QAAqvAAJLb/AEjC/wBszv8AkNr/ALTm/wAAPj4AAF1dAAB8fAAAm5sAALq6AADZ2QAA8PAAJP//AEj//wBs//8AkP//ALT//wAAPioAAF0/AAB8VAAAm2kAALp+AADZkwAA8KoAJP+2AEj/wgBs/84AkP/aALT/5gAAPhQAAF0eAAB8KAAAmzIAALo8AAAAAAAAAACXmJiYmJiYmJcAAAAAAAAAj5CRkZKTlJWWAAAAAACFhoeIiYmKi4yNjnh5JHp7fH1+f4CAgYKDhHdrbF9tbm9wcXJzc3R1XXZ3OV8NYGFiY2RlZmZnaGlqXjklDVJTVFVWV1hZWltcXV45JQ1FRkdISUpLTE1OT1BROSUNDjo7Jzw9Pj9AQUJDRCQlDQ4PLi8wMTIzNDU2NzgkJQ0ODxAbJicoKSorLC0AGRoNDg8QGxwdHh8gISIjAAsMDQ4PEBEAEhMUFRYXGAAAAgMEAwUAAAAGBwgJCgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD+AAAA/gAAAPgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAABAAABAQAAg4MAAP//AAD//wAAKAAAACAAAABAAAAAAQAIAAAAAACABAAAAAAAAAAAAAAAAQAAAAAAAAAAAAD///8AxramAMm8rgDKvrAAy7+xANDDtQDHuakA9OrhAPfv6AD37eYA9uzlAPPo3wDy5tsA8eXaAO7h1ADq2s0A3tbLAOrczgDu4NIA8OTYAPHm2gDy590A9evjAPbt5gD06eAAxLKfALikjgCQiXYAxLKgALyrlwDY0skA0sS1APfu5wD58uwA+PDpAPXr4gDs3tAArpuHAObVxgDw5NkAuqeRAIF1ZgCKhnYAv62aALmljwDEs6EA39bLAJiMcgDv49YAu6iTAH5wYACEdmcAe3FmAL2smQDn18kA7N3QAHxtXADk1MMA1si7AJ2glgA7jJwAV6/BAHGpsQCUoZwAvKqWAHtsWwDRw7UA4tLBAEWBigAVo7IABbDUAAHD9QAAvvEAALztADmOoACVi3QAtqKLAHprWgB+cWEAzcCyANfHuADJva8AP4aRAAitzAAvlKcAjYh3ALSfiADt39EAyLqsANXFtQDXxrYAxLSjAAyrxQA2j6MAspyGAHlpWgD47+kA6NnLAIZ8bQDEsp4AAsP0AJaPbgB9b14AqZyKALKdhwBKe4AAAMH0AIiBcgCxnIUAkZRlAGF0HAB4oQYAmM8DAJjYEQCS0RgAjcscAImpRAAQqbsAAL/yAOvczwBrjAsAiLgEAKvrAAAUpbQAAL3wAHhpWgBkggwAga8FAKnpAACo5gAApuMAAH5vXwAAwvUAt6SNAGN/DgCl4QAAALrrAId+cAB9bl0AYHEeAKTgAAABuecAotwBAAK34wB6pQYAGKOwACmYqQBwZ1sAqeoBAIvDIwA9iZcA+fHrAMGvnACKvCkAibE4AI6aWwCFpaUAuqaQAMOxnQDUxLUAhXlqAHlqWQB/c2YAe2xaAG5mWgBrZlsAfXJmAHVqXgB0al4Ae3FkAHFoXAByaF0AdGleAAAAgAAAgAAAAICAAIAAAACAAIAAgIAAAMDAwACAgIAAAAD/AAD/AAAA//8A/wAAAP8A/wD//wAACQkJABISEgAfHx8ALCwsADk5OQBFRUUAUlJSAF9fXwBsbGwAeHh4AIWFhQCSkpIAn5+fAKurqwC4uLgAxcXFANLS0gDe3t4A6+vrAPj4+ADw+/8ApKCgAMDcwADwyqYAAAA+AAAAXQAAAHwAAACbAAAAugAAANkAAADwACQk/wBISP8AbGz/AJCQ/wC0tP8AABQ+AAAeXQAAKHwAADKbAAA8ugAARtkAAFXwACRt/wBIhf8AbJ3/AJC1/wC0zf8AACo+AAA/XQAAVHwAAGmbAAB+ugAAk9kAAKrwACS2/wBIwv8AbM7/AJDa/wC05v8AAD4+AABdXQAAfHwAAJubAAC6ugAA2dkAAPDwACT//wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAiqmtqWMAAAAAAAAAAAAAAAAAAACnqKioqKipqampqaqEM4szOairrKyslKWlpaWlqwAATTCKYzQ0NDQ0NDRPMzROpmBPQkJCOTlOTk5CQjmLNQAeJmxMNCoqo6NPT0+hJiaiJiY0TqKiTk6kOTlPpWc1AB5NQVGfUKCgQ1BSBy4sMKEyHikyQUEsnxoaV2miizUAHk0aLyAYmCMLFlgnmTR5gJqbdZwwVp2dXFKeLU6LNQAeTWQvIAkiIiEWOESUh4B7lXuBgpZ8iVRdl1ZNfos1AB6GZC8gISIiIQ0QO29/kYONj4+NdJKJSkiTbFd+izUAHoZkLyAhIiIhDmJRb4eAgoiNj410RomQSl5sX36LNQA2hmQvICEiIgoON1uMh4CBg4iNjXRGiY5JXoptfos1ADaGGi8gISIiCig3W2+HgHuCg4iDdEZ9iXdeim1+izUANhsuLyAhIiIKDmJRb3+Ae4GCg4J0Rn1KhV5sbX6ENQA2LS4vICEiIiEOEDtvf4B7gYKDgnRGfUpIXmxtfoQ1ADYtLi8gISIiIRZ4RG95ent7e3t7cnx9d0hebG1+MzUANi0uLyAhIiIhDA8nbm9wcXJzc3R1dnd3SF5sbWAzNQA2LS4vICEiImEZFBBELGZnaGkwakZUa2tIXmxtYDM1ADYtLi8gISIiYSQND2JEHWMHUmRTVEdlZUheK19gTzUANi0uLyAhIiIjCwwUWCdZMFpbXFNdR0hISF4rX2BPNQA2LS4vICEiIiMKCA0UEFAwUURSU1RHSEhIVVZXTk81ADYtLi8gISIiIwokDBU4QzBEJztFRkdISUpLTE1OTzUANi0uLyAhIiIjCiQMFSUgMDoQJzs8PT4/QARBG0IqNQA2KS4vICEiIiMKJAwVJSAwJyUSEDcnJxA4OB0yOTQ1ACwtLi8gISIiIwokDBUlIDAnExMPDw8xKBYOAjIzNDUAHR4aHyAhIiIjGCQMFSUgJicTFCgNFiQLIQgHKSocKwAAAAIHAggJCgsMDQ4PEBECBhITFBUWCBcYGRobHAAAAAAAAAACAwQEBAQEBAUGAAAABgUEBAQEBAQDAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//////////////////g//4AAAAMAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABwAAAB/ADgB////////////////8='

DECLARE @ColumnType nvarchar(128)
DECLARE @ColumnSize int
DECLARE @OldAllowsNull bit

-- Update table column [dbo].[dvtable_{C78ABDED-DB1C-4217-AE0D-51A400546923}].[DuplicateID]
SET @ColumnType = NULL
SET @ColumnSize = NULL
  SELECT @OldAllowsNull = ISNULL(COLUMNPROPERTY(OBJECT_ID('[dbo].[dvtable_{C78ABDED-DB1C-4217-AE0D-51A400546923}]'), 'DuplicateID', 'AllowsNull'), 1)
  
  SELECT @ColumnType = DATA_TYPE, @ColumnSize = CHARACTER_MAXIMUM_LENGTH
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_NAME = 'dvtable_{C78ABDED-DB1C-4217-AE0D-51A400546923}' AND COLUMN_NAME = 'DuplicateID'

IF @ColumnType IS NULL
BEGIN
		ALTER TABLE [dbo].[dvtable_{C78ABDED-DB1C-4217-AE0D-51A400546923}] ADD [DuplicateID] nvarchar(256) NULL
  END
ELSE
IF (@ColumnType <> 'nvarchar') OR (@OldAllowsNull <> 1) OR ((@ColumnSize IS NOT NULL) AND (256 <> 0) AND (@ColumnSize <> 256))
BEGIN

	IF (@ColumnType IN ('image', 'money', 'smallmoney', 'timestamp', 'sql_variant', 'text', 'ntext'))
	BEGIN
		ALTER TABLE [dbo].[dvtable_{C78ABDED-DB1C-4217-AE0D-51A400546923}] DROP COLUMN [DuplicateID]
		ALTER TABLE [dbo].[dvtable_{C78ABDED-DB1C-4217-AE0D-51A400546923}] ADD [DuplicateID] nvarchar(256) NULL
	END ELSE
	BEGIN
		ALTER TABLE [dbo].[dvtable_{C78ABDED-DB1C-4217-AE0D-51A400546923}] ALTER COLUMN [DuplicateID] nvarchar(256) NULL			
	END


END

-- Update table column [dbo].[dvtable_{1A46BF0F-2D02-4AC9-8866-5ADF245921E8}].[DuplicateID]
SET @ColumnType = NULL
SET @ColumnSize = NULL
  SELECT @OldAllowsNull = ISNULL(COLUMNPROPERTY(OBJECT_ID('[dbo].[dvtable_{1A46BF0F-2D02-4AC9-8866-5ADF245921E8}]'), 'DuplicateID', 'AllowsNull'), 1)
  
  SELECT @ColumnType = DATA_TYPE, @ColumnSize = CHARACTER_MAXIMUM_LENGTH
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_NAME = 'dvtable_{1A46BF0F-2D02-4AC9-8866-5ADF245921E8}' AND COLUMN_NAME = 'DuplicateID'

IF @ColumnType IS NULL
BEGIN
		ALTER TABLE [dbo].[dvtable_{1A46BF0F-2D02-4AC9-8866-5ADF245921E8}] ADD [DuplicateID] nvarchar(256) NULL
  END
ELSE
IF (@ColumnType <> 'nvarchar') OR (@OldAllowsNull <> 1) OR ((@ColumnSize IS NOT NULL) AND (256 <> 0) AND (@ColumnSize <> 256))
BEGIN

	IF (@ColumnType IN ('image', 'money', 'smallmoney', 'timestamp', 'sql_variant', 'text', 'ntext'))
	BEGIN
		ALTER TABLE [dbo].[dvtable_{1A46BF0F-2D02-4AC9-8866-5ADF245921E8}] DROP COLUMN [DuplicateID]
		ALTER TABLE [dbo].[dvtable_{1A46BF0F-2D02-4AC9-8866-5ADF245921E8}] ADD [DuplicateID] nvarchar(256) NULL
	END ELSE
	BEGIN
		ALTER TABLE [dbo].[dvtable_{1A46BF0F-2D02-4AC9-8866-5ADF245921E8}] ALTER COLUMN [DuplicateID] nvarchar(256) NULL			
	END


END

-- Update table column [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}].[SyncTag]
SET @ColumnType = NULL
SET @ColumnSize = NULL
  SELECT @OldAllowsNull = ISNULL(COLUMNPROPERTY(OBJECT_ID('[dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}]'), 'SyncTag', 'AllowsNull'), 1)
  
  SELECT @ColumnType = DATA_TYPE, @ColumnSize = CHARACTER_MAXIMUM_LENGTH
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_NAME = 'dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}' AND COLUMN_NAME = 'SyncTag'

IF @ColumnType IS NULL
BEGIN
		ALTER TABLE [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}] ADD [SyncTag] nvarchar(256) NULL
  END
ELSE
IF (@ColumnType <> 'nvarchar') OR (@OldAllowsNull <> 1) OR ((@ColumnSize IS NOT NULL) AND (256 <> 0) AND (@ColumnSize <> 256))
BEGIN

	IF (@ColumnType IN ('image', 'money', 'smallmoney', 'timestamp', 'sql_variant', 'text', 'ntext'))
	BEGIN
		ALTER TABLE [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}] DROP COLUMN [SyncTag]
		ALTER TABLE [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}] ADD [SyncTag] nvarchar(256) NULL
	END ELSE
	BEGIN
		ALTER TABLE [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}] ALTER COLUMN [SyncTag] nvarchar(256) NULL			
	END


END


-- Update table column [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}].[DuplicateID]
SET @ColumnType = NULL
SET @ColumnSize = NULL
  SELECT @OldAllowsNull = ISNULL(COLUMNPROPERTY(OBJECT_ID('[dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}]'), 'DuplicateID', 'AllowsNull'), 1)
  
  SELECT @ColumnType = DATA_TYPE, @ColumnSize = CHARACTER_MAXIMUM_LENGTH
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_NAME = 'dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}' AND COLUMN_NAME = 'DuplicateID'

IF @ColumnType IS NULL
BEGIN
		ALTER TABLE [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}] ADD [DuplicateID] nvarchar(256) NULL
  END
ELSE
IF (@ColumnType <> 'nvarchar') OR (@OldAllowsNull <> 1) OR ((@ColumnSize IS NOT NULL) AND (256 <> 0) AND (@ColumnSize <> 256))
BEGIN

	IF (@ColumnType IN ('image', 'money', 'smallmoney', 'timestamp', 'sql_variant', 'text', 'ntext'))
	BEGIN
		ALTER TABLE [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}] DROP COLUMN [DuplicateID]
		ALTER TABLE [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}] ADD [DuplicateID] nvarchar(256) NULL
	END ELSE
	BEGIN
		ALTER TABLE [dbo].[dvtable_{BDAFE82A-04FA-4391-98B7-5DF6502E03DD}] ALTER COLUMN [DuplicateID] nvarchar(256) NULL			
	END


END

GO

-------------------------------------------------------------------------------
-- CARD DEFINITION: WorkflowTask
-------------------------------------------------------------------------------

-- Store card definition
EXECUTE [dbo].[dvsys_cardtype_set_info] @CardTypeID='{F7E2090A-EEC3-4B51-B1BB-567D4A0117D6}', @Alias='WorkflowTask', @Version=448, @SysVersion=1584, @LibraryID='C257FEAA-7F8C-48BD-AB05-397507F88985', @ControlInfo = 'clsid:{0ea5d609-a039-401b-8a72-27824d2f088c}', @Options=3074, @FetchMode=2, @XMLSchema=N'<?xml version="1.0" encoding="utf-8"?>
<CardDefinition xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" ID="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" Alias="WorkflowTask" Version="448" LibraryID="C257FEAA-7F8C-48BD-AB05-397507F88985" ProgID="clsid:{0ea5d609-a039-401b-8a72-27824d2f088c}" NonCreatable="true" IconFile="Icons\WorkflowTask.ico" Copyable="true" FetchMode="2" SimpleSecurity="true" NonArchivable="false">
	<Actions>
		<Action ID="D20B65A9-1404-416B-9A16-D9B4A6055E90" Alias="PerformerMode">
			<Name>
				<LocalizedString Language="en">Performer mode</LocalizedString>
				<LocalizedString Language="ru">Режим исполнителя</LocalizedString>
				<LocalizedString Language="uk">Режим виконавця</LocalizedString>
				<LocalizedString Language="lv">Izpildītāja režīms</LocalizedString>
			</Name>
		</Action>
		<Action ID="BB1EC8FA-F881-4766-8E61-8C2DAF03F34F" Alias="ResponsibleMode">
			<Name>
				<LocalizedString Language="en">Responsible mode</LocalizedString>
				<LocalizedString Language="ru">Режим ответственного исполнителя</LocalizedString>
				<LocalizedString Language="uk">Режим відповідального виконавця</LocalizedString>
				<LocalizedString Language="lv">Atbildīgā režīms</LocalizedString>
			</Name>
		</Action>
	</Actions>
	<Modes>
		<Mode ID="11BDD6F8-67C3-482A-8A99-51756DA18438" Alias="PerformingMode">
			<Name>
				<LocalizedString Language="en">Performing mode</LocalizedString>
				<LocalizedString Language="uk">Режим виконання</LocalizedString>
				<LocalizedString Language="ru">Режим исполнения</LocalizedString>
				<LocalizedString Language="lv">Izpildītāju režīms</LocalizedString>
			</Name>
		</Mode>
		<Mode ID="A3E08EBA-2D93-42C5-A63F-AF7C701C05DB" Alias="ControlMode">
			<Name>
				<LocalizedString Language="en">Control mode</LocalizedString>
				<LocalizedString Language="uk">Режим контролю</LocalizedString>
				<LocalizedString Language="ru">Режим контроля</LocalizedString>
				<LocalizedString Language="lv">Kontroles režīms</LocalizedString>
			</Name>
		</Mode>
	</Modes>
	<Name>
		<LocalizedString Language="en">Business process task</LocalizedString>
		<LocalizedString Language="uk">Завдання бізнес-процесу</LocalizedString>
		<LocalizedString Language="ru">Задание бизнес-процесса</LocalizedString>
		<LocalizedString Language="lv">Darba plūsmas uzdevums</LocalizedString>
	</Name>
	<Sections>
		<Section Alias="MainInfo" Type="struct" ID="7213A125-2CA4-40EE-A671-B52850F45E7D">
			<Name>
				<LocalizedString Language="en">Main info</LocalizedString>
				<LocalizedString Language="uk">Основна інформація</LocalizedString>
				<LocalizedString Language="ru">Основная информация</LocalizedString>
				<LocalizedString Language="lv">Galvenā informācija</LocalizedString>
			</Name>
			<Field Alias="Name" ID="71BECC31-F8C7-4DFB-B2C8-EC30E33BB473" Type="unistring" Max="544" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="NamePID" ID="53EFA0E0-1B91-41FA-A56B-A393656ACEA2" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр імені</LocalizedString>
					<LocalizedString Language="ru">Параметр имени</LocalizedString>
					<LocalizedString Language="lv">Nosaukuma parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comments" ID="1003097B-0B6E-47CA-A6F9-83F91EFEF0F5" Type="unitext" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Content</LocalizedString>
					<LocalizedString Language="uk">Зміст</LocalizedString>
					<LocalizedString Language="ru">Содержание</LocalizedString>
					<LocalizedString Language="lv">Saturs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CommentsPID" ID="8D46DB88-7E63-4C7E-896B-1BB9210D869C" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Description parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр опису</LocalizedString>
					<LocalizedString Language="ru">Параметр описания</LocalizedString>
					<LocalizedString Language="lv">Komentāru parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CreatedBy" ID="D89B5EAA-4143-4869-A414-7AB4CEF361B8" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Author</LocalizedString>
					<LocalizedString Language="uk">Автор</LocalizedString>
					<LocalizedString Language="ru">Автор</LocalizedString>
					<LocalizedString Language="lv">Izveidojis</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Cre_LastName">LastName</RefField>
					<RefField Alias="Cre_FirstName">FirstName</RefField>
					<RefField Alias="Cre_MiddleName">MiddleName</RefField>
					<RefField Alias="Cre_DisplayString">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="CreatedByPID" ID="F177CEBC-F835-4CFE-9D41-771C3FDFD475" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Author parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр автора</LocalizedString>
					<LocalizedString Language="ru">Параметр автора</LocalizedString>
					<LocalizedString Language="lv">Izveidotāja parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RegisteredBy" ID="AEF5DE8D-33F3-46E6-AF93-5743B91B7F2C" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Clerk</LocalizedString>
					<LocalizedString Language="uk">Реєстратор</LocalizedString>
					<LocalizedString Language="ru">Регистратор</LocalizedString>
					<LocalizedString Language="lv">Reģistrējis: </LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Reg_LastName">LastName</RefField>
					<RefField Alias="Reg_FirstName">FirstName</RefField>
					<RefField Alias="Reg_MiddleName">MiddleName</RefField>
					<RefField Alias="Reg_DisplayString">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="RegisteredByPID" ID="CB0178D1-D2D8-4905-9381-9B71B48DD2F5" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Clerk parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр реєстратора</LocalizedString>
					<LocalizedString Language="ru">Параметр регистратора</LocalizedString>
					<LocalizedString Language="lv">Reģistratora parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ControlledBy" ID="5553F616-EED2-481D-B38E-3C4806B126D6" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Responsible performer</LocalizedString>
					<LocalizedString Language="uk">Відповідальний виконавець</LocalizedString>
					<LocalizedString Language="ru">Ответственный исполнитель</LocalizedString>
					<LocalizedString Language="lv">Kontrolē</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Con_LastName">LastName</RefField>
					<RefField Alias="Con_FirstName">FirstName</RefField>
					<RefField Alias="Con_MiddleName">MiddleName</RefField>
					<RefField Alias="Con_DisplayString">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="ControlledByPID" ID="8BF7E60C-C768-46E8-B616-3310299C5240" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Responsible performer parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр відповідального виконавця</LocalizedString>
					<LocalizedString Language="ru">Параметр ответственного исполнителя</LocalizedString>
					<LocalizedString Language="lv">Kontroles parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="StartASAP" ID="30FB5500-B3A9-4DE4-B129-63BB8AEB5777" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Start ASAP</LocalizedString>
					<LocalizedString Language="uk">Посинати якомога раніше</LocalizedString>
					<LocalizedString Language="ru">Начинать как можно раньше</LocalizedString>
					<LocalizedString Language="lv">Sākt ASAP</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ExpectedDuration" ID="63F5F129-CDE3-4963-8610-E9D48CDE2C46" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Expected duration</LocalizedString>
					<LocalizedString Language="uk">Очікувана тривалість</LocalizedString>
					<LocalizedString Language="ru">Ожидаемая длительность</LocalizedString>
					<LocalizedString Language="lv">Gaidāmais ilgums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ExpectedDurationPID" ID="4F8B4C11-ECE5-457C-A6F0-004AB82B14F3" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Expected duration parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр очікуваної тривалості</LocalizedString>
					<LocalizedString Language="ru">Параметр ожидаемой длительности</LocalizedString>
					<LocalizedString Language="lv">Gaidāmā ilguma parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ExpectedStartDate" ID="E3E2ACCB-4725-479F-B12C-9D21D6189B84" Type="datetime" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Expected start date</LocalizedString>
					<LocalizedString Language="uk">Очікувана дата початку</LocalizedString>
					<LocalizedString Language="ru">Ожидаемая дата начала</LocalizedString>
					<LocalizedString Language="lv">Gadāmais sākuma datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ExpectedStartDatePID" ID="064AC0D3-F800-4249-992F-F35D01D5C742" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Expected start date parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр очікуваної дати початку</LocalizedString>
					<LocalizedString Language="ru">Параметр ожидаемой даты начала</LocalizedString>
					<LocalizedString Language="lv">Gaidāma sākuma datuma parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ExpectedEndDate" ID="A269D787-3FBF-453C-9BD8-B297B00A06CE" Type="datetime" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Expected end date</LocalizedString>
					<LocalizedString Language="uk">Очікувана дата закінчення</LocalizedString>
					<LocalizedString Language="ru">Ожидаемая дата окончания</LocalizedString>
					<LocalizedString Language="lv">Gaidāmais beigu datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ExpectedEndDatePID" ID="82F5C08B-8328-4A0B-BFB1-2099328BDD86" Type="refid" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Expected end date parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр очікуваної дати закінчення</LocalizedString>
					<LocalizedString Language="ru">Параметр ожидаемой даты окончания</LocalizedString>
					<LocalizedString Language="lv">Gaidāmais beigu datuma parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CreateOutlookTask" ID="3C0A33BB-C710-4013-AF23-C7C1F7BD22EF" Type="bool" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Create MS Outlook task</LocalizedString>
					<LocalizedString Language="uk">Створити завдання MS Outlook</LocalizedString>
					<LocalizedString Language="ru">Создать задание MS Outlook</LocalizedString>
					<LocalizedString Language="lv">Izveidot MS Outlook uzdevumu</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Reminder" ID="3176C040-3313-40B9-91C6-AB0A9B259D1F" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reminder</LocalizedString>
					<LocalizedString Language="uk">Нагадати за</LocalizedString>
					<LocalizedString Language="ru">Напомнить за</LocalizedString>
					<LocalizedString Language="lv">Atgādinātājs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ReminderPID" ID="B65A91B6-86B4-4424-ADC4-6B58BEEC77DF" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reminder parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр нагадати за</LocalizedString>
					<LocalizedString Language="ru">Параметр напомнить за</LocalizedString>
					<LocalizedString Language="lv">Atgādinātāja parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FilesID" ID="CB9E863E-D55F-4E10-B138-CF58AF696294" Type="refcardid" RefType="BFC9D190-BCD6-411A-B9F9-3160D3F68819" RefSection="3F8270DB-3603-463C-BA59-26B89EBB6CB5" DefaultValue="" RefKind="Hard" CopyBehavior="Null">
				<Name>
					<LocalizedString Language="en">File list</LocalizedString>
					<LocalizedString Language="uk">Список файлів</LocalizedString>
					<LocalizedString Language="ru">Список файлов</LocalizedString>
					<LocalizedString Language="lv">Fails</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ParentProcessID" ID="D2F8B3C6-960F-4F24-A691-C7CC44DB8BD3" Type="refcardid" RefType="AE82DD57-348C-4407-A50A-9F2C7D694DA8" RefSection="0EF6BCCA-7A09-4027-A3A2-D2EEECA1BF4D" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Weak" CopyBehavior="Null">
				<Name>
					<LocalizedString Language="en">Parent process</LocalizedString>
					<LocalizedString Language="uk">Батьківський процес</LocalizedString>
					<LocalizedString Language="ru">Родительский процесс</LocalizedString>
					<LocalizedString Language="lv">Sakontēja procesa ID</LocalizedString>
				</Name>
				<RefFields />
			</Field>
			<Field Alias="ParentTaskID" ID="384DF34F-DAB7-49AD-8B7A-87E6D8F5181C" Type="refcardid" RefType="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" RefSection="7213A125-2CA4-40EE-A671-B52850F45E7D" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Weak" CopyBehavior="Null">
				<Name>
					<LocalizedString Language="en">Parent task</LocalizedString>
					<LocalizedString Language="uk">Батьківське завдання</LocalizedString>
					<LocalizedString Language="ru">Родительское задание</LocalizedString>
					<LocalizedString Language="lv">Sākotnējais uzdevums</LocalizedString>
				</Name>
				<RefFields />
			</Field>
			<Field Alias="SettingsStartDate" ID="49F3DA8B-A99B-4EF3-9FB0-B36FFAEC722F" Type="datetime" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Settings start date</LocalizedString>
					<LocalizedString Language="ru">Дата начала в настройках</LocalizedString>
					<LocalizedString Language="uk">Дата почала в настройках</LocalizedString>
					<LocalizedString Language="lv">Uzstādījumu sākuma datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SettingsEndDate" ID="C23C8412-E3E6-4A62-93E0-6A0DA537DF04" Type="datetime" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Settings end date</LocalizedString>
					<LocalizedString Language="ru">Дата окончания в настройках</LocalizedString>
					<LocalizedString Language="uk">Дата закінчення в настройках</LocalizedString>
					<LocalizedString Language="lv">Uzstādījumu beigu datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="TaskController" ID="205DCF28-0E37-4C8D-95A1-614530A89BCE" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Task supervisor</LocalizedString>
					<LocalizedString Language="ru">Контролер задания</LocalizedString>
					<LocalizedString Language="uk">Контролер завдання</LocalizedString>
					<LocalizedString Language="lv">Uzdevuma kontrolētājs</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="TCo_LastName">LastName</RefField>
					<RefField Alias="TCo_FirstName">FirstName</RefField>
					<RefField Alias="TCo_MiddleName">MiddleName</RefField>
					<RefField Alias="TCo_DisplayString">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="SignedByPID" ID="D825DB84-CCEA-48B3-BDD5-7FD347E81256" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Signed by Parameter</LocalizedString>
					<LocalizedString Language="ru">Параметр Подписано</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Parakstīts pēc parametra</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ControlDate" ID="86024786-8508-4B3E-95DC-F3D54C3E62B1" Type="datetime" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Control date</LocalizedString>
					<LocalizedString Language="ru">Дата контроля</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Kontroles datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ControlDatePID" ID="F47962FA-1E1C-41F4-8F11-8652C44FB17C" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Control date parameter</LocalizedString>
					<LocalizedString Language="ru">Параметр Дата контроля</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Kontroles datuma parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ChildTaskCount" ID="22781950-0A1A-4A40-9E64-3C2126D0131B" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Child task count</LocalizedString>
					<LocalizedString Language="ru">Количество подчиненных заданий</LocalizedString>
					<LocalizedString Language="lv">Apakš uzdevumu skaits</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ParentResolutionID" ID="F10CD81C-EDA2-48F1-9B37-B636186D82C1" Type="refcardid" RefType="0056522E-FC72-48D2-8EBB-A60B838E36C9" RefSection="77C70C13-881A-4534-9704-C4F6B9ACDB0A" DefaultValue="" RefKind="Weak" CopyBehavior="Null">
				<Name>
					<LocalizedString Language="en">Parent resolution</LocalizedString>
					<LocalizedString Language="ru">Родительская задача</LocalizedString>
					<LocalizedString Language="lv">Sākotnējā rezolūcija</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="ParentRes_Description" SysField="true">Description</RefField>
				</RefFields>
			</Field>
			<Field Alias="ReportID" ID="21CA6412-25A6-4E5B-A93E-A0CE4F440013" Type="refcardid" RefType="52F3DB4D-C3D4-4C03-BFF2-D8CFDC6E6CFC" RefSection="87A4DADA-C220-40CA-82A8-3373280BA440" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Weak" CopyBehavior="Null">
				<Name>
					<LocalizedString Language="en">Parent report</LocalizedString>
					<LocalizedString Language="ru">Родительский отчет</LocalizedString>
					<LocalizedString Language="lv">Sākotnējā atskaite</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Report_Description" SysField="true">Description</RefField>
				</RefFields>
			</Field>
			<Field Alias="PerformerFilesID" ID="7DB089A9-9688-44B5-AADD-B97C7F34E199" Type="refcardid" RefType="BFC9D190-BCD6-411A-B9F9-3160D3F68819" RefSection="3F8270DB-3603-463C-BA59-26B89EBB6CB5" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Hard" CopyBehavior="Null">
				<Name>
					<LocalizedString Language="en">Performer files</LocalizedString>
					<LocalizedString Language="ru">Список файлов исполнителя</LocalizedString>
					<LocalizedString Language="lv">Izpildītāja failu saraksts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsControllerTask" ID="4AEE3FEC-304E-4D29-A23D-505601987799" Type="bool" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Resolution supervisor task</LocalizedString>
					<LocalizedString Language="ru">Задание контролера задачи</LocalizedString>
					<LocalizedString Language="lv">Kontrolētāja uzdevums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ParentApprovalID" ID="A9DD5D80-0AAD-4A59-93EE-AE212A8CA3F0" Type="refcardid" RefType="A231269C-6126-4C1A-9758-F55FF9571EF8" RefSection="3C2F1AC3-8D26-425F-956B-A3B0B52BAC5D" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Weak" CopyBehavior="Null">
				<Name>
					<LocalizedString Language="en">Parent approval</LocalizedString>
					<LocalizedString Language="ru">Родительское согласование</LocalizedString>
					<LocalizedString Language="lv">Sākotnējais apstiprinājums</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="ParentApp_Description" SysField="true">Description</RefField>
				</RefFields>
			</Field>
			<Field Alias="ControlledTaskID" ID="BB0A8AF9-D102-495C-9C5E-3F3D155FE3CD" Type="refcardid" RefType="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" RefSection="7213A125-2CA4-40EE-A671-B52850F45E7D" DefaultValue="" RefKind="Weak" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Supervised task</LocalizedString>
					<LocalizedString Language="ru">Контролируемое задание</LocalizedString>
					<LocalizedString Language="lv">Kontrolētais uzdevums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Type" ID="7B6ECB31-6B73-4D66-9B8C-4AE12D70DCD3" Type="refid" RefType="BE14D55D-92B7-4345-AD10-32588981F83D" RefSection="49AD5A2D-17EC-46E2-A49E-C58D0BBD9C1A" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Task class</LocalizedString>
					<LocalizedString Language="ru">Вид задания</LocalizedString>
					<LocalizedString Language="lv">Uzdevuma tips</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefsID" ID="C401E31E-314F-43DC-B141-9218A9D29E1E" Type="refcardid" DefaultValue="" RefKind="Hard" CopyBehavior="Null">
				<Name>
					<LocalizedString Language="en">Reference list card id</LocalizedString>
					<LocalizedString Language="ru">Идентификатор карточки Списка ссылок</LocalizedString>
				</Name>
			</Field>
			<Constraints>
				<Constraint AllowNulls="false" Type="Index">
					<ConstraintField>ParentProcessID</ConstraintField>
				</Constraint>
			</Constraints>
		</Section>
		<Section Alias="Performing" Type="struct" ID="D48E6155-C774-4205-AB70-7A67AB69DF22">
			<Name>
				<LocalizedString Language="en">Task performance</LocalizedString>
				<LocalizedString Language="uk">Виконання завдання</LocalizedString>
				<LocalizedString Language="ru">Исполнение задания</LocalizedString>
				<LocalizedString Language="lv">Uzdevums tiek izpildīts</LocalizedString>
			</Name>
			<Field Alias="ActualStartDate" ID="29CCD746-2CA1-421F-94E8-C5158A4B60F0" Type="datetime" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Actual start date</LocalizedString>
					<LocalizedString Language="uk">Реальна дата початку</LocalizedString>
					<LocalizedString Language="ru">Действительная дата начала</LocalizedString>
					<LocalizedString Language="lv">Patiesais sākuma datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ActualStartDatePID" ID="5B4431A0-E716-460C-92F5-45017962AEC6" Type="refid" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Actual start date parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр реальної дати початку</LocalizedString>
					<LocalizedString Language="ru">Параметр действительной даты начала</LocalizedString>
					<LocalizedString Language="lv">Patiesais sākuma datuma parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ActualEndDate" ID="5E9BA801-FC07-4FA5-94BC-EE25EE3EA5F5" Type="datetime" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Actual completion date</LocalizedString>
					<LocalizedString Language="uk">Реальна дата закінчення</LocalizedString>
					<LocalizedString Language="ru">Действительная дата окончания</LocalizedString>
					<LocalizedString Language="lv">Patiesais beigu datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ActualEndDatePID" ID="BBFF59F6-BF0E-405E-A03C-3D197ACDE2A4" Type="refid" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Actual completion date parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр реальної дати закінчення</LocalizedString>
					<LocalizedString Language="ru">Параметр действительной даты окончания</LocalizedString>
					<LocalizedString Language="lv">Patiesā beigu datuma parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="TaskState" ID="F36202F5-4767-4BE4-BCA2-F797CFB425A7" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Task state</LocalizedString>
					<LocalizedString Language="uk">Стан завдання</LocalizedString>
					<LocalizedString Language="ru">Состояние задания</LocalizedString>
					<LocalizedString Language="lv">Uzdevuma stāvoklis</LocalizedString>
				</Name>
				<Enum Alias="Inactive" Value="0">
					<Name>
						<LocalizedString Language="en">Inactive</LocalizedString>
						<LocalizedString Language="uk">Неактивно</LocalizedString>
						<LocalizedString Language="ru">Неактивно</LocalizedString>
						<LocalizedString Language="lv">Neaktīvs</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToPerform" Value="1">
					<Name>
						<LocalizedString Language="en">To perform</LocalizedString>
						<LocalizedString Language="uk">До виконання</LocalizedString>
						<LocalizedString Language="ru">К исполнению</LocalizedString>
						<LocalizedString Language="lv">Izpildīt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToBegin" Value="2">
					<Name>
						<LocalizedString Language="en">Not started</LocalizedString>
						<LocalizedString Language="uk">Не розпочато</LocalizedString>
						<LocalizedString Language="ru">Не начато</LocalizedString>
						<LocalizedString Language="lv">Sākt </LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="InProcess" Value="3">
					<Name>
						<LocalizedString Language="en">In process</LocalizedString>
						<LocalizedString Language="uk">В роботі</LocalizedString>
						<LocalizedString Language="ru">В работе</LocalizedString>
						<LocalizedString Language="lv">Procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Postponed" Value="4">
					<Name>
						<LocalizedString Language="en">Postponed</LocalizedString>
						<LocalizedString Language="uk">Відкладено</LocalizedString>
						<LocalizedString Language="ru">Отложено</LocalizedString>
						<LocalizedString Language="lv">Atlikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Completed" Value="5">
					<Name>
						<LocalizedString Language="en">Completed</LocalizedString>
						<LocalizedString Language="uk">Виконано</LocalizedString>
						<LocalizedString Language="ru">Исполнено</LocalizedString>
						<LocalizedString Language="lv">Izpildīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Rejected" Value="6">
					<Name>
						<LocalizedString Language="en">Rejected</LocalizedString>
						<LocalizedString Language="uk">Відмовлено</LocalizedString>
						<LocalizedString Language="ru">Отказано</LocalizedString>
						<LocalizedString Language="lv">Atteikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Recalled" Value="7">
					<Name>
						<LocalizedString Language="en">Recalled</LocalizedString>
						<LocalizedString Language="uk">Відізвано</LocalizedString>
						<LocalizedString Language="ru">Отозвано</LocalizedString>
						<LocalizedString Language="lv">Atsaukts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedToBegin" Value="8">
					<Name>
						<LocalizedString Language="en">Delegated - not started</LocalizedString>
						<LocalizedString Language="uk">Делеговано - не почато</LocalizedString>
						<LocalizedString Language="ru">Делегировано - не начато</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - uzsākšanai</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedInProcess" Value="9">
					<Name>
						<LocalizedString Language="en">Delegated - in process</LocalizedString>
						<LocalizedString Language="uk">Делеговано - в роботі</LocalizedString>
						<LocalizedString Language="ru">Делегировано - в работе</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedPostponed" Value="10">
					<Name>
						<LocalizedString Language="en">Delegated - postponed</LocalizedString>
						<LocalizedString Language="uk">Делеговано - відкладено</LocalizedString>
						<LocalizedString Language="ru">Делегировано - отложено</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atlikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedToPerform" Value="11">
					<Name>
						<LocalizedString Language="en">Delegated - for completion</LocalizedString>
						<LocalizedString Language="uk">Делеговано - до виконання</LocalizedString>
						<LocalizedString Language="ru">Делегировано - к исполнению</LocalizedString>
						<LocalizedString Language="lv">+</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="BeingDelegated" Value="12">
					<Name>
						<LocalizedString Language="en">Delegated</LocalizedString>
						<LocalizedString Language="uk">Делеговано</LocalizedString>
						<LocalizedString Language="ru">Делегировано</LocalizedString>
						<LocalizedString Language="lv">Tiek deleģēts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedReturning" Value="13">
					<Name>
						<LocalizedString Language="en">Returned from delegation</LocalizedString>
						<LocalizedString Language="uk">Повернення з делегування</LocalizedString>
						<LocalizedString Language="ru">Возврат с делегирования</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atgriežas</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedReturned" Value="14">
					<Name>
						<LocalizedString Language="en">Returned from delegation</LocalizedString>
						<LocalizedString Language="uk">Повернено з делегування</LocalizedString>
						<LocalizedString Language="ru">Возвращено с делегирования</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atgriezts</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="TaskStatePID" ID="C12CE167-CCE6-4623-83A1-517CC0CA2036" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Task state parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр стану завдання</LocalizedString>
					<LocalizedString Language="ru">Параметр состояния задания</LocalizedString>
					<LocalizedString Language="lv">Uzdevuma stāvokļa parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CurrentPerformer" ID="D15B3E3A-DF66-474F-B9E8-5CA1B6CCA059" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Current performer</LocalizedString>
					<LocalizedString Language="uk">Поточний виконавець</LocalizedString>
					<LocalizedString Language="ru">Текущий исполнитель</LocalizedString>
					<LocalizedString Language="lv">Patreizējais izpildītājs</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="">LastName</RefField>
					<RefField Alias="">FirstName</RefField>
					<RefField Alias="">MiddleName</RefField>
					<RefField Alias="">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="CurrentPerformerPID" ID="FDA6763B-46EF-4FCB-B4C4-C025806C7A91" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Current performer parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр поточного виконавця</LocalizedString>
					<LocalizedString Language="ru">Параметр текущего исполнителя</LocalizedString>
					<LocalizedString Language="lv">Patreizējā izpildītāja parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="PercentCompleted" ID="1FB6C880-E9AB-475D-95D8-26AD08DD2148" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Percent completed</LocalizedString>
					<LocalizedString Language="uk">Відсоток виконання</LocalizedString>
					<LocalizedString Language="ru">Процент исполнения</LocalizedString>
					<LocalizedString Language="lv">Izpilde procentos</LocalizedString>
				</Name>
			</Field>
			<Field Alias="PercentCompletedPID" ID="3DC90FE2-255C-493C-82BB-A03EF7A60048" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Percent completed parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр відсотка виконання</LocalizedString>
					<LocalizedString Language="ru">Параметр процента исполнения</LocalizedString>
					<LocalizedString Language="lv">Izpilde procentos parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ExecutionStarted" ID="AE9EB5D4-7FBC-45AA-AC46-8DB5150582B5" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Execution started</LocalizedString>
					<LocalizedString Language="uk">Розпочато виконання</LocalizedString>
					<LocalizedString Language="ru">Начато исполнение</LocalizedString>
					<LocalizedString Language="lv">Izpildīšana uzsākta</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ControllerShortcutID" ID="3BD476AC-71AC-4AE7-AFB1-C942736E6885" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Supervisor shortcut</LocalizedString>
					<LocalizedString Language="uk">Ярлик контролера</LocalizedString>
					<LocalizedString Language="ru">Ярлык контролера</LocalizedString>
					<LocalizedString Language="lv">Kontrolētāja saīsnes ID</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DelegatedTo" ID="2EBB8800-F399-4F2A-B8CB-B5267F27DE4D" Type="refid" RefType="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" RefSection="DBF3C53F-0131-4BEB-A0F8-1CC8CC71C455" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Delegated to</LocalizedString>
					<LocalizedString Language="uk">Делеговано до</LocalizedString>
					<LocalizedString Language="ru">Делегировано к</LocalizedString>
					<LocalizedString Language="lv">Deleģēts </LocalizedString>
				</Name>
			</Field>
			<Field Alias="ReturnReason" ID="4FAB81FA-9676-4001-A1D5-A5E129E2B1E3" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Return reason</LocalizedString>
					<LocalizedString Language="uk">Причина повернення</LocalizedString>
					<LocalizedString Language="ru">Причина возврата</LocalizedString>
					<LocalizedString Language="lv">Atgriešanas iemesls</LocalizedString>
				</Name>
				<Enum Alias="NormalReturn" Value="0">
					<Name>
						<LocalizedString Language="en">Normal return</LocalizedString>
						<LocalizedString Language="uk">Нормальне повернення</LocalizedString>
						<LocalizedString Language="ru">Нормальный возврат</LocalizedString>
						<LocalizedString Language="lv">Normāla atgriešana</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="NoPerformers" Value="1">
					<Name>
						<LocalizedString Language="en">No available performers</LocalizedString>
						<LocalizedString Language="uk">Відсутні досяжні виконавці</LocalizedString>
						<LocalizedString Language="ru">Нет доступных исполнителей</LocalizedString>
						<LocalizedString Language="lv">Nav pieejams neviens izpildītājs</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="ActualDuration" ID="97370932-A2D5-47E5-934B-CCF5D69B68F6" Type="int" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Actual duration</LocalizedString>
					<LocalizedString Language="uk">Реальна тривалість</LocalizedString>
					<LocalizedString Language="ru">Действительная длительность</LocalizedString>
					<LocalizedString Language="lv">Patiesais ilgums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ActualDurationPID" ID="9125F8AA-3B7C-43FE-94F5-05BE920BB8AC" Type="refid" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Actual duration parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр реальної тривалості</LocalizedString>
					<LocalizedString Language="ru">Параметр действительной длительности</LocalizedString>
					<LocalizedString Language="lv">Patiesā ilguma parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RecreateShortcuts" ID="E97185A1-8F4D-4E31-AB7A-DA7F0057E2CB" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Recreate shortcuts</LocalizedString>
					<LocalizedString Language="uk">Створити ярлики заново</LocalizedString>
					<LocalizedString Language="ru">Пересоздать ярлыки</LocalizedString>
					<LocalizedString Language="lv">Pārveidot saīsnes</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ReportPID" ID="0ECC75D4-DA51-4C1C-A367-0BEC96D07DD1" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Report parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр звіту</LocalizedString>
					<LocalizedString Language="ru">Параметр отчета</LocalizedString>
					<LocalizedString Language="lv">Atskaites parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsOverdue" ID="579FD547-64E5-4FD8-BF77-ED66518E8C00" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Is overdue</LocalizedString>
					<LocalizedString Language="ru">Просрочено</LocalizedString>
					<LocalizedString Language="uk">Прострочено</LocalizedString>
					<LocalizedString Language="lv">Nokavēts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="TaskReferencePID" ID="A97B8AF8-120E-49BB-A21A-7EAC4D4C90DC" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Task reference parameter</LocalizedString>
					<LocalizedString Language="ru">Параметр ссылки на задание</LocalizedString>
					<LocalizedString Language="uk">Параметр посилання на завдання</LocalizedString>
					<LocalizedString Language="lv">Uzdevuma atsauces parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CompletedByResponsible" ID="6D41C20A-0FB7-4F7B-A7FC-5D2CA83C8038" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Completed by responsible performer</LocalizedString>
					<LocalizedString Language="ru">Завершено ответственным исполнителем</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Pabeidza atbildīgā persona</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CompletedByResponsiblePID" ID="A2A95842-8CDE-47A9-85FB-6B7FF5647C2C" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Completed by responsible parameter</LocalizedString>
					<LocalizedString Language="ru">Параметр завершено ответственным</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Pabeidza atbildīgās personas parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CompletedEmployeeID" ID="20E6AB03-2C0A-4655-9F2D-3B8792551738" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Completing employee</LocalizedString>
					<LocalizedString Language="ru">Завершивший сотрудник</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Pabeidza darbinieks</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Com_LastName">LastName</RefField>
					<RefField Alias="Com_FirstName">FirstName</RefField>
					<RefField Alias="Com_MiddleName">MiddleName</RefField>
					<RefField Alias="Com_DisplayString">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="CompletedEmployeeIDPID" ID="ED3E05DA-EFC2-46A2-B7AB-A22BC7BF0227" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Completing employee parameter</LocalizedString>
					<LocalizedString Language="ru">Параметр завершивший сотрудник</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Pabeidza darbinieka parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsNewEndDate" ID="0A12A36B-76CA-4A54-BCC3-198C4280837A" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">New completion date set</LocalizedString>
					<LocalizedString Language="ru">Установлена новая дата завершения</LocalizedString>
					<LocalizedString Language="lv">Jauns beigu datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="NotifyChildren" ID="84CC77BC-429C-4517-9EAA-67BE9246D13C" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Notify child resolution performers</LocalizedString>
					<LocalizedString Language="ru">Уведомить исполнителей дочерних задач</LocalizedString>
					<LocalizedString Language="lv">Paziņot apakšrezolūcijas izpildītājiem</LocalizedString>
				</Name>
			</Field>
			<Constraints>
				<Constraint AllowNulls="true" Type="Index">
					<ConstraintField>TaskState</ConstraintField>
				</Constraint>
			</Constraints>
		</Section>
		<Section Alias="AdditionalSettings" Type="struct" ID="B9FF9E65-FBDB-4883-A4F8-38D31F8322D6">
			<Name>
				<LocalizedString Language="en">Additional settings</LocalizedString>
				<LocalizedString Language="uk">TRANSLATION</LocalizedString>
				<LocalizedString Language="ru">Настройки задания</LocalizedString>
				<LocalizedString Language="lv">Papildus uzstādījumi</LocalizedString>
			</Name>
			<Field Alias="CanReject" ID="815F15EB-4A4A-4B7E-A304-9F8E546D6AA3" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Can reject</LocalizedString>
					<LocalizedString Language="uk">Право на відмову</LocalizedString>
					<LocalizedString Language="ru">Право на отказ</LocalizedString>
					<LocalizedString Language="lv">Var atteikt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CanViewLog" ID="BB9BEA1F-BB34-4145-9DCC-22E1247304D9" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Can view log</LocalizedString>
					<LocalizedString Language="uk">Право на перегляд журналу</LocalizedString>
					<LocalizedString Language="ru">Право просмотра журнала</LocalizedString>
					<LocalizedString Language="lv">Var skatīt žurnālu</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CanReschedule" ID="4C149548-2047-4A2E-9F02-359FEE4189F1" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Can reshedule</LocalizedString>
					<LocalizedString Language="uk">Право змінювати терміни</LocalizedString>
					<LocalizedString Language="ru">Право изменения сроков</LocalizedString>
					<LocalizedString Language="lv">Var mainīt plānu</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ControllerCanReschedule" ID="8A305CC3-895C-4A24-B1A8-BD255DD671D0" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Supervisor can reschedule</LocalizedString>
					<LocalizedString Language="uk">Право змінюваи терміни контролером</LocalizedString>
					<LocalizedString Language="ru">Право изменения сроков контролером</LocalizedString>
					<LocalizedString Language="lv">Kontrolētājs var mainīt plānu</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CanDelegate" ID="8FD4F78A-CFA3-407E-80DE-E34C3F465952" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Can delegate</LocalizedString>
					<LocalizedString Language="uk">Право делегувати</LocalizedString>
					<LocalizedString Language="ru">Право делегировать</LocalizedString>
					<LocalizedString Language="lv">Var deleģēt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DelegateToAll" ID="B4292CA2-7FB5-4119-93F2-1DE5C372CB65" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Delegate to all</LocalizedString>
					<LocalizedString Language="uk">Делегувати всім</LocalizedString>
					<LocalizedString Language="ru">Делегировать всем</LocalizedString>
					<LocalizedString Language="lv">Deleģēt visiem</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsReportNeeded" ID="58E30E50-DA0A-46DB-85EE-7543650509E2" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Report required</LocalizedString>
					<LocalizedString Language="uk">Необхідний звіт</LocalizedString>
					<LocalizedString Language="ru">Необходим отчет</LocalizedString>
					<LocalizedString Language="lv">Nepieciešama atskaite</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CanAddDocuments" ID="9BAC8733-483E-4AB1-BA97-CFD0A55DF282" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Can add documents</LocalizedString>
					<LocalizedString Language="uk">Право додавати документи</LocalizedString>
					<LocalizedString Language="ru">Право добавлять документы</LocalizedString>
					<LocalizedString Language="lv">Var pievienot dokumentus</LocalizedString>
				</Name>
			</Field>
			<Field Alias="AddNewReferences" ID="26C38A10-677D-4950-981D-B5663A79CD5D" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Add new references</LocalizedString>
					<LocalizedString Language="uk">Додавати нові посилання</LocalizedString>
					<LocalizedString Language="ru">Добавлять новые ссылки</LocalizedString>
					<LocalizedString Language="lv">Pievienot jaunu saikni</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CompletionText" ID="E4A6E6BF-922C-4284-86AE-1C90A48D5160" Type="unistring" Max="512" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Completion text</LocalizedString>
					<LocalizedString Language="uk">Текст закінчення</LocalizedString>
					<LocalizedString Language="ru">Текст завершения</LocalizedString>
					<LocalizedString Language="lv">Izpildes teksts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CompletionTextPID" ID="E0BC17F3-5950-4CBD-9D5A-C722BA22B9A5" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Completion text parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр текст закінчення</LocalizedString>
					<LocalizedString Language="ru">Параметр текст завершения</LocalizedString>
					<LocalizedString Language="lv">Izpildes teksta parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ToRead" ID="0C08D5C1-13F4-48A2-9D0D-C928E5674D70" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">To read</LocalizedString>
					<LocalizedString Language="uk">Завдання до ознайомлення</LocalizedString>
					<LocalizedString Language="ru">Задание к ознакомлению</LocalizedString>
					<LocalizedString Language="lv">Lasīt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CanOpenParent" ID="A91ED4BC-8B59-4996-A534-88BD7645509B" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Allow opening process</LocalizedString>
					<LocalizedString Language="uk">Дозволити відкриття процесу</LocalizedString>
					<LocalizedString Language="ru">Разрешить открытие процесса</LocalizedString>
					<LocalizedString Language="lv">Var atvērt sākotnējo</LocalizedString>
				</Name>
			</Field>
			<Field Alias="PerformConfirmation" ID="836C920F-E853-4F53-8F72-73AAAFB35345" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Perform confirmation</LocalizedString>
					<LocalizedString Language="uk">Підтвердження виконання</LocalizedString>
					<LocalizedString Language="ru">Подтверждение исполнения</LocalizedString>
					<LocalizedString Language="lv">Izpildes apstiprinājums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FinishParam" ID="10D337A1-7F7A-44BB-9D7D-911E6980DA10" Type="refid" RefType="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" RefSection="01AE4B60-5174-4304-B7D6-3F5ACAE357E1" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Completion parameter</LocalizedString>
					<LocalizedString Language="uk">Закінчуючий парамет</LocalizedString>
					<LocalizedString Language="ru">Завершающий параметр</LocalizedString>
					<LocalizedString Language="lv">Beigšanas parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsAddFileNeeded" ID="6C021354-5463-4BD0-8C01-7FE4E59BD02B" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Add file required</LocalizedString>
					<LocalizedString Language="uk">Необхідно додати файл</LocalizedString>
					<LocalizedString Language="ru">Необходимо добавить файл</LocalizedString>
					<LocalizedString Language="lv">Nepieciešams pievienot failu</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DelegateToDeputies" ID="B4399233-96E5-45EF-BD21-85CB142EC04C" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Delegate to substitutes</LocalizedString>
					<LocalizedString Language="uk">Делегувати замісникам</LocalizedString>
					<LocalizedString Language="ru">Делегировать к заместителям</LocalizedString>
					<LocalizedString Language="lv">Deleģēt padotajiem</LocalizedString>
				</Name>
			</Field>
			<Field Alias="JournalsName" ID="21F260AF-0916-45E5-8C8E-9F852EB63555" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Journals name</LocalizedString>
					<LocalizedString Language="uk">Назви журналів</LocalizedString>
					<LocalizedString Language="ru">Название журналов</LocalizedString>
					<LocalizedString Language="lv">Žurnāla nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FilesToAddPID" ID="A0BBE0C9-6C15-4716-A7A5-92377806E2E0" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Added files variable</LocalizedString>
					<LocalizedString Language="ru">Переменная для добавленных файлов</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Pievienot failu mainīgo</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FilesCount" ID="A3C18B7F-F066-472C-9B88-5B0A3E2B7C43" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" ShownInUI="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Files count to add</LocalizedString>
					<LocalizedString Language="ru">Количество файлов для добавления</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Failu skaits pievienošanai</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DefaultVersioningType" ID="40A1FEBE-E6FF-49C0-A4B8-5F33D3EC165B" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Version type</LocalizedString>
					<LocalizedString Language="uk">Тип версій</LocalizedString>
					<LocalizedString Language="ru">Тип версий</LocalizedString>
					<LocalizedString Language="lv">Versiju tips</LocalizedString>
				</Name>
				<Enum Alias="None" Value="0">
					<Name>
						<LocalizedString Language="ru">Нет</LocalizedString>
						<LocalizedString Language="uk">Відсутні</LocalizedString>
						<LocalizedString Language="en">None</LocalizedString>
						<LocalizedString Language="lv">Manuāli</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Auto" Value="1">
					<Name>
						<LocalizedString Language="uk">Авто</LocalizedString>
						<LocalizedString Language="ru">Авто</LocalizedString>
						<LocalizedString Language="en">Auto</LocalizedString>
						<LocalizedString Language="lv">Auto</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Manual" Value="2">
					<Name>
						<LocalizedString Language="ru">Ручной</LocalizedString>
						<LocalizedString Language="uk">Ручний</LocalizedString>
						<LocalizedString Language="en">Manual</LocalizedString>
						<LocalizedString Language="lv">Manuāli</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="FinishListOnly" ID="1E0C3C75-2D58-4004-8523-B83279E4307E" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Show enum as list only</LocalizedString>
					<LocalizedString Language="ru">Отображать перечисление как список</LocalizedString>
					<LocalizedString Language="lv">Rādīt izvēli tikai kā sarakstu</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ReportCardRequired" ID="DCAA8A1B-7C30-40A0-B09E-BD0A0D2A0ECD" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Detailed report required</LocalizedString>
					<LocalizedString Language="ru">Необходим детальный отчет</LocalizedString>
					<LocalizedString Language="lv">Nepieciešama atskaites kartiņa</LocalizedString>
				</Name>
			</Field>
			<Field Alias="NoDialogOnFinish" ID="8D51DDC8-5B25-41C0-8CE1-5CEAA0D274C8" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Do not show the completion dialog</LocalizedString>
					<LocalizedString Language="ru">Не показывать диалог завершения</LocalizedString>
					<LocalizedString Language="lv">Nerādīt pabeigšanas paziņojumu.</LocalizedString>
				</Name>
			</Field>
			<Field Alias="TemplateID" ID="871F002D-F013-4013-8A22-1B4AE5213FA7" Type="uniqueid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Template</LocalizedString>
					<LocalizedString Language="ru">Шаблон</LocalizedString>
					<LocalizedString Language="lv">Šablons</LocalizedString>
				</Name>
			</Field>
			<Field Alias="KeepTask" ID="D94E400F-F81B-49C0-AD00-7FC742E4782E" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Do not delete task</LocalizedString>
					<LocalizedString Language="ru">Не удалять задание</LocalizedString>
					<LocalizedString Language="lv">Nedzēst uzdevumu</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FinishDialogWidth" ID="75658147-2079-403D-BABE-26BDB2F1AFDC" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Completion dialog width</LocalizedString>
					<LocalizedString Language="ru">Ширина диалога завершения</LocalizedString>
					<LocalizedString Language="lv">Beigu dialoga platums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FinishDialogHeight" ID="DE96F2A6-C403-440E-9398-20B0482A3E5E" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Completion dialog height</LocalizedString>
					<LocalizedString Language="ru">Высота диалога завершения</LocalizedString>
					<LocalizedString Language="lv">Beigu dialoga augstums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CanDeleteDocuments" ID="D07CF537-9375-4564-BA86-8485FFECC3D3" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Document deleting right</LocalizedString>
					<LocalizedString Language="ru">Право удаления документов</LocalizedString>
					<LocalizedString Language="lv">Var dzēst dokumentus</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SendAsHTML" ID="B15FCFEB-872A-4A81-A5DD-A042AA5D956D" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Send message as HTML</LocalizedString>
					<LocalizedString Language="ru">Отправлять письмо как HTML</LocalizedString>
					<LocalizedString Language="lv">Sūtīt HTML ziņu</LocalizedString>
				</Name>
			</Field>
		</Section>
		<Section Alias="Aliases" Type="coll" ID="9694E2A6-BC96-49D6-BED8-0043311F0D7D">
			<Name>
				<LocalizedString Language="en">Aliases</LocalizedString>
				<LocalizedString Language="uk">Семантика</LocalizedString>
				<LocalizedString Language="ru">Семантика</LocalizedString>
				<LocalizedString Language="lv">Aizstājvārdi</LocalizedString>
			</Name>
			<Field Alias="TaskState" ID="0A140A93-54DB-42CE-95D6-0ADA5CD2F248" Type="enum" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Task state</LocalizedString>
					<LocalizedString Language="uk">Стан завдань</LocalizedString>
					<LocalizedString Language="ru">Состояния задания</LocalizedString>
					<LocalizedString Language="lv">Uzdevuma stāvoklis</LocalizedString>
				</Name>
				<Enum Alias="Inactive" Value="0">
					<Name>
						<LocalizedString Language="en">Inactive</LocalizedString>
						<LocalizedString Language="uk">Неактивно</LocalizedString>
						<LocalizedString Language="ru">Неактивно</LocalizedString>
						<LocalizedString Language="lv">Neaktīvs</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToPerform" Value="1">
					<Name>
						<LocalizedString Language="en">To perform</LocalizedString>
						<LocalizedString Language="uk">До виконання</LocalizedString>
						<LocalizedString Language="ru">К исполнению</LocalizedString>
						<LocalizedString Language="lv">Izpildīt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToBegin" Value="2">
					<Name>
						<LocalizedString Language="en">Not started</LocalizedString>
						<LocalizedString Language="uk">Не розпочато</LocalizedString>
						<LocalizedString Language="ru">Не начато</LocalizedString>
						<LocalizedString Language="lv">Sākt </LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="InProcess" Value="3">
					<Name>
						<LocalizedString Language="en">In process</LocalizedString>
						<LocalizedString Language="uk">В роботі</LocalizedString>
						<LocalizedString Language="ru">В работе</LocalizedString>
						<LocalizedString Language="lv">Procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Postponed" Value="4">
					<Name>
						<LocalizedString Language="en">Postponed</LocalizedString>
						<LocalizedString Language="uk">Відкладено</LocalizedString>
						<LocalizedString Language="ru">Отложено</LocalizedString>
						<LocalizedString Language="lv">Atlikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Completed" Value="5">
					<Name>
						<LocalizedString Language="en">Completed</LocalizedString>
						<LocalizedString Language="uk">Закінчено</LocalizedString>
						<LocalizedString Language="ru">Завершено</LocalizedString>
						<LocalizedString Language="lv">Izpildīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Rejected" Value="6">
					<Name>
						<LocalizedString Language="en">Rejected</LocalizedString>
						<LocalizedString Language="uk">Відмовлено</LocalizedString>
						<LocalizedString Language="ru">Отказано</LocalizedString>
						<LocalizedString Language="lv">Atteikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Recalled" Value="7">
					<Name>
						<LocalizedString Language="en">Recalled</LocalizedString>
						<LocalizedString Language="uk">Відкликано</LocalizedString>
						<LocalizedString Language="ru">Отозвано</LocalizedString>
						<LocalizedString Language="lv">Atsaukts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedToBegin" Value="8">
					<Name>
						<LocalizedString Language="en">Delegated - not started</LocalizedString>
						<LocalizedString Language="uk">Делеговано - не почато</LocalizedString>
						<LocalizedString Language="ru">Делегировано - не начато</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - uzsākšanai</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedInProcess" Value="9">
					<Name>
						<LocalizedString Language="en">Delegated - in process</LocalizedString>
						<LocalizedString Language="uk">Делеговано - роботі</LocalizedString>
						<LocalizedString Language="ru">Delegated - в работе</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedPostponed" Value="10">
					<Name>
						<LocalizedString Language="en">Delegated - postponed</LocalizedString>
						<LocalizedString Language="uk">Делеговано - відкладено</LocalizedString>
						<LocalizedString Language="ru">Делегировано - отложено</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atlikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedToPerform" Value="11">
					<Name>
						<LocalizedString Language="en">Delegated - for completion</LocalizedString>
						<LocalizedString Language="uk">Делеговано - до виконання</LocalizedString>
						<LocalizedString Language="ru">Делегировано - к исполнению</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - izpildīšanai</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="BeingDelegated" Value="12">
					<Name>
						<LocalizedString Language="en">Delegated</LocalizedString>
						<LocalizedString Language="uk">Делеговано</LocalizedString>
						<LocalizedString Language="ru">Делегировано</LocalizedString>
						<LocalizedString Language="lv">Tiek deleģēts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedReturning" Value="13">
					<Name>
						<LocalizedString Language="en">Returned from delegation</LocalizedString>
						<LocalizedString Language="uk">Повернення з делегування</LocalizedString>
						<LocalizedString Language="ru">Возврат с делегирования</LocalizedString>
						<LocalizedString Language="lv">Delegāts - atgriežas</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedReturned" Value="14">
					<Name>
						<LocalizedString Language="en">Returned from delegation</LocalizedString>
						<LocalizedString Language="uk">Повернено з делегування</LocalizedString>
						<LocalizedString Language="ru">Возвращено с делегирования</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atgriezts</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="ActionAlias" ID="BC4BBF64-A2F0-419B-9546-0BACA5C2E9C6" Type="unistring" Max="64" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Action alias</LocalizedString>
					<LocalizedString Language="uk">Семантика дії</LocalizedString>
					<LocalizedString Language="ru">Семантика действия</LocalizedString>
					<LocalizedString Language="lv">Darbības aizstājvārds</LocalizedString>
				</Name>
			</Field>
			<Field Alias="StateAlias" ID="5279B625-6289-4D8F-9FBA-22A6D1633E9C" Type="unistring" Max="64" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">State alias</LocalizedString>
					<LocalizedString Language="uk">Семантика стану</LocalizedString>
					<LocalizedString Language="ru">Семантика состояния</LocalizedString>
					<LocalizedString Language="lv">Stāvokļa aizstājvārds</LocalizedString>
				</Name>
			</Field>
		</Section>
		<Section Alias="Performers" Type="coll" ID="88DE0FE6-C813-46E1-B5D8-4A2D7B68C019">
			<Name>
				<LocalizedString Language="en">Performers</LocalizedString>
				<LocalizedString Language="uk">Виконавці</LocalizedString>
				<LocalizedString Language="ru">Исполнители</LocalizedString>
				<LocalizedString Language="lv">Izpilīdāji</LocalizedString>
			</Name>
			<Field Alias="PerformerID" ID="44A595FA-EE1B-4C53-A9DE-B4AA012FC840" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Performer ID</LocalizedString>
					<LocalizedString Language="uk">Виконавець</LocalizedString>
					<LocalizedString Language="ru">Исполнитель</LocalizedString>
					<LocalizedString Language="lv">Izpildītāja ID</LocalizedString>
				</Name>
			</Field>
			<Field Alias="PerformerIDPID" ID="7A549F3D-A31D-4725-BAF2-66684714BB69" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Performer ID parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр ID виконавця</LocalizedString>
					<LocalizedString Language="ru">Параметр ID исполнителя</LocalizedString>
					<LocalizedString Language="lv">Izpildītāja ID parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="PerformerType" ID="C7D04AEF-999D-4AAA-A966-8647EEE1636C" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Performer type</LocalizedString>
					<LocalizedString Language="uk">Тип виконавця</LocalizedString>
					<LocalizedString Language="ru">Тип исполнителя</LocalizedString>
					<LocalizedString Language="lv">Izpildītāja tips</LocalizedString>
				</Name>
				<Enum Alias="Employee" Value="0">
					<Name>
						<LocalizedString Language="en">Employee</LocalizedString>
						<LocalizedString Language="uk">Співробітник</LocalizedString>
						<LocalizedString Language="ru">Сотрудник</LocalizedString>
						<LocalizedString Language="lv">Darbinieks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Department" Value="1">
					<Name>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="uk">Відділ</LocalizedString>
						<LocalizedString Language="ru">Отдел</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Group" Value="2">
					<Name>
						<LocalizedString Language="en">Group</LocalizedString>
						<LocalizedString Language="uk">Група</LocalizedString>
						<LocalizedString Language="ru">Группа</LocalizedString>
						<LocalizedString Language="lv">Grupa</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Role" Value="3">
					<Name>
						<LocalizedString Language="en">Role</LocalizedString>
						<LocalizedString Language="uk">Роль</LocalizedString>
						<LocalizedString Language="ru">Роль</LocalizedString>
						<LocalizedString Language="lv">Loma</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="RoutingType" ID="4C329C78-3416-4795-9D57-8430D271161F" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Routing type</LocalizedString>
					<LocalizedString Language="uk">Тип маршрутизації</LocalizedString>
					<LocalizedString Language="ru">Тип маршрутизации</LocalizedString>
					<LocalizedString Language="lv">Pārvietošanas tips</LocalizedString>
				</Name>
				<Enum Alias="None" Value="0">
					<Name>
						<LocalizedString Language="en">By default</LocalizedString>
						<LocalizedString Language="uk">За змовчуванням</LocalizedString>
						<LocalizedString Language="ru">По умолчанию</LocalizedString>
						<LocalizedString Language="lv">Pēc noklusējuma</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DescriptionLetter" Value="1">
					<Name>
						<LocalizedString Language="en">Task description letter</LocalizedString>
						<LocalizedString Language="uk">Лист з описом завдання</LocalizedString>
						<LocalizedString Language="ru">Письмо с описанием задания</LocalizedString>
						<LocalizedString Language="lv">Apraksta vēstule</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Appointment" Value="2">
					<Name>
						<LocalizedString Language="en">Outlook appointment</LocalizedString>
						<LocalizedString Language="uk">Подія Outlook</LocalizedString>
						<LocalizedString Language="ru">Событие Outlook</LocalizedString>
						<LocalizedString Language="lv">Outlook tikšanās</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ReferenceLetter" Value="3">
					<Name>
						<LocalizedString Language="en">Link to task</LocalizedString>
						<LocalizedString Language="uk">Посилання на завдання</LocalizedString>
						<LocalizedString Language="ru">Ссылка на задание</LocalizedString>
						<LocalizedString Language="lv">Atsauces vēstule</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="OfflineTask" Value="4">
					<Name>
						<LocalizedString Language="en">Offline task</LocalizedString>
						<LocalizedString Language="uk">Оффлайн завдання</LocalizedString>
						<LocalizedString Language="ru">Офлайн задание</LocalizedString>
						<LocalizedString Language="lv">Ārlīnijas uzdevums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="OnlineTask" Value="5">
					<Name>
						<LocalizedString Language="en">Online task</LocalizedString>
						<LocalizedString Language="uk">Онлайн завданя</LocalizedString>
						<LocalizedString Language="ru">Онлайн задание</LocalizedString>
						<LocalizedString Language="lv">Tiešsaistes uzdevums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Custom" Value="6">
					<Name>
						<LocalizedString Language="en">Custom</LocalizedString>
						<LocalizedString Language="uk">Особливий</LocalizedString>
						<LocalizedString Language="ru">Особый</LocalizedString>
						<LocalizedString Language="lv">Pielāgot</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="NoRouting" Value="7">
					<Name>
						<LocalizedString Language="en">No routing</LocalizedString>
						<LocalizedString Language="ru">Не маршрутизировать</LocalizedString>
						<LocalizedString Language="lv">Nekas</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="PerformerName" ID="EF13D857-846C-4874-8E20-A1EAB47C91F2" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Performer name</LocalizedString>
					<LocalizedString Language="ru">Имя исполнителя</LocalizedString>
					<LocalizedString Language="lv">Izpildītāja vārds</LocalizedString>
				</Name>
			</Field>
		</Section>
		<Section Alias="Delegates" Type="coll" ID="DBF3C53F-0131-4BEB-A0F8-1CC8CC71C455">
			<Name>
				<LocalizedString Language="en">Delegates</LocalizedString>
				<LocalizedString Language="uk">Делегати</LocalizedString>
				<LocalizedString Language="ru">Делегаты</LocalizedString>
				<LocalizedString Language="lv">Delegāti</LocalizedString>
			</Name>
			<Field Alias="DelegateID" ID="4BB1556F-CE0F-45DF-93C3-B5E1E8FFE583" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Delegate</LocalizedString>
					<LocalizedString Language="uk">Делегат</LocalizedString>
					<LocalizedString Language="ru">Делегат</LocalizedString>
					<LocalizedString Language="lv">Delegāta ID</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DelegateIDPID" ID="550FF391-9EF3-4DB3-9D1A-921D127A35BA" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Delegate ID parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр ID делегата</LocalizedString>
					<LocalizedString Language="ru">Параметр ID делегата</LocalizedString>
					<LocalizedString Language="lv">Delegāta ID parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DelegateType" ID="5E6711B1-E009-461D-B0A1-7C451C2187B2" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Delegate type</LocalizedString>
					<LocalizedString Language="uk">Тип делегата</LocalizedString>
					<LocalizedString Language="ru">Тип делегата</LocalizedString>
					<LocalizedString Language="lv">Deleģēšanas tips</LocalizedString>
				</Name>
				<Enum Alias="Employee" Value="0">
					<Name>
						<LocalizedString Language="en">Employee</LocalizedString>
						<LocalizedString Language="uk">Співробітник</LocalizedString>
						<LocalizedString Language="ru">Сотрудник</LocalizedString>
						<LocalizedString Language="lv">Darbinieks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Department" Value="1">
					<Name>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="uk">Відділ</LocalizedString>
						<LocalizedString Language="ru">Отдел</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Group" Value="2">
					<Name>
						<LocalizedString Language="en">Group</LocalizedString>
						<LocalizedString Language="uk">Група</LocalizedString>
						<LocalizedString Language="ru">Группа</LocalizedString>
						<LocalizedString Language="lv">Grupa</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Role" Value="3">
					<Name>
						<LocalizedString Language="en">Role</LocalizedString>
						<LocalizedString Language="uk">Роль</LocalizedString>
						<LocalizedString Language="ru">Роль</LocalizedString>
						<LocalizedString Language="lv">Loma</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="ResponseRequired" ID="769FA6DF-9E0E-4CC3-937A-28423043F712" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Response required</LocalizedString>
					<LocalizedString Language="uk">Необхідне повернення</LocalizedString>
					<LocalizedString Language="ru">Требуется возврат</LocalizedString>
					<LocalizedString Language="lv">Nepieciešama atbilde</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ResponseRequiredPID" ID="6BD891E7-7AB5-4C1A-B73A-F2C376F07411" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Response required parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр необхідне повернення</LocalizedString>
					<LocalizedString Language="ru">Параметр Требуется возврат</LocalizedString>
					<LocalizedString Language="lv">Nepieciešama atbilde parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CanReject" ID="9D139991-5BC9-4055-9946-4202DD8A4B87" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Can reject</LocalizedString>
					<LocalizedString Language="uk">Право на відмову</LocalizedString>
					<LocalizedString Language="ru">Право на отказ</LocalizedString>
					<LocalizedString Language="lv">Var atteikt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CanRejectPID" ID="8E9F0EC6-0843-49F0-87BB-DE3DE7EF78F8" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Can reject parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр право на відмову</LocalizedString>
					<LocalizedString Language="ru">Параметр Право на отказ</LocalizedString>
					<LocalizedString Language="lv">Var atteikt parametru</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RoutingType" ID="2E1968BF-E161-4E22-B862-F226712C0EBB" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Routing method</LocalizedString>
					<LocalizedString Language="uk">Спосіб маршрутизації</LocalizedString>
					<LocalizedString Language="ru">Способ маршрутизации</LocalizedString>
					<LocalizedString Language="lv">Pārvietošanas tips</LocalizedString>
				</Name>
				<Enum Alias="None" Value="0">
					<Name>
						<LocalizedString Language="en">By default</LocalizedString>
						<LocalizedString Language="ru">По умолчанию</LocalizedString>
						<LocalizedString Language="lv">Nekas</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DescriptionLetter" Value="1">
					<Name>
						<LocalizedString Language="en">Description letter</LocalizedString>
						<LocalizedString Language="uk">Лист з описом</LocalizedString>
						<LocalizedString Language="ru">Письмо c описанием</LocalizedString>
						<LocalizedString Language="lv">Apraksta vēstule</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="TaskRequest" Value="2">
					<Name>
						<LocalizedString Language="en">Task request</LocalizedString>
						<LocalizedString Language="uk">Запит на завдання</LocalizedString>
						<LocalizedString Language="ru">Запрос на задание</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma pieprasījums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ReferenceLetter" Value="3">
					<Name>
						<LocalizedString Language="en">Message with link to task</LocalizedString>
						<LocalizedString Language="uk">Лист з посиланням на завдання</LocalizedString>
						<LocalizedString Language="ru">Письмо со ссылкой на задание</LocalizedString>
						<LocalizedString Language="lv">Atsauces vēstule</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="OfflineTask" Value="4">
					<Name>
						<LocalizedString Language="en">Offline task</LocalizedString>
						<LocalizedString Language="uk">Оффлайн завдання</LocalizedString>
						<LocalizedString Language="ru">Офлайн задание</LocalizedString>
						<LocalizedString Language="lv">Ārlīnijas uzdevums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="OnlineTask" Value="5">
					<Name>
						<LocalizedString Language="en">Online task</LocalizedString>
						<LocalizedString Language="uk">Онлайн завдання</LocalizedString>
						<LocalizedString Language="ru">Онлайн задание</LocalizedString>
						<LocalizedString Language="lv">Tiešsaistes uzdevums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="LetterWithFiles" Value="6">
					<Name>
						<LocalizedString Language="en">Letter with files</LocalizedString>
						<LocalizedString Language="uk">Лист з файлом</LocalizedString>
						<LocalizedString Language="ru">Письмо с файлами</LocalizedString>
						<LocalizedString Language="lv">Vēstule ar failiem</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="NoRouting" Value="7">
					<Name>
						<LocalizedString Language="en">No routing</LocalizedString>
						<LocalizedString Language="ru">Не маршрутизировать</LocalizedString>
						<LocalizedString Language="lv">Nekas</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="IsDelegated" ID="85E587B9-FDD1-4D93-B5E3-D8BDD12BA78E" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Delegate selected</LocalizedString>
					<LocalizedString Language="uk">Делегат вибраний</LocalizedString>
					<LocalizedString Language="ru">Делегат выбран</LocalizedString>
					<LocalizedString Language="lv">Deleģēts</LocalizedString>
				</Name>
			</Field>
		</Section>
		<Section Alias="CurrentPerformers" Type="coll" ID="9D09144D-CAEC-4732-AD4D-EB6A3864714A">
			<Name>
				<LocalizedString Language="en">Current performers</LocalizedString>
				<LocalizedString Language="uk">Поточні виконавці</LocalizedString>
				<LocalizedString Language="ru">Текущие исполнители</LocalizedString>
				<LocalizedString Language="lv">Patreizējie izpildītāji</LocalizedString>
			</Name>
			<Field Alias="PerformerID" ID="895D7ED3-8D36-4886-A5E6-84FB9CBC2B9D" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Performer ID</LocalizedString>
					<LocalizedString Language="uk">Виконавець</LocalizedString>
					<LocalizedString Language="ru">Исполнитель</LocalizedString>
					<LocalizedString Language="lv">Izpildītāja ID</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="">LastName</RefField>
					<RefField Alias="">FirstName</RefField>
					<RefField Alias="">MiddleName</RefField>
					<RefField Alias="">PersonalFolder</RefField>
					<RefField Alias="">RoutingType</RefField>
					<RefField Alias="">Email</RefField>
					<RefField Alias="">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="DelegatedFrom" ID="E133E5BC-8AE1-4D2C-B579-9BE6025EB6D7" Type="refid" RefType="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" RefSection="9D09144D-CAEC-4732-AD4D-EB6A3864714A" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Delegated from</LocalizedString>
					<LocalizedString Language="uk">Делеговано від</LocalizedString>
					<LocalizedString Language="ru">Делегировано от</LocalizedString>
					<LocalizedString Language="lv">Deleģēts no</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DelegatedTo" ID="7A9B9450-1D15-4FF3-A652-31BCC79FC8B5" Type="refid" RefType="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" RefSection="DBF3C53F-0131-4BEB-A0F8-1CC8CC71C455" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Delegated to</LocalizedString>
					<LocalizedString Language="uk">Делеговано до</LocalizedString>
					<LocalizedString Language="ru">Делегировано к</LocalizedString>
					<LocalizedString Language="lv">Deleģēts </LocalizedString>
				</Name>
			</Field>
			<Field Alias="PerformerState" ID="A3FB5837-99B7-4AC4-9B96-68B362317678" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Performer state</LocalizedString>
					<LocalizedString Language="uk">Стан виконавця</LocalizedString>
					<LocalizedString Language="ru">Состояние исполнителя</LocalizedString>
					<LocalizedString Language="lv">Izpildītāja stāvoklis</LocalizedString>
				</Name>
				<Enum Alias="Inactive" Value="0">
					<Name>
						<LocalizedString Language="en">Inactive</LocalizedString>
						<LocalizedString Language="uk">Неактивно</LocalizedString>
						<LocalizedString Language="ru">Неактивно</LocalizedString>
						<LocalizedString Language="lv">Neaktīvs</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToPerform" Value="1">
					<Name>
						<LocalizedString Language="en">To perform</LocalizedString>
						<LocalizedString Language="uk">До виконання</LocalizedString>
						<LocalizedString Language="ru">К исполнению</LocalizedString>
						<LocalizedString Language="lv">Izpildīt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToBegin" Value="2">
					<Name>
						<LocalizedString Language="en">Not started</LocalizedString>
						<LocalizedString Language="uk">Не почато</LocalizedString>
						<LocalizedString Language="ru">Не начато</LocalizedString>
						<LocalizedString Language="lv">Sākt </LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="InProcess" Value="3">
					<Name>
						<LocalizedString Language="en">In process</LocalizedString>
						<LocalizedString Language="uk">В роботі</LocalizedString>
						<LocalizedString Language="ru">В работе</LocalizedString>
						<LocalizedString Language="lv">Procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Postponed" Value="4">
					<Name>
						<LocalizedString Language="en">Postponed</LocalizedString>
						<LocalizedString Language="uk">Відкладено</LocalizedString>
						<LocalizedString Language="ru">Отложено</LocalizedString>
						<LocalizedString Language="lv">Atlikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Completed" Value="5">
					<Name>
						<LocalizedString Language="en">Completed</LocalizedString>
						<LocalizedString Language="uk">Виконано</LocalizedString>
						<LocalizedString Language="ru">Исполнено</LocalizedString>
						<LocalizedString Language="lv">Izpildīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Rejected" Value="6">
					<Name>
						<LocalizedString Language="en">Rejected</LocalizedString>
						<LocalizedString Language="uk">Відмовлено</LocalizedString>
						<LocalizedString Language="ru">Отказано</LocalizedString>
						<LocalizedString Language="lv">Atteikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Recalled" Value="7">
					<Name>
						<LocalizedString Language="en">Recalled</LocalizedString>
						<LocalizedString Language="uk">Відкликано</LocalizedString>
						<LocalizedString Language="ru">Отозвано</LocalizedString>
						<LocalizedString Language="lv">Atsaukts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedToBegin" Value="8">
					<Name>
						<LocalizedString Language="en">Delegated - not started</LocalizedString>
						<LocalizedString Language="uk">Делеговано - не розпочато</LocalizedString>
						<LocalizedString Language="ru">Делегировано - не начато</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - uzsākšanai</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedInProcess" Value="9">
					<Name>
						<LocalizedString Language="en">Delegated - in process</LocalizedString>
						<LocalizedString Language="uk">Делеговано - в роботі</LocalizedString>
						<LocalizedString Language="ru">Делегировано - в работе</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedPostponed" Value="10">
					<Name>
						<LocalizedString Language="en">Delegated - postponed</LocalizedString>
						<LocalizedString Language="uk">Делеговано - відкладено</LocalizedString>
						<LocalizedString Language="ru">Делегировано - отложено</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atlikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegateToPerform" Value="11">
					<Name>
						<LocalizedString Language="en">Delegated - for completion</LocalizedString>
						<LocalizedString Language="uk">Делеговано - до виконання</LocalizedString>
						<LocalizedString Language="ru">Делегировано - к исполнению</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - izpildīšanai</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="BeingDelegated" Value="12">
					<Name>
						<LocalizedString Language="en">Delegated</LocalizedString>
						<LocalizedString Language="uk">Делеговано</LocalizedString>
						<LocalizedString Language="ru">Делегировано</LocalizedString>
						<LocalizedString Language="lv">Tiek deleģēts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedReturning" Value="13">
					<Name>
						<LocalizedString Language="en">Returned from delegation</LocalizedString>
						<LocalizedString Language="uk">Повернення з делегування</LocalizedString>
						<LocalizedString Language="ru">Возврат с делегирования</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atgriežas</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedReturned" Value="14">
					<Name>
						<LocalizedString Language="en">Returned from delegation</LocalizedString>
						<LocalizedString Language="uk">Повернено з делегування</LocalizedString>
						<LocalizedString Language="ru">Возвращено с делегирования</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atgriezts</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="OutlookTaskID" ID="9985D839-3F38-494C-AFFC-E3A62578B9C5" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">MS Outlook task ID</LocalizedString>
					<LocalizedString Language="uk">ID завдання MS Outlook</LocalizedString>
					<LocalizedString Language="ru">ID задания MS Outlook</LocalizedString>
					<LocalizedString Language="lv">MS Outlook uzdevuma ID</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ShortcutID" ID="62CB4419-4FEE-465A-B95B-0BB6FC9D9902" Type="refid" RefType="DA86FABF-4DD7-4A86-B6FF-C58C24D12DE2" RefSection="EB1D77DD-45BD-4A5E-82A7-A0E3B1EB1D74" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Shortcut ID</LocalizedString>
					<LocalizedString Language="uk">Ярлик</LocalizedString>
					<LocalizedString Language="ru">Ярлык</LocalizedString>
					<LocalizedString Language="lv">Saīsnes ID</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ResponseRequired" ID="9131D7D0-377A-464D-995A-DE8EC2F6A03B" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Response required</LocalizedString>
					<LocalizedString Language="uk">Потрібне повернення</LocalizedString>
					<LocalizedString Language="ru">Требуется возврат</LocalizedString>
					<LocalizedString Language="lv">Nepieciešama atbilde</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CanReject" ID="49B5552F-A93B-4C4C-B098-E1958B7969AA" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Can reject</LocalizedString>
					<LocalizedString Language="uk">Право на відмову</LocalizedString>
					<LocalizedString Language="ru">Право на отказ</LocalizedString>
					<LocalizedString Language="lv">Var atteikt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsActive" ID="46FAD775-EFC2-4245-8FE7-F88C0C209C4A" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Active</LocalizedString>
					<LocalizedString Language="uk">Активний</LocalizedString>
					<LocalizedString Language="ru">Активен</LocalizedString>
					<LocalizedString Language="lv">Aktīvs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CurrentRoutingType" ID="C89DEF8E-44A0-487C-BD9D-07D5F65E52C7" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Routing method</LocalizedString>
					<LocalizedString Language="uk">Спосіб маршрутизації</LocalizedString>
					<LocalizedString Language="ru">Способ маршрутизации</LocalizedString>
					<LocalizedString Language="lv">Pārvietošanas tips</LocalizedString>
				</Name>
				<Enum Alias="None" Value="0">
					<Name>
						<LocalizedString Language="en">Enumeration value</LocalizedString>
						<LocalizedString Language="uk">Значення переліку</LocalizedString>
						<LocalizedString Language="ru">Значение перечисления</LocalizedString>
						<LocalizedString Language="lv">Nekas</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DescriptionLetter" Value="1">
					<Name>
						<LocalizedString Language="en">Description letter</LocalizedString>
						<LocalizedString Language="uk">Лист з описом</LocalizedString>
						<LocalizedString Language="ru">Письмо c описанием</LocalizedString>
						<LocalizedString Language="lv">Apraksta vēstule</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Appointment" Value="2">
					<Name>
						<LocalizedString Language="en">Outlook appointment</LocalizedString>
						<LocalizedString Language="uk">Подія Outlook</LocalizedString>
						<LocalizedString Language="ru">Событие Outlook</LocalizedString>
						<LocalizedString Language="lv">Outlook tikšanās</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ReferenceLetter" Value="3">
					<Name>
						<LocalizedString Language="en">Message with link to task</LocalizedString>
						<LocalizedString Language="uk">Лист з посиланням на завдання</LocalizedString>
						<LocalizedString Language="ru">Письмо со ссылкой на задание</LocalizedString>
						<LocalizedString Language="lv">Atsauces vēstule</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="OfflineTask" Value="4">
					<Name>
						<LocalizedString Language="en">Offline task</LocalizedString>
						<LocalizedString Language="uk">Оффлайн завдання</LocalizedString>
						<LocalizedString Language="ru">Офлайн задание</LocalizedString>
						<LocalizedString Language="lv">Ārlīnijas uzdevums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="OnlineTask" Value="5">
					<Name>
						<LocalizedString Language="en">Online task</LocalizedString>
						<LocalizedString Language="uk">Онлайн завдання</LocalizedString>
						<LocalizedString Language="ru">Онлайн задание</LocalizedString>
						<LocalizedString Language="lv">Tiešsaistes uzdevums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Custom" Value="6">
					<Name>
						<LocalizedString Language="en">Custom</LocalizedString>
						<LocalizedString Language="uk">Особливий</LocalizedString>
						<LocalizedString Language="ru">Особый</LocalizedString>
						<LocalizedString Language="lv">Pielāgot</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="DeputyFor" ID="00490DD2-0FD0-4122-9FFE-6D1E20DABE8C" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Substitute for</LocalizedString>
					<LocalizedString Language="ru">Заместитель для</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Vietnieks </LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Dep_LastName">LastName</RefField>
					<RefField Alias="Dep_FirstName">FirstName</RefField>
					<RefField Alias="Dep_MiddleName">MiddleName</RefField>
					<RefField Alias="Dep_DisplayString">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="OldPerformerID" ID="0114B130-F2E4-407C-BE8E-8C4FA72F24D2" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Performer ID</LocalizedString>
					<LocalizedString Language="ru">Предыдущий исполнитель</LocalizedString>
					<LocalizedString Language="lv">Iepriekšējais izpildītājs</LocalizedString>
				</Name>
			</Field>
			<Constraints>
				<Constraint AllowNulls="false" Type="Index">
					<ConstraintField>CurrentRoutingType</ConstraintField>
				</Constraint>
			</Constraints>
		</Section>
		<Section Alias="Properties" Type="coll" ID="E1ED3A9F-E462-463C-8F63-D1BBFC7DEDED" ContainsProperties="true" PropName="Name" PropValue="Value" PropDispValue="DisplayValue" PropType="ParamType">
			<Name>
				<LocalizedString Language="en">Properties</LocalizedString>
				<LocalizedString Language="uk">Властивості</LocalizedString>
				<LocalizedString Language="ru">Свойства</LocalizedString>
				<LocalizedString Language="lv">Rekvizīti</LocalizedString>
			</Name>
			<Field Alias="Name" ID="75ACB30C-5E3A-4CB1-84DB-B5C254E46A84" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Property name</LocalizedString>
					<LocalizedString Language="uk">Назва властивості</LocalizedString>
					<LocalizedString Language="ru">Название свойства</LocalizedString>
					<LocalizedString Language="lv">Rekvizītu nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Value" ID="F5D5FB0C-9CBF-4C0A-9C13-261F56925990" Type="variant" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Property value</LocalizedString>
					<LocalizedString Language="uk">Значення властивості</LocalizedString>
					<LocalizedString Language="ru">Значение свойства</LocalizedString>
					<LocalizedString Language="lv">Rekvizītu vērtība</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ValuePID" ID="C9155273-52CA-4908-A0B9-97CED8909B52" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Value parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр значення</LocalizedString>
					<LocalizedString Language="ru">Параметр значения</LocalizedString>
					<LocalizedString Language="lv">Vērtības parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="WriteToCard" ID="FFC01597-B5A4-4EF2-8A6D-97F01C834068" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Write to card</LocalizedString>
					<LocalizedString Language="uk">Записувати до картки</LocalizedString>
					<LocalizedString Language="ru">Записывать в карточку</LocalizedString>
					<LocalizedString Language="lv">Rakstīt kartiņā</LocalizedString>
				</Name>
			</Field>
			<Field Alias="WriteToProcess" ID="6E8FCF96-0C75-4F7E-8F1C-D0B6A65FE47C" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Write to process</LocalizedString>
					<LocalizedString Language="uk">Записувати до процесу</LocalizedString>
					<LocalizedString Language="ru">Записывать в процесс</LocalizedString>
					<LocalizedString Language="lv">Rakstīt procesā</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Order" ID="F1EED798-2694-43B6-82E5-E46E44422EF0" Type="int" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Serial number</LocalizedString>
					<LocalizedString Language="uk">Порядковий номер</LocalizedString>
					<LocalizedString Language="ru">Порядковый номер</LocalizedString>
					<LocalizedString Language="lv">Kārtas numurs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ParamType" ID="F06464AB-4684-44AB-ACB3-046483018E96" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Property type</LocalizedString>
					<LocalizedString Language="uk">Тип властивості</LocalizedString>
					<LocalizedString Language="ru">Тип свойства</LocalizedString>
					<LocalizedString Language="lv">Rekvizīta tips</LocalizedString>
				</Name>
				<Enum Alias="String" Value="0">
					<Name>
						<LocalizedString Language="en">String</LocalizedString>
						<LocalizedString Language="uk">Рядок</LocalizedString>
						<LocalizedString Language="ru">Строка</LocalizedString>
						<LocalizedString Language="lv">Virkne</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Integer" Value="1">
					<Name>
						<LocalizedString Language="en">Integer</LocalizedString>
						<LocalizedString Language="uk">Ціле число</LocalizedString>
						<LocalizedString Language="ru">Целое число</LocalizedString>
						<LocalizedString Language="lv">Vesels skaitlis</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Double" Value="2">
					<Name>
						<LocalizedString Language="en">Double</LocalizedString>
						<LocalizedString Language="uk">Дробове число</LocalizedString>
						<LocalizedString Language="ru">Дробное число</LocalizedString>
						<LocalizedString Language="lv">Decimāls skaitlis</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DateTime" Value="3">
					<Name>
						<LocalizedString Language="en">Date / time</LocalizedString>
						<LocalizedString Language="uk">Дата / Час</LocalizedString>
						<LocalizedString Language="ru">Дата / Время</LocalizedString>
						<LocalizedString Language="lv">Datums / Laiks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Boolean" Value="4">
					<Name>
						<LocalizedString Language="en">Yes/No</LocalizedString>
						<LocalizedString Language="uk">Так / Ні</LocalizedString>
						<LocalizedString Language="ru">Да / Нет</LocalizedString>
						<LocalizedString Language="lv">Jā / Nē</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Employee" Value="5">
					<Name>
						<LocalizedString Language="en">Employee</LocalizedString>
						<LocalizedString Language="uk">Співробітник</LocalizedString>
						<LocalizedString Language="ru">Сотрудник</LocalizedString>
						<LocalizedString Language="lv">Darbinieks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Department" Value="6">
					<Name>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="uk">Підрозділ</LocalizedString>
						<LocalizedString Language="ru">Подразделение</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Group" Value="7">
					<Name>
						<LocalizedString Language="en">Group</LocalizedString>
						<LocalizedString Language="uk">Група</LocalizedString>
						<LocalizedString Language="ru">Группа</LocalizedString>
						<LocalizedString Language="lv">Grupa</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Role" Value="8">
					<Name>
						<LocalizedString Language="en">Role</LocalizedString>
						<LocalizedString Language="uk">Роль</LocalizedString>
						<LocalizedString Language="ru">Роль</LocalizedString>
						<LocalizedString Language="lv">Loma</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Universal" Value="9">
					<Name>
						<LocalizedString Language="en">Universal</LocalizedString>
						<LocalizedString Language="uk">Універсальне</LocalizedString>
						<LocalizedString Language="ru">Универсальное</LocalizedString>
						<LocalizedString Language="lv">Universāls</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="PartnerEmployee" Value="10">
					<Name>
						<LocalizedString Language="en">Partner employee</LocalizedString>
						<LocalizedString Language="ru">Контрагент</LocalizedString>
						<LocalizedString Language="uk">Контрагент</LocalizedString>
						<LocalizedString Language="lv">Partnera darbinieks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="PartnerDepartment" Value="11">
					<Name>
						<LocalizedString Language="en">Partner department</LocalizedString>
						<LocalizedString Language="ru">Подразделение контрагента</LocalizedString>
						<LocalizedString Language="uk">Підрозділ контрагента</LocalizedString>
						<LocalizedString Language="lv">Partnera departaments</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="CardRef" Value="12">
					<Name>
						<LocalizedString Language="en">Card</LocalizedString>
						<LocalizedString Language="ru">Карточка</LocalizedString>
						<LocalizedString Language="lv">Atsauce uz kartiņu</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="CardType" Value="13">
					<Name>
						<LocalizedString Language="en">Document class</LocalizedString>
						<LocalizedString Language="ru">Вид документа</LocalizedString>
						<LocalizedString Language="lv">Kartiņas tips</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="CardState" Value="14">
					<Name>
						<LocalizedString Language="en">Document state</LocalizedString>
						<LocalizedString Language="ru">Состояние документа</LocalizedString>
						<LocalizedString Language="lv">Kartiņas stāvoklis</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="GateVariable" Value="15">
					<Name>
						<LocalizedString Language="en">Gateway variable</LocalizedString>
						<LocalizedString Language="ru">Переменная шлюза</LocalizedString>
						<LocalizedString Language="lv">Vārtejas mainīgais</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Enum" Value="16">
					<Name>
						<LocalizedString Language="en">Enum</LocalizedString>
						<LocalizedString Language="ru">Перечисление</LocalizedString>
						<LocalizedString Language="lv">Izvēlne</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Date" Value="17">
					<Name>
						<LocalizedString Language="en">Date</LocalizedString>
						<LocalizedString Language="ru">Дата</LocalizedString>
						<LocalizedString Language="lv">Datums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Time" Value="18">
					<Name>
						<LocalizedString Language="en">Time</LocalizedString>
						<LocalizedString Language="ru">Время</LocalizedString>
						<LocalizedString Language="lv">Laiks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Button" Value="19">
					<Name>
						<LocalizedString Language="en">Button</LocalizedString>
						<LocalizedString Language="ru">Кнопка</LocalizedString>
						<LocalizedString Language="lv">Poga</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="ItemType" ID="803FB309-8F7B-44F0-B742-0F2291A65965" Type="refid" RefType="B2A438B7-8BB3-4B13-AF6E-F2F8996E148B" RefSection="5E3ED23A-2B5E-47F2-887C-E154ACEAFB97" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Universal directory record type</LocalizedString>
					<LocalizedString Language="uk">Тип запису</LocalizedString>
					<LocalizedString Language="ru">Тип записи универсального справочника</LocalizedString>
					<LocalizedString Language="lv">Vienības tips</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ParentProp" ID="B4DB04E1-98D5-4AC2-9BB1-E2706BE46CDF" Type="refid" RefType="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" RefSection="E1ED3A9F-E462-463C-8F63-D1BBFC7DEDED" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Parent property</LocalizedString>
					<LocalizedString Language="uk">Батьківська властивість</LocalizedString>
					<LocalizedString Language="ru">Родительское свойство</LocalizedString>
					<LocalizedString Language="lv">Sākotnējie rekvizīti</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ParentFieldName" ID="93892AE3-6F58-4A3E-AB4D-46AF9513413D" Type="string" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Parent field name</LocalizedString>
					<LocalizedString Language="uk">Ім''я батьківського поля</LocalizedString>
					<LocalizedString Language="ru">Имя родительского поля</LocalizedString>
					<LocalizedString Language="lv">Sākotnējā lauka nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DisplayValue" ID="5BEA04FC-DC70-4D36-BC21-C35CD0C45CD8" Type="unistring" Max="1900" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Displayed value</LocalizedString>
					<LocalizedString Language="uk">Значення, що відображається</LocalizedString>
					<LocalizedString Language="ru">Отображаемое значение</LocalizedString>
					<LocalizedString Language="lv">Attēlot vērtību</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ReadOnly" ID="E3AA41F6-1121-4A78-8CE7-B9FC4E0DAA8F" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Read-only</LocalizedString>
					<LocalizedString Language="ru">Только для чтения</LocalizedString>
					<LocalizedString Language="uk">Тільки для читання</LocalizedString>
					<LocalizedString Language="lv">Tikai lasīt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CreationReadOnly" ID="C75B808A-E2B4-4C5F-84FD-3244C53ACE7C" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">For read-only on creation</LocalizedString>
					<LocalizedString Language="ru">Только для чтения при создании</LocalizedString>
					<LocalizedString Language="lv">Izveidojot pieejas tiesības tikai lasīt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Required" ID="62152FD4-070F-42F5-BC70-A893ED87793A" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Required</LocalizedString>
					<LocalizedString Language="ru">Обязательное</LocalizedString>
					<LocalizedString Language="uk">Обов''язкове</LocalizedString>
					<LocalizedString Language="lv">Pieprasīts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="GateID" ID="EE4227BA-D3BA-45E1-9295-91DE42BD5D25" Type="refid" RefType="C1887469-3D28-4EC6-84BD-7CAEA7607F0C" RefSection="42B598D5-B3F4-4349-B0E8-874EDB737ABE" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Gateway</LocalizedString>
					<LocalizedString Language="ru">Шлюз</LocalizedString>
					<LocalizedString Language="lv">Vārteja</LocalizedString>
				</Name>
			</Field>
			<Field Alias="VarTypeID" ID="08258AAD-DBA1-4DD6-A437-CA501B030FE6" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Variable type in gateway</LocalizedString>
					<LocalizedString Language="ru">Тип переменной в шлюзе</LocalizedString>
					<LocalizedString Language="lv">Mainīgā tips vārtejā</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Hidden" ID="123059AE-B04B-4D32-AA81-B95E5626FAF5" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Hidden</LocalizedString>
					<LocalizedString Language="ru">Скрытое</LocalizedString>
					<LocalizedString Language="lv">Slēpts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsCollection" ID="EB706F12-A176-47B2-8521-D522335F2447" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Collection</LocalizedString>
					<LocalizedString Language="uk">Колекція</LocalizedString>
					<LocalizedString Language="ru">Коллекция</LocalizedString>
					<LocalizedString Language="lv">Kolekcija</LocalizedString>
				</Name>
			</Field>
			<Section Alias="EnumValues" Type="coll" ID="729B4F37-4FD9-4319-A7A0-33061EFBDB96">
				<Name>
					<LocalizedString Language="en">Property enum values</LocalizedString>
					<LocalizedString Language="uk">Значення переліку</LocalizedString>
					<LocalizedString Language="ru">Значения перечисления для свойства</LocalizedString>
					<LocalizedString Language="lv">Izvēlnes vērtības</LocalizedString>
				</Name>
				<Field Alias="ValueID" ID="25D803B6-FBB0-4EB5-ACD0-5D70CC8EECDF" Type="int" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Value ID</LocalizedString>
						<LocalizedString Language="uk">ID значення</LocalizedString>
						<LocalizedString Language="ru">ID значения</LocalizedString>
						<LocalizedString Language="lv">Vērtības ID</LocalizedString>
					</Name>
				</Field>
				<Field Alias="ValueName" ID="4AD1A59A-6007-4075-8C34-A720F3A91AA9" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Value name</LocalizedString>
						<LocalizedString Language="uk">Назва значення</LocalizedString>
						<LocalizedString Language="ru">Название значения</LocalizedString>
						<LocalizedString Language="lv">Vērtības nosaukums</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>ValueID</Field>
				</SortBy>
			</Section>
			<Section Alias="SelectedValues" Type="coll" ID="BC3735F3-67EE-412C-85FE-F39668FD72DA">
				<Name>
					<LocalizedString Language="en">Property selected values</LocalizedString>
					<LocalizedString Language="uk">Вибране значення</LocalizedString>
					<LocalizedString Language="ru">Выбранные значения свойства</LocalizedString>
					<LocalizedString Language="lv">Izvēlētās vērtības</LocalizedString>
				</Name>
				<Field Alias="SelectedValue" ID="CE4576F5-4F56-47A8-BEAD-0ACA0B3CFD81" Type="variant" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Selected value</LocalizedString>
						<LocalizedString Language="uk">Вибране значення</LocalizedString>
						<LocalizedString Language="ru">Выбранное значение</LocalizedString>
						<LocalizedString Language="lv">Izvēlētā vērtība</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Order" ID="C3C6CA42-FDA6-40F6-82A4-4A48D2DA441C" Type="int" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Order</LocalizedString>
						<LocalizedString Language="ru">Порядок</LocalizedString>
						<LocalizedString Language="uk">Порядок</LocalizedString>
						<LocalizedString Language="lv">Kārtība</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>Order</Field>
				</SortBy>
			</Section>
			<SortBy>
				<Field>Order</Field>
			</SortBy>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueCard">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
		</Section>
		<Section Alias="Log" Type="coll" ID="96909C05-27C2-4E37-9770-A4D0D2C10CB8">
			<Name>
				<LocalizedString Language="en">Log</LocalizedString>
				<LocalizedString Language="uk">Журнал роботи</LocalizedString>
				<LocalizedString Language="ru">Журнал работы</LocalizedString>
				<LocalizedString Language="lv">Žurnāls</LocalizedString>
			</Name>
			<Field Alias="Action" ID="13393B3D-72A4-4106-9232-FE37E9C798CA" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Action</LocalizedString>
					<LocalizedString Language="uk">Подія</LocalizedString>
					<LocalizedString Language="ru">Событие</LocalizedString>
					<LocalizedString Language="lv">Darbība</LocalizedString>
				</Name>
				<Enum Alias="None" Value="0">
					<Name>
						<LocalizedString Language="en">-</LocalizedString>
						<LocalizedString Language="uk">-</LocalizedString>
						<LocalizedString Language="ru">-</LocalizedString>
						<LocalizedString Language="lv">-</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="TaskOpen" Value="1">
					<Name>
						<LocalizedString Language="en">Task opened</LocalizedString>
						<LocalizedString Language="uk">Завдання відкрите</LocalizedString>
						<LocalizedString Language="ru">Задание открыто</LocalizedString>
						<LocalizedString Language="lv">Uzdevums atvērts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="TaskClose" Value="2">
					<Name>
						<LocalizedString Language="en">Task closed</LocalizedString>
						<LocalizedString Language="uk">Завдання закрите</LocalizedString>
						<LocalizedString Language="ru">Задание закрыто</LocalizedString>
						<LocalizedString Language="lv">Uzdevums aizvērts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="AddDocument" Value="3">
					<Name>
						<LocalizedString Language="en">Document added</LocalizedString>
						<LocalizedString Language="uk">Доданий документ</LocalizedString>
						<LocalizedString Language="ru">Добавлен документ</LocalizedString>
						<LocalizedString Language="lv">Dokuments pievienots</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ModifyDocument" Value="4">
					<Name>
						<LocalizedString Language="en">Document modified</LocalizedString>
						<LocalizedString Language="uk">Документ змінений</LocalizedString>
						<LocalizedString Language="ru">Изменен документ</LocalizedString>
						<LocalizedString Language="lv">Dokuments mainīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DocumentOpen" Value="5">
					<Name>
						<LocalizedString Language="en">Document opened</LocalizedString>
						<LocalizedString Language="uk">Відкритий документ</LocalizedString>
						<LocalizedString Language="ru">Открыт документ</LocalizedString>
						<LocalizedString Language="lv">Dokuments atvērts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="CreatingVersion" Value="6">
					<Name>
						<LocalizedString Language="en">Version created</LocalizedString>
						<LocalizedString Language="uk">Створена версія</LocalizedString>
						<LocalizedString Language="ru">Создана версия</LocalizedString>
						<LocalizedString Language="lv">Versija izveidota</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ChangeStatus" Value="7">
					<Name>
						<LocalizedString Language="en">Status changed</LocalizedString>
						<LocalizedString Language="uk">Змінений статус</LocalizedString>
						<LocalizedString Language="ru">Изменен статус</LocalizedString>
						<LocalizedString Language="lv">Statuss mainīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="TimeChange" Value="8">
					<Name>
						<LocalizedString Language="en">Time changed</LocalizedString>
						<LocalizedString Language="uk">Змінений час</LocalizedString>
						<LocalizedString Language="ru">Изменено время</LocalizedString>
						<LocalizedString Language="lv">Laiks mainīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="AddComment" Value="9">
					<Name>
						<LocalizedString Language="en">Comment added</LocalizedString>
						<LocalizedString Language="uk">Доданий коментар</LocalizedString>
						<LocalizedString Language="ru">Добавлен комментарий</LocalizedString>
						<LocalizedString Language="lv">Komentārs pievienots</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DocAddComment" Value="10">
					<Name>
						<LocalizedString Language="en">Document comment added</LocalizedString>
						<LocalizedString Language="uk">Доданий коментар до документу</LocalizedString>
						<LocalizedString Language="ru">Добавлен комментарий к документу</LocalizedString>
						<LocalizedString Language="lv">Dokumenta komentārs pievienots</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="PercentChange" Value="11">
					<Name>
						<LocalizedString Language="en">Percent changed</LocalizedString>
						<LocalizedString Language="uk">Змінений відсоток</LocalizedString>
						<LocalizedString Language="ru">Изменен процент</LocalizedString>
						<LocalizedString Language="lv">Procenti mainīti</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="TaskRecalled" Value="12">
					<Name>
						<LocalizedString Language="en">Task recalled</LocalizedString>
						<LocalizedString Language="uk">Завдання відкликане</LocalizedString>
						<LocalizedString Language="ru">Задание отозвано</LocalizedString>
						<LocalizedString Language="lv">Uzdevums atsaukts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="TaskRejected" Value="13">
					<Name>
						<LocalizedString Language="en">Task rejected</LocalizedString>
						<LocalizedString Language="uk">Завдання відмовлене</LocalizedString>
						<LocalizedString Language="ru">Задание отказано</LocalizedString>
						<LocalizedString Language="lv">Uzdevums atteikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="TaskFinished" Value="14">
					<Name>
						<LocalizedString Language="en">Task finished</LocalizedString>
						<LocalizedString Language="uk">Завдання закінчене</LocalizedString>
						<LocalizedString Language="ru">Задание завершено</LocalizedString>
						<LocalizedString Language="lv">Uzdevums beidzies</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="PerformSent" Value="15">
					<Name>
						<LocalizedString Language="en">Sent to perform</LocalizedString>
						<LocalizedString Language="uk">Надіслане на виконання</LocalizedString>
						<LocalizedString Language="ru">Послано на исполнение</LocalizedString>
						<LocalizedString Language="lv">Sūtīt izpildei</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="BeingDelegated" Value="16">
					<Name>
						<LocalizedString Language="en">Delegated</LocalizedString>
						<LocalizedString Language="uk">Делеговано</LocalizedString>
						<LocalizedString Language="ru">Делегировано</LocalizedString>
						<LocalizedString Language="lv">Tiek deleģēts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedReturn" Value="17">
					<Name>
						<LocalizedString Language="en">Returned from delegation</LocalizedString>
						<LocalizedString Language="uk">Повернення з делегування</LocalizedString>
						<LocalizedString Language="ru">Возврат с делегирования</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atgriezt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="PerformerChanged" Value="18">
					<Name>
						<LocalizedString Language="en">Performer changed</LocalizedString>
						<LocalizedString Language="uk">Змінений виконавець</LocalizedString>
						<LocalizedString Language="ru">Изменен исполнитель</LocalizedString>
						<LocalizedString Language="lv">Izpildītājs mainīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ChildTaskCreated" Value="19">
					<Name>
						<LocalizedString Language="en">Child task is created</LocalizedString>
						<LocalizedString Language="ru">Создано подчиненно задание</LocalizedString>
						<LocalizedString Language="uk">Додано дочірнє завдання</LocalizedString>
						<LocalizedString Language="lv">Apakš uzdevums izveidots</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ChildTaskCompleted" Value="20">
					<Name>
						<LocalizedString Language="en">Child task is completed</LocalizedString>
						<LocalizedString Language="ru">Завершено подчиненное задание</LocalizedString>
						<LocalizedString Language="uk">Завершено підлегле завдання</LocalizedString>
						<LocalizedString Language="lv">Apakš uzdevums izpildīts</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="ActionDate" ID="F4F59E9F-B2D9-46B5-A966-BAE94571F838" Type="datetime" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Action date</LocalizedString>
					<LocalizedString Language="uk">Дата події</LocalizedString>
					<LocalizedString Language="ru">Дата события</LocalizedString>
					<LocalizedString Language="lv">Darbības datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ActionBy" ID="F8CFC79D-F090-4F51-83DE-1948DD9CCE41" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Action by</LocalizedString>
					<LocalizedString Language="uk">Ким здійснено</LocalizedString>
					<LocalizedString Language="ru">Кем совершено</LocalizedString>
					<LocalizedString Language="lv">Darbība pēc</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="">FirstName</RefField>
					<RefField Alias="">MiddleName</RefField>
					<RefField Alias="">LastName</RefField>
				</RefFields>
			</Field>
			<Field Alias="PercentCompleted" ID="910E2F0E-BFCC-465E-9E25-7BCCC3A9FE0C" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="ru">Процент исполнения</LocalizedString>
					<LocalizedString Language="uk">Відсоток виконання</LocalizedString>
					<LocalizedString Language="en">Percent completed</LocalizedString>
					<LocalizedString Language="lv">Izpilde procentos</LocalizedString>
				</Name>
			</Field>
			<Field Alias="TaskState" ID="7D95052C-708A-4463-ABB9-17909C983E35" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="ru">Состояние</LocalizedString>
					<LocalizedString Language="uk">Стан</LocalizedString>
					<LocalizedString Language="en">State</LocalizedString>
					<LocalizedString Language="lv">Stāvoklis</LocalizedString>
				</Name>
				<Enum Alias="Inactive" Value="0">
					<Name>
						<LocalizedString Language="en">Inactive</LocalizedString>
						<LocalizedString Language="uk">Неактивно</LocalizedString>
						<LocalizedString Language="ru">Неактивно</LocalizedString>
						<LocalizedString Language="lv">Neaktīvs</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToPerform" Value="1">
					<Name>
						<LocalizedString Language="en">To perform</LocalizedString>
						<LocalizedString Language="uk">До виконання</LocalizedString>
						<LocalizedString Language="ru">К исполнению</LocalizedString>
						<LocalizedString Language="lv">Izpildīt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToBegin" Value="2">
					<Name>
						<LocalizedString Language="en">Not started</LocalizedString>
						<LocalizedString Language="uk">Не розпочато</LocalizedString>
						<LocalizedString Language="ru">Не начато</LocalizedString>
						<LocalizedString Language="lv">Sākt </LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="InProcess" Value="3">
					<Name>
						<LocalizedString Language="en">In process</LocalizedString>
						<LocalizedString Language="uk">В роботі</LocalizedString>
						<LocalizedString Language="ru">В работе</LocalizedString>
						<LocalizedString Language="lv">Procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Postponed" Value="4">
					<Name>
						<LocalizedString Language="en">Postponed</LocalizedString>
						<LocalizedString Language="uk">Відкладено</LocalizedString>
						<LocalizedString Language="ru">Отложено</LocalizedString>
						<LocalizedString Language="lv">Atlikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Completed" Value="5">
					<Name>
						<LocalizedString Language="en">Completed</LocalizedString>
						<LocalizedString Language="uk">Виконано</LocalizedString>
						<LocalizedString Language="ru">Исполнено</LocalizedString>
						<LocalizedString Language="lv">Izpildīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Rejected" Value="6">
					<Name>
						<LocalizedString Language="en">Rejected</LocalizedString>
						<LocalizedString Language="uk">Відмовлено</LocalizedString>
						<LocalizedString Language="ru">Отказано</LocalizedString>
						<LocalizedString Language="lv">Atteikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Recalled" Value="7">
					<Name>
						<LocalizedString Language="en">Recalled</LocalizedString>
						<LocalizedString Language="uk">Відкликано</LocalizedString>
						<LocalizedString Language="ru">Отозвано</LocalizedString>
						<LocalizedString Language="lv">Atsaukts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedToBegin" Value="8">
					<Name>
						<LocalizedString Language="en">Delegated - not started</LocalizedString>
						<LocalizedString Language="uk">Делеговано - не почато</LocalizedString>
						<LocalizedString Language="ru">Делегировано - не начато</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - uzsākšanai</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedInProcess" Value="9">
					<Name>
						<LocalizedString Language="en">Delegated - in process</LocalizedString>
						<LocalizedString Language="uk">Делеговано - в роботі</LocalizedString>
						<LocalizedString Language="ru">Делегировано - в работе</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedPostponed" Value="10">
					<Name>
						<LocalizedString Language="en">Delegated - postponed</LocalizedString>
						<LocalizedString Language="uk">Делеговано - відкладено</LocalizedString>
						<LocalizedString Language="ru">Делегировано - отложено</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atlikts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedToPerform" Value="11">
					<Name>
						<LocalizedString Language="en">Delegated - for completion</LocalizedString>
						<LocalizedString Language="uk">Делеговано - до виконання</LocalizedString>
						<LocalizedString Language="ru">Делегировано - к исполнению</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - izpildīšanai</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="BeingDelegated" Value="12">
					<Name>
						<LocalizedString Language="en">Delegated</LocalizedString>
						<LocalizedString Language="uk">Делеговано</LocalizedString>
						<LocalizedString Language="ru">Делегировано</LocalizedString>
						<LocalizedString Language="lv">Tiek deleģēts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedReturning" Value="13">
					<Name>
						<LocalizedString Language="en">Returned from delegation</LocalizedString>
						<LocalizedString Language="uk">Повернення з делегування</LocalizedString>
						<LocalizedString Language="ru">Возврат с делегирования</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atgriežas</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DelegatedReturned" Value="14">
					<Name>
						<LocalizedString Language="en">Returned from delegation</LocalizedString>
						<LocalizedString Language="uk">Повернено з делегування</LocalizedString>
						<LocalizedString Language="ru">Возвращено с делегирования</LocalizedString>
						<LocalizedString Language="lv">Deleģēts - atgriezts</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="Description" ID="6F939EC2-2AB4-46CB-99F0-5B4FAE08256E" Type="unistring" Max="512" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Action description</LocalizedString>
					<LocalizedString Language="uk">Опис дії</LocalizedString>
					<LocalizedString Language="ru">Описание действия</LocalizedString>
					<LocalizedString Language="lv">Darbības apraksts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="NewEndDate" ID="E644F543-A698-4116-ADBA-C281F0A17436" Type="datetime" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">New end date</LocalizedString>
					<LocalizedString Language="uk">Нова дата закінчення</LocalizedString>
					<LocalizedString Language="ru">Новая дата окончания</LocalizedString>
					<LocalizedString Language="lv">Jauns beigu datums</LocalizedString>
				</Name>
			</Field>
		</Section>
		<Section Alias="Comments" Type="coll" ID="9F3D8474-49A3-43DC-9D2B-59E82CC8F267">
			<Name>
				<LocalizedString Language="en">Comments</LocalizedString>
				<LocalizedString Language="uk">Коментарі</LocalizedString>
				<LocalizedString Language="ru">Комментарии</LocalizedString>
				<LocalizedString Language="lv">Komentāri</LocalizedString>
			</Name>
			<Field Alias="CreationDate" ID="361142F9-AFB2-41E4-B46C-5686ECA60824" Type="datetime" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comment date</LocalizedString>
					<LocalizedString Language="uk">Дата коментаря</LocalizedString>
					<LocalizedString Language="ru">Дата комментария</LocalizedString>
					<LocalizedString Language="lv">Komentāra datums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CreatedBy" ID="A76135BA-77C5-4E51-9D53-4245B3E90C0C" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Author</LocalizedString>
					<LocalizedString Language="uk">Автор</LocalizedString>
					<LocalizedString Language="ru">Автор</LocalizedString>
					<LocalizedString Language="lv">Izveidojis</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="">LastName</RefField>
					<RefField Alias="">FirstName</RefField>
					<RefField Alias="">MiddleName</RefField>
					<RefField Alias="">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="Comment" ID="F6933442-F6BE-40F6-8829-C4FB3FA7D3FA" Type="unistring" Max="2048" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comment</LocalizedString>
					<LocalizedString Language="uk">Коментар</LocalizedString>
					<LocalizedString Language="ru">Комментарий</LocalizedString>
					<LocalizedString Language="lv">Komentārs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsReport" ID="4B8005F6-5FC5-419E-A0C0-61E93279E9AF" Type="bool" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Report</LocalizedString>
					<LocalizedString Language="uk">Звіт</LocalizedString>
					<LocalizedString Language="ru">Отчет</LocalizedString>
					<LocalizedString Language="lv">Atskaite</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsNew" ID="C9B2B38A-9E3A-41E6-B3AF-AB1D62283CA2" Type="bool" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">New comment</LocalizedString>
					<LocalizedString Language="ru">Новый комментарий</LocalizedString>
					<LocalizedString Language="lv">Jauns</LocalizedString>
				</Name>
			</Field>
			<SortBy>
				<Field Descending="true">CreationDate</Field>
			</SortBy>
		</Section>
		<Section Alias="References" Type="coll" ID="546EF8D3-FEA3-481D-9453-D134C039F653">
			<Name>
				<LocalizedString Language="en">References</LocalizedString>
				<LocalizedString Language="uk">Посилання</LocalizedString>
				<LocalizedString Language="ru">Ссылки</LocalizedString>
				<LocalizedString Language="lv">Atsauces</LocalizedString>
			</Name>
			<Field Alias="RefType" ID="8E7D43D0-2369-4012-847F-BEB7C5A56DB8" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference type</LocalizedString>
					<LocalizedString Language="uk">Тип посилання</LocalizedString>
					<LocalizedString Language="ru">Тип ссылки</LocalizedString>
					<LocalizedString Language="lv">Atsauces tips</LocalizedString>
				</Name>
				<Enum Alias="File" Value="0">
					<Name>
						<LocalizedString Language="en">DV file card</LocalizedString>
						<LocalizedString Language="uk">Картка файлу DV</LocalizedString>
						<LocalizedString Language="ru">Карточка файла DV</LocalizedString>
						<LocalizedString Language="lv">DV kartiņas fails</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DVDocument" Value="1">
					<Name>
						<LocalizedString Language="en">DV card</LocalizedString>
						<LocalizedString Language="uk">Карточка DV</LocalizedString>
						<LocalizedString Language="ru">Карточка DV</LocalizedString>
						<LocalizedString Language="lv">DV dokuments</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DVFolder" Value="2">
					<Name>
						<LocalizedString Language="en">DV folder</LocalizedString>
						<LocalizedString Language="uk">Папка DV</LocalizedString>
						<LocalizedString Language="ru">Папка DV</LocalizedString>
						<LocalizedString Language="lv">DV mape</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="URL" Value="3">
					<Name>
						<LocalizedString Language="en">Reference</LocalizedString>
						<LocalizedString Language="uk">Посилання</LocalizedString>
						<LocalizedString Language="ru">Ссылка</LocalizedString>
						<LocalizedString Language="lv">Saite</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Reference" Value="4">
					<Name>
						<LocalizedString Language="en">Routed</LocalizedString>
						<LocalizedString Language="uk">Той, що маршрутизується</LocalizedString>
						<LocalizedString Language="ru">Маршрутизируемый</LocalizedString>
						<LocalizedString Language="lv">Atsauce</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="RefIDPID" ID="8A1FC9FD-00C5-43CF-BB43-735BC24CE2B0" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр посилання</LocalizedString>
					<LocalizedString Language="ru">Параметр ссылки</LocalizedString>
					<LocalizedString Language="lv">Atsauces parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ReadOnly" ID="E0E56B0C-8FD6-403E-B9DD-C9095492303B" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Read only</LocalizedString>
					<LocalizedString Language="uk">Тільки читання</LocalizedString>
					<LocalizedString Language="ru">Только чтение</LocalizedString>
					<LocalizedString Language="lv">Tikai lasīt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comment" ID="6D7A4B9B-B0C7-446D-A523-D20039DCFF5A" Type="unistring" Max="2048" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comment</LocalizedString>
					<LocalizedString Language="uk">Коментар</LocalizedString>
					<LocalizedString Language="ru">Комментарий</LocalizedString>
					<LocalizedString Language="lv">Komentārs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CommentPID" ID="375635D4-9524-49EE-B066-19DBB79B1AB5" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comment parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр коментаря</LocalizedString>
					<LocalizedString Language="ru">Параметр комментария</LocalizedString>
					<LocalizedString Language="lv">Komentāra parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Rights" ID="5240AA1D-BE0A-42AC-A5CF-630AA49E94F4" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Rights</LocalizedString>
					<LocalizedString Language="uk">Права доступу</LocalizedString>
					<LocalizedString Language="ru">Права доступа</LocalizedString>
					<LocalizedString Language="lv">Tiesības</LocalizedString>
				</Name>
				<Enum Alias="None" Value="0">
					<Name>
						<LocalizedString Language="en">Do not set</LocalizedString>
						<LocalizedString Language="uk">Не встановлювати</LocalizedString>
						<LocalizedString Language="ru">Не устанавливать</LocalizedString>
						<LocalizedString Language="lv">Nekas</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Read" Value="1">
					<Name>
						<LocalizedString Language="en">Read</LocalizedString>
						<LocalizedString Language="uk">Читання</LocalizedString>
						<LocalizedString Language="ru">Чтение</LocalizedString>
						<LocalizedString Language="lv">Lasīt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Change" Value="2">
					<Name>
						<LocalizedString Language="en">Modification</LocalizedString>
						<LocalizedString Language="uk">Редагування</LocalizedString>
						<LocalizedString Language="ru">Изменение</LocalizedString>
						<LocalizedString Language="lv">Mainīt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Full" Value="3">
					<Name>
						<LocalizedString Language="en">Full access</LocalizedString>
						<LocalizedString Language="uk">Повний доступ</LocalizedString>
						<LocalizedString Language="ru">Полный доступ</LocalizedString>
						<LocalizedString Language="lv">Pilns</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="ModeID" ID="C0665D67-2C70-4824-8FD8-5A08066F84C4" Type="uniqueid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Opening mode</LocalizedString>
					<LocalizedString Language="uk">Режим відкриття</LocalizedString>
					<LocalizedString Language="ru">Режим открытия</LocalizedString>
					<LocalizedString Language="lv">Režīma ID</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CommentRequired" ID="71152F35-C556-48D1-8CF6-589940E2B987" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comment required</LocalizedString>
					<LocalizedString Language="uk">Необхідний коментар</LocalizedString>
					<LocalizedString Language="ru">Необходим комментарий</LocalizedString>
					<LocalizedString Language="lv">Nepieciešams komentārs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="OpenImmediately" ID="0524C840-1429-4DFD-A2E4-D01C5B11E7A2" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Open by task shortcut</LocalizedString>
					<LocalizedString Language="ru">Открывать по ярлыку задания</LocalizedString>
					<LocalizedString Language="lv">Tūlīt atvērt</LocalizedString>
				</Name>
			</Field>
		</Section>
		<Section Alias="CompletionParams" Type="tree" ID="01AE4B60-5174-4304-B7D6-3F5ACAE357E1">
			<Name>
				<LocalizedString Language="en">Completion parameters</LocalizedString>
				<LocalizedString Language="uk">Параметри закінчення</LocalizedString>
				<LocalizedString Language="ru">Параметры завершения</LocalizedString>
				<LocalizedString Language="lv">Izpildes parametri</LocalizedString>
			</Name>
			<Field Alias="SelectionName" ID="00343C10-C054-459D-A341-5FE6062FED48" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Selection name</LocalizedString>
					<LocalizedString Language="uk">Назва вибору</LocalizedString>
					<LocalizedString Language="ru">Название выбора</LocalizedString>
					<LocalizedString Language="lv">Sadaļas nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SelectionNamePID" ID="B6590C0E-2FCA-4D45-912B-58A9F11ADCB8" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Selection name parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр імені вибору</LocalizedString>
					<LocalizedString Language="ru">Параметр имени выбора</LocalizedString>
					<LocalizedString Language="lv">Sadaļas nosaukuma parametri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ParamType" ID="57F0B155-CB03-4CFF-A566-9B99F27BFE14" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Parameter type</LocalizedString>
					<LocalizedString Language="uk">Тип параметру</LocalizedString>
					<LocalizedString Language="ru">Тип параметра</LocalizedString>
					<LocalizedString Language="lv">Parametru tips</LocalizedString>
				</Name>
				<Enum Alias="String" Value="0">
					<Name>
						<LocalizedString Language="en">String</LocalizedString>
						<LocalizedString Language="uk">Рядок</LocalizedString>
						<LocalizedString Language="ru">Строка</LocalizedString>
						<LocalizedString Language="lv">Virkne</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Integer" Value="1">
					<Name>
						<LocalizedString Language="en">Integer</LocalizedString>
						<LocalizedString Language="uk">Ціле число</LocalizedString>
						<LocalizedString Language="ru">Целое число</LocalizedString>
						<LocalizedString Language="lv">Vesels skaitlis</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Double" Value="2">
					<Name>
						<LocalizedString Language="en">Double</LocalizedString>
						<LocalizedString Language="uk">Дробове число</LocalizedString>
						<LocalizedString Language="ru">Дробное число</LocalizedString>
						<LocalizedString Language="lv">Decimāls</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Date" Value="3">
					<Name>
						<LocalizedString Language="en">Enumeration value</LocalizedString>
						<LocalizedString Language="uk">Значення перерахунку</LocalizedString>
						<LocalizedString Language="ru">Значение перечисления</LocalizedString>
						<LocalizedString Language="lv">Datums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Enum" Value="4">
					<Name>
						<LocalizedString Language="en">Enum</LocalizedString>
						<LocalizedString Language="uk">Перелік</LocalizedString>
						<LocalizedString Language="ru">Перечисление</LocalizedString>
						<LocalizedString Language="lv">Izvēle</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Boolean" Value="5">
					<Name>
						<LocalizedString Language="en">Yes/No</LocalizedString>
						<LocalizedString Language="uk">Так / Ні</LocalizedString>
						<LocalizedString Language="ru">Да / нет</LocalizedString>
						<LocalizedString Language="lv">Loģisks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Employee" Value="6">
					<Name>
						<LocalizedString Language="en">Employee</LocalizedString>
						<LocalizedString Language="uk">Співробітник</LocalizedString>
						<LocalizedString Language="ru">Сотрудник</LocalizedString>
						<LocalizedString Language="lv">Darbinieks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Department" Value="7">
					<Name>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="uk">Відділ</LocalizedString>
						<LocalizedString Language="ru">Отдел</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Group" Value="8">
					<Name>
						<LocalizedString Language="en">Group</LocalizedString>
						<LocalizedString Language="uk">Група</LocalizedString>
						<LocalizedString Language="ru">Группа</LocalizedString>
						<LocalizedString Language="lv">Grupa</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Role" Value="9">
					<Name>
						<LocalizedString Language="en">Role</LocalizedString>
						<LocalizedString Language="uk">Роль</LocalizedString>
						<LocalizedString Language="ru">Роль</LocalizedString>
						<LocalizedString Language="lv">Loma</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Document" Value="10">
					<Name>
						<LocalizedString Language="en">Document</LocalizedString>
						<LocalizedString Language="uk">Документ</LocalizedString>
						<LocalizedString Language="ru">Документ</LocalizedString>
						<LocalizedString Language="lv">Dokuments</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Folder" Value="11">
					<Name>
						<LocalizedString Language="en">Folder</LocalizedString>
						<LocalizedString Language="uk">Папка</LocalizedString>
						<LocalizedString Language="ru">Папка</LocalizedString>
						<LocalizedString Language="lv">Mape</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Address" Value="12">
					<Name>
						<LocalizedString Language="en">Mail address</LocalizedString>
						<LocalizedString Language="uk">Поштова адреса</LocalizedString>
						<LocalizedString Language="ru">Почтовый адрес</LocalizedString>
						<LocalizedString Language="lv">Pasta adrese</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Attachment" Value="13">
					<Name>
						<LocalizedString Language="en">Mail attachment</LocalizedString>
						<LocalizedString Language="uk">Поштове вкладення</LocalizedString>
						<LocalizedString Language="ru">Почтовое вложение</LocalizedString>
						<LocalizedString Language="lv">Pasta pielikums</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DVRow" Value="14">
					<Name>
						<LocalizedString Language="en">DV section row</LocalizedString>
						<LocalizedString Language="uk">Рядок секції</LocalizedString>
						<LocalizedString Language="ru">Строка секции DV</LocalizedString>
						<LocalizedString Language="lv">DocsVision sadaļas rinda</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="GateVariable" Value="15">
					<Name>
						<LocalizedString Language="en">Gateway variable</LocalizedString>
						<LocalizedString Language="ru">Переменная шлюза</LocalizedString>
						<LocalizedString Language="lv">Vārtejas mainīgais</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="ParamPID" ID="4B184D41-0C04-4FDC-B661-95666AC853F1" Type="refid" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Parameter variable</LocalizedString>
					<LocalizedString Language="uk">Змінна параметру</LocalizedString>
					<LocalizedString Language="ru">Переменная параметра</LocalizedString>
					<LocalizedString Language="lv">Parametru mainīgais</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SelectedValue" ID="B8B5F7C2-42AC-498E-9801-C39695398F25" Type="unistring" Max="2000" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Selected value</LocalizedString>
					<LocalizedString Language="uk">Вибране значення</LocalizedString>
					<LocalizedString Language="ru">Выбранное значение</LocalizedString>
					<LocalizedString Language="lv">Izvēlēties vērtību</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsCollection" ID="5C0A846E-3C9E-4E57-B6FE-FAF79C25C17B" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Collection</LocalizedString>
					<LocalizedString Language="uk">Колекція</LocalizedString>
					<LocalizedString Language="ru">Коллекция</LocalizedString>
					<LocalizedString Language="lv">Kolekcija</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Required" ID="6F3126F0-8556-48E7-8DF9-771FDE2A5742" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Required</LocalizedString>
					<LocalizedString Language="uk">Обов''язковий</LocalizedString>
					<LocalizedString Language="ru">Обязательный</LocalizedString>
					<LocalizedString Language="lv">Nepieciešams</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ReadOnly" ID="693BB917-AD03-4E69-8714-7D560B72EF23" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Read-only</LocalizedString>
					<LocalizedString Language="uk">Тільки для читаня</LocalizedString>
					<LocalizedString Language="ru">Только для чтения</LocalizedString>
					<LocalizedString Language="lv">Tikai lasīt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="LinkValueID" ID="6F80D657-C1AB-49DF-9C42-991EF3315C18" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Relation value</LocalizedString>
					<LocalizedString Language="uk">Значення посилання</LocalizedString>
					<LocalizedString Language="ru">Значение связи</LocalizedString>
					<LocalizedString Language="lv">Saites vērtība</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Order" ID="293E6A2F-E28F-447D-B038-C771AA46A8B7" Type="int" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Order</LocalizedString>
					<LocalizedString Language="uk">Порядок</LocalizedString>
					<LocalizedString Language="ru">Порядок</LocalizedString>
					<LocalizedString Language="lv">Kārtība</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Tag" ID="B81F9C12-3C67-4F6B-9BFF-1FD6626F34BD" Type="string" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Tag</LocalizedString>
					<LocalizedString Language="uk">Тег</LocalizedString>
					<LocalizedString Language="ru">Тэг</LocalizedString>
					<LocalizedString Language="lv">Tags</LocalizedString>
				</Name>
			</Field>
			<Field Alias="NoValueMessage" ID="8C70A267-4607-4620-B974-BDF0E89C3CC0" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">No value message</LocalizedString>
					<LocalizedString Language="ru">Сообщение при незаданном значении</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Ziņa bez vērtības</LocalizedString>
				</Name>
			</Field>
			<Field Alias="NoValueMessagePID" ID="B1E57791-087E-42DC-A3A3-5FCB6741533A" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Message parameter</LocalizedString>
					<LocalizedString Language="ru">Переменная сообщения</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Ziņas parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="GateID" ID="0013C309-8F76-4FEC-8FD6-6C96BD6CD264" Type="refid" RefType="C1887469-3D28-4EC6-84BD-7CAEA7607F0C" RefSection="42B598D5-B3F4-4349-B0E8-874EDB737ABE" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Gateway</LocalizedString>
					<LocalizedString Language="ru">Шлюз</LocalizedString>
					<LocalizedString Language="lv">Vārteja</LocalizedString>
				</Name>
			</Field>
			<Field Alias="VarTypeID" ID="56C72C9A-E43E-46DE-8A19-F0DDF75D8544" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Variable type in gateway</LocalizedString>
					<LocalizedString Language="ru">Тип переменной в шлюзе</LocalizedString>
					<LocalizedString Language="lv">Mainīgā tips vārtejā</LocalizedString>
				</Name>
			</Field>
			<Section Alias="CompletionEnumValues" Type="coll" ID="733BFC64-32D2-440B-B8DA-0B82D0674BF0">
				<Name>
					<LocalizedString Language="en">Completion parameter enum values</LocalizedString>
					<LocalizedString Language="uk">Значення переліку</LocalizedString>
					<LocalizedString Language="ru">Значения перечисления параметра завершения</LocalizedString>
					<LocalizedString Language="lv">Izvēles vērtības</LocalizedString>
				</Name>
				<Field Alias="ValueID" ID="288483E1-DD4A-425C-8C43-03D2E5C880D8" Type="int" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Value ID</LocalizedString>
						<LocalizedString Language="uk">ID значення</LocalizedString>
						<LocalizedString Language="ru">ID значения</LocalizedString>
						<LocalizedString Language="lv">Vērtības ID</LocalizedString>
					</Name>
				</Field>
				<Field Alias="ValueName" ID="E12AB3EB-F7EF-4873-85BC-C3E6C97140C3" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Value name</LocalizedString>
						<LocalizedString Language="uk">Назва значення</LocalizedString>
						<LocalizedString Language="ru">Название значения</LocalizedString>
						<LocalizedString Language="lv">Vērtības nosaukums</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>ValueID</Field>
				</SortBy>
			</Section>
			<Section Alias="CompletionSelectedValues" Type="coll" ID="9DF1BA33-7324-4EA4-8EB9-390ED7136388">
				<Name>
					<LocalizedString Language="en">Completion parameter selected values</LocalizedString>
					<LocalizedString Language="uk">Вибране значення</LocalizedString>
					<LocalizedString Language="ru">Выбранные значения параметра завершения</LocalizedString>
					<LocalizedString Language="lv">Izvēlētās vērtības</LocalizedString>
				</Name>
				<Field Alias="SelectedValue" ID="E32819BB-0C3E-453C-A6C5-B0B1431F9AF3" Type="unistring" Max="512" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Selected value</LocalizedString>
						<LocalizedString Language="uk">Вибране значення</LocalizedString>
						<LocalizedString Language="ru">Выбранное значение</LocalizedString>
						<LocalizedString Language="lv">Izvēlēties vērtību</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Order" ID="28530261-A9B7-492D-8715-CC1EA88A434A" Type="int" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Order</LocalizedString>
						<LocalizedString Language="ru">Порядок</LocalizedString>
						<LocalizedString Language="uk">Порядок</LocalizedString>
						<LocalizedString Language="lv">Kārtība</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>Order</Field>
				</SortBy>
			</Section>
			<SortBy>
				<Field>Order</Field>
			</SortBy>
		</Section>
		<Section Alias="ChildrenTasks" Type="coll" ID="DE2BDAB8-ED9B-420F-A1E5-C845D5F801E7">
			<Name>
				<LocalizedString Language="en">Child tasks</LocalizedString>
				<LocalizedString Language="uk">Підлеглі завдання</LocalizedString>
				<LocalizedString Language="ru">Подчиненные задания</LocalizedString>
				<LocalizedString Language="lv">Apakšvienību uzdevumi</LocalizedString>
			</Name>
			<Field Alias="TaskID" ID="5653242A-8669-46D6-85D7-B019290E632F" Type="refcardid" RefType="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" RefSection="7213A125-2CA4-40EE-A671-B52850F45E7D" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Hard" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Task</LocalizedString>
					<LocalizedString Language="uk">Задання</LocalizedString>
					<LocalizedString Language="ru">Задание</LocalizedString>
					<LocalizedString Language="lv">Uzdevums</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="" SysField="true">Description</RefField>
				</RefFields>
			</Field>
			<Field Alias="ChildState" ID="C29983F8-81C6-4B28-9B20-14650778EE3F" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Child task state</LocalizedString>
					<LocalizedString Language="uk">Стан підлеглого завдання</LocalizedString>
					<LocalizedString Language="ru">Состояние подчиненного задания</LocalizedString>
					<LocalizedString Language="lv">Apakš uzdevuma stāvoklis</LocalizedString>
				</Name>
				<Enum Alias="Inactive" Value="0">
					<Name>
						<LocalizedString Language="en">Inactive</LocalizedString>
						<LocalizedString Language="uk">Не активно</LocalizedString>
						<LocalizedString Language="ru">Не активно</LocalizedString>
						<LocalizedString Language="lv">Neaktīvs</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToPerform" Value="1">
					<Name>
						<LocalizedString Language="en">To perform</LocalizedString>
						<LocalizedString Language="uk">До виконання</LocalizedString>
						<LocalizedString Language="ru">К исполнению</LocalizedString>
						<LocalizedString Language="lv">Izpildīt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="InProcess" Value="2">
					<Name>
						<LocalizedString Language="en">In process</LocalizedString>
						<LocalizedString Language="uk">Виконується</LocalizedString>
						<LocalizedString Language="ru">Исполняется</LocalizedString>
						<LocalizedString Language="lv">Procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Completed" Value="3">
					<Name>
						<LocalizedString Language="en">Completed</LocalizedString>
						<LocalizedString Language="uk">Закінчено</LocalizedString>
						<LocalizedString Language="ru">Завершено</LocalizedString>
						<LocalizedString Language="lv">Izpildīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Error" Value="4">
					<Name>
						<LocalizedString Language="en">Error</LocalizedString>
						<LocalizedString Language="uk">Помилка</LocalizedString>
						<LocalizedString Language="ru">Ошибка</LocalizedString>
						<LocalizedString Language="lv">Kļūda</LocalizedString>
					</Name>
				</Enum>
			</Field>
		</Section>
		<Section Alias="CardReferences2" Type="coll" ID="ECA843EF-2810-4795-A81A-B047F76250EC">
			<Name>
				<LocalizedString Language="en">Card references</LocalizedString>
				<LocalizedString Language="uk">Посилання в картці</LocalizedString>
				<LocalizedString Language="ru">Ссылки в карточке</LocalizedString>
				<LocalizedString Language="lv">Kartiņas atsauces</LocalizedString>
			</Name>
			<Field Alias="RefType" ID="E75FCDEC-229D-401D-87BE-20073064BAA8" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference type</LocalizedString>
					<LocalizedString Language="uk">Тип посилання</LocalizedString>
					<LocalizedString Language="ru">Тип ссылки</LocalizedString>
					<LocalizedString Language="lv">Atsauces tips</LocalizedString>
				</Name>
				<Enum Alias="File" Value="0">
					<Name>
						<LocalizedString Language="en">DV file card</LocalizedString>
						<LocalizedString Language="uk">Картка файлу DV</LocalizedString>
						<LocalizedString Language="ru">Карточка файла DV</LocalizedString>
						<LocalizedString Language="lv">DV kartiņas fails</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DVDocument" Value="1">
					<Name>
						<LocalizedString Language="en">DV card</LocalizedString>
						<LocalizedString Language="uk">Картка DV</LocalizedString>
						<LocalizedString Language="ru">Карточка DV</LocalizedString>
						<LocalizedString Language="lv">DV dokuments</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DVFolder" Value="2">
					<Name>
						<LocalizedString Language="en">DV folder</LocalizedString>
						<LocalizedString Language="uk">Папка DV</LocalizedString>
						<LocalizedString Language="ru">Папка DV</LocalizedString>
						<LocalizedString Language="lv">DV mape</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="URL" Value="3">
					<Name>
						<LocalizedString Language="en">Reference</LocalizedString>
						<LocalizedString Language="uk">Посилання</LocalizedString>
						<LocalizedString Language="ru">Ссылка</LocalizedString>
						<LocalizedString Language="lv">Saite</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Reference" Value="4">
					<Name>
						<LocalizedString Language="en">Routed</LocalizedString>
						<LocalizedString Language="uk">Той, що маршрутизується</LocalizedString>
						<LocalizedString Language="ru">Маршрутизируемый</LocalizedString>
						<LocalizedString Language="lv">Atsauce</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="RefID" ID="888560A0-6E00-431E-A849-CDDA1728A478" Type="uniqueid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference</LocalizedString>
					<LocalizedString Language="uk">Посилання</LocalizedString>
					<LocalizedString Language="ru">Ссылка</LocalizedString>
					<LocalizedString Language="lv">Atsauce</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefURL" ID="635609E6-F50D-4126-95D6-55BC86E9C5B7" Type="unistring" Max="4000" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference URL</LocalizedString>
					<LocalizedString Language="uk">Адреса посилання</LocalizedString>
					<LocalizedString Language="ru">Адрес ссылки</LocalizedString>
					<LocalizedString Language="lv">Atsauces saite</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ReadOnly" ID="224F3B36-7373-4A83-B857-2F0D9EB3755C" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Read only</LocalizedString>
					<LocalizedString Language="uk">Тільки читання</LocalizedString>
					<LocalizedString Language="ru">Только чтение</LocalizedString>
					<LocalizedString Language="lv">Tikai lasīt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comment" ID="35BC64C8-37A7-4698-AA6F-58B4E9B6607D" Type="unistring" Max="2048" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comment</LocalizedString>
					<LocalizedString Language="uk">Коментар</LocalizedString>
					<LocalizedString Language="ru">Комментарий</LocalizedString>
					<LocalizedString Language="lv">Komentārs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefRowID" ID="A03EAFA6-58D5-412C-BF62-BFDCA031A0E3" Type="refid" RefType="F7E2090A-EEC3-4B51-B1BB-567D4A0117D6" RefSection="546EF8D3-FEA3-481D-9453-D134C039F653" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference row</LocalizedString>
					<LocalizedString Language="uk">Рядок посилання</LocalizedString>
					<LocalizedString Language="ru">Строка ссылки</LocalizedString>
					<LocalizedString Language="lv">Atsauces rinda</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ModeID" ID="E4C9E83F-F1C6-4620-B680-A4FE68D24B3F" Type="uniqueid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Opening mode</LocalizedString>
					<LocalizedString Language="uk">Режим відкриття</LocalizedString>
					<LocalizedString Language="ru">Режим открытия</LocalizedString>
					<LocalizedString Language="lv">Režīma ID</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Rights" ID="526E8B84-8A0F-4463-8B9E-55AFFCECD144" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Rights</LocalizedString>
					<LocalizedString Language="uk">Права доступа</LocalizedString>
					<LocalizedString Language="ru">Права доступа</LocalizedString>
					<LocalizedString Language="lv">Tiesības</LocalizedString>
				</Name>
				<Enum Alias="None" Value="0">
					<Name>
						<LocalizedString Language="en">Do not set</LocalizedString>
						<LocalizedString Language="uk">Не встановлювати</LocalizedString>
						<LocalizedString Language="ru">Не устанавливать</LocalizedString>
						<LocalizedString Language="lv">Nekas</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Read" Value="1">
					<Name>
						<LocalizedString Language="en">Read</LocalizedString>
						<LocalizedString Language="uk">Читання</LocalizedString>
						<LocalizedString Language="ru">Чтение</LocalizedString>
						<LocalizedString Language="lv">Lasīt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Change" Value="2">
					<Name>
						<LocalizedString Language="en">Modification</LocalizedString>
						<LocalizedString Language="uk">Зміна</LocalizedString>
						<LocalizedString Language="ru">Изменение</LocalizedString>
						<LocalizedString Language="lv">Mainīt</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Full" Value="3">
					<Name>
						<LocalizedString Language="en">Full access</LocalizedString>
						<LocalizedString Language="uk">Повний доступ</LocalizedString>
						<LocalizedString Language="ru">Полный доступ</LocalizedString>
						<LocalizedString Language="lv">Pilns</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="CommentRequired" ID="DF5B53A5-7146-4172-A4D6-AFAA3C8D479D" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comment required</LocalizedString>
					<LocalizedString Language="uk">Необхідний коментар</LocalizedString>
					<LocalizedString Language="ru">Необходим комментарий</LocalizedString>
					<LocalizedString Language="lv">Nepieciešams komentārs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="OpenImmediately" ID="0B434577-86B0-409E-9E57-D51F8E9DE5D6" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Open by task shortcut</LocalizedString>
					<LocalizedString Language="ru">Открывать по ярлыку задания</LocalizedString>
					<LocalizedString Language="lv">Tūlīt atvērt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefCardID" ID="9D25AC06-6A44-4D83-B9D1-7EE7AB6030FB" Type="refcardid" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Weak" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Card reference</LocalizedString>
					<LocalizedString Language="ru">Ссылка на карточку</LocalizedString>
					<LocalizedString Language="lv">Kartiņas atsauces</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefFolderID" ID="3D2EC801-D94C-479D-A326-2393B529711F" Type="refid" RefType="DA86FABF-4DD7-4A86-B6FF-C58C24D12DE2" RefSection="FE27631D-EEEA-4E2E-A04C-D4351282FB55" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Folder reference</LocalizedString>
					<LocalizedString Language="ru">Ссылка на папку</LocalizedString>
					<LocalizedString Language="lv">Atsauce uz mapi</LocalizedString>
				</Name>
			</Field>
		</Section>
		<Section Alias="VariablesHistory" Type="coll" ID="E64F0E9B-7A53-460E-972B-B16AB601240E">
			<Name>
				<LocalizedString Language="en">Variables history</LocalizedString>
				<LocalizedString Language="uk">Історія значень змінних</LocalizedString>
				<LocalizedString Language="ru">История значений переменных</LocalizedString>
				<LocalizedString Language="lv">Mainīgo vēsture</LocalizedString>
			</Name>
			<Field Alias="VarID" ID="DEBFB73B-36EE-4C0D-BBB5-7340B3AFB51C" Type="refid" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Variable</LocalizedString>
					<LocalizedString Language="uk">Змінна</LocalizedString>
					<LocalizedString Language="ru">Переменная</LocalizedString>
					<LocalizedString Language="lv">Mainīgais</LocalizedString>
				</Name>
			</Field>
			<Field Alias="VarName" ID="CE4BF476-15D7-42D9-AF07-9091503BE9BB" Type="unistring" Max="128" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Variable name</LocalizedString>
					<LocalizedString Language="uk">Ім''я змінної</LocalizedString>
					<LocalizedString Language="ru">Имя переменной</LocalizedString>
					<LocalizedString Language="lv">Mainīgā nosaukums</LocalizedString>
				</Name>
			</Field>
			<Section Alias="Values" Type="coll" ID="B72F53F0-2612-45E1-802E-5B51BA415B72">
				<Name>
					<LocalizedString Language="en">Variable history values</LocalizedString>
					<LocalizedString Language="uk">Значення</LocalizedString>
					<LocalizedString Language="ru">Значения истории переменной</LocalizedString>
					<LocalizedString Language="lv">Vērtības ID</LocalizedString>
				</Name>
				<Field Alias="ChangeDate" ID="63BEB60C-9732-4B5F-A7E2-588F173FF349" Type="datetime" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Change date</LocalizedString>
						<LocalizedString Language="uk">Дата редагування</LocalizedString>
						<LocalizedString Language="ru">Дата изменения</LocalizedString>
						<LocalizedString Language="lv">Mainīt datumu</LocalizedString>
					</Name>
				</Field>
				<Field Alias="ChangedBy" ID="67DB6D58-9D55-4778-8D41-DA92C475261C" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Employee</LocalizedString>
						<LocalizedString Language="uk">Співробітник</LocalizedString>
						<LocalizedString Language="ru">Сотрудник</LocalizedString>
						<LocalizedString Language="lv">Mainījis</LocalizedString>
					</Name>
				</Field>
				<Field Alias="TaskName" ID="9E520265-1A06-4B81-B2DB-08CA7293DF90" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Task name</LocalizedString>
						<LocalizedString Language="uk">Ім''я завдання</LocalizedString>
						<LocalizedString Language="ru">Имя задания</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma nosaukums</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Value" ID="53A82CAF-E6C2-48C7-9648-D6824223BE65" Type="unistring" Max="512" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Value</LocalizedString>
						<LocalizedString Language="uk">Значення</LocalizedString>
						<LocalizedString Language="ru">Значение</LocalizedString>
						<LocalizedString Language="lv">Vērtība</LocalizedString>
					</Name>
				</Field>
			</Section>
		</Section>
		<Section Alias="Employees" Type="coll" ID="D79E48AE-18EE-4BC8-9DF0-8129C4F8840F">
			<Name>
				<LocalizedString Language="en">Employees</LocalizedString>
				<LocalizedString Language="ru">Сотрудники</LocalizedString>
				<LocalizedString Language="uk">Співробітники</LocalizedString>
				<LocalizedString Language="lv">Darbinieki</LocalizedString>
			</Name>
			<Field Alias="Order" ID="8CD3ED8C-6220-476A-A016-553ECA31E53C" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Serial number</LocalizedString>
					<LocalizedString Language="ru">Порядковый номер</LocalizedString>
					<LocalizedString Language="uk">Порядковий номер</LocalizedString>
					<LocalizedString Language="lv">Kārtība</LocalizedString>
				</Name>
			</Field>
			<Field Alias="EmployeeID" ID="CDDA0C98-D37E-42EE-9CB0-902EEC1E927F" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Employee</LocalizedString>
					<LocalizedString Language="ru">Сотрудник</LocalizedString>
					<LocalizedString Language="uk">Співробітник</LocalizedString>
					<LocalizedString Language="lv">Darbinieks</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="">LastName</RefField>
					<RefField Alias="">FirstName</RefField>
					<RefField Alias="">MiddleName</RefField>
					<RefField Alias="">DisplayString</RefField>
				</RefFields>
			</Field>
			<Field Alias="Type" ID="2EF8F68B-6516-46EF-8C8F-88BE7BC2A437" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Type</LocalizedString>
					<LocalizedString Language="ru">Тип</LocalizedString>
					<LocalizedString Language="uk">Тип</LocalizedString>
					<LocalizedString Language="lv">Tips</LocalizedString>
				</Name>
				<Enum Alias="SignedBy" Value="2">
					<Name>
						<LocalizedString Language="en">Signed</LocalizedString>
						<LocalizedString Language="ru">Подписано</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Parakstījis</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="IsResponsible" ID="55A43D83-A421-4C95-9668-A6CD7019E1E4" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Responsible</LocalizedString>
					<LocalizedString Language="ru">Ответственный</LocalizedString>
					<LocalizedString Language="uk">Відповідальна особа</LocalizedString>
					<LocalizedString Language="lv">Atbildīgs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DepartmentID" ID="1057E570-42A7-4F9E-8DED-3C61E5611DEA" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="7473F07F-11ED-4762-9F1E-7FF10808DDD1" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Department</LocalizedString>
					<LocalizedString Language="uk">Департамент</LocalizedString>
					<LocalizedString Language="ru">Подразделение</LocalizedString>
					<LocalizedString Language="lv">Departaments</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="DepartmentName">Name</RefField>
					<RefField Alias="DepartmentFullName">FullName</RefField>
				</RefFields>
			</Field>
			<Field Alias="PositionID" ID="F8D9DC2B-28EC-49E5-A2C0-BE74B565AB9C" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="CFDFE60A-21A8-4010-84E9-9D2DF348508C" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Position</LocalizedString>
					<LocalizedString Language="uk">Посада</LocalizedString>
					<LocalizedString Language="ru">Должность</LocalizedString>
					<LocalizedString Language="lv">Amats</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="PositionName">Name</RefField>
				</RefFields>
			</Field>
		</Section>
		<Section Alias="ChildrenResolutions" Type="coll" ID="BBAA81AA-999D-461B-9B74-2A60A0965555">
			<Name>
				<LocalizedString Language="en">Child resolutions</LocalizedString>
				<LocalizedString Language="ru">Подчиненные задачи</LocalizedString>
				<LocalizedString Language="lv">Apakšrezolūcijas</LocalizedString>
			</Name>
			<Field Alias="ResolutionID" ID="256486A0-EF51-492C-B7C0-369A1D952C6D" Type="refcardid" RefType="0056522E-FC72-48D2-8EBB-A60B838E36C9" RefSection="77C70C13-881A-4534-9704-C4F6B9ACDB0A" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Hard" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Resolution</LocalizedString>
					<LocalizedString Language="ru">Задача</LocalizedString>
					<LocalizedString Language="lv">Rezolūcija</LocalizedString>
				</Name>
				<RefFields />
			</Field>
			<Field Alias="ChildState" ID="3F400049-8C2C-40C4-A033-FBADA76F49B3" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Child task state</LocalizedString>
					<LocalizedString Language="uk">Стан підлеглого завдання</LocalizedString>
					<LocalizedString Language="ru">Состояние подчиненного задания</LocalizedString>
					<LocalizedString Language="lv">Apakšuzdevuma stāvoklis</LocalizedString>
				</Name>
				<Enum Alias="Inactive" Value="0">
					<Name>
						<LocalizedString Language="en">Inactive</LocalizedString>
						<LocalizedString Language="uk">Не активно</LocalizedString>
						<LocalizedString Language="ru">Не активно</LocalizedString>
						<LocalizedString Language="lv">Neaktīvs</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToPerform" Value="1">
					<Name>
						<LocalizedString Language="en">To perform</LocalizedString>
						<LocalizedString Language="uk">До виконання</LocalizedString>
						<LocalizedString Language="ru">К исполнению</LocalizedString>
						<LocalizedString Language="lv">Izpildīšanai</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="InProcess" Value="2">
					<Name>
						<LocalizedString Language="en">In process</LocalizedString>
						<LocalizedString Language="uk">Виконується</LocalizedString>
						<LocalizedString Language="ru">Исполняется</LocalizedString>
						<LocalizedString Language="lv">Procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Completed" Value="3">
					<Name>
						<LocalizedString Language="en">Completed</LocalizedString>
						<LocalizedString Language="uk">Закінчено</LocalizedString>
						<LocalizedString Language="ru">Завершено</LocalizedString>
						<LocalizedString Language="lv">Izpildīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Error" Value="4">
					<Name>
						<LocalizedString Language="en">Error</LocalizedString>
						<LocalizedString Language="uk">Помилка</LocalizedString>
						<LocalizedString Language="ru">Ошибка</LocalizedString>
						<LocalizedString Language="lv">Kļūda</LocalizedString>
					</Name>
				</Enum>
			</Field>
		</Section>
		<Section Alias="Reports" Type="coll" ID="ABC12DC8-0ADF-4EFD-93A9-CB1E43D3387B">
			<Name>
				<LocalizedString Language="en">Reports</LocalizedString>
				<LocalizedString Language="ru">Отчеты</LocalizedString>
				<LocalizedString Language="lv">Atskaites</LocalizedString>
			</Name>
			<Field Alias="ReportID" ID="D8B237F4-E978-4DC7-A4A2-C632C665C16B" Type="refcardid" RefType="52F3DB4D-C3D4-4C03-BFF2-D8CFDC6E6CFC" RefSection="87A4DADA-C220-40CA-82A8-3373280BA440" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Hard" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Report</LocalizedString>
					<LocalizedString Language="ru">Отчет</LocalizedString>
					<LocalizedString Language="lv">Atskaite</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="">ChangeDate</RefField>
					<RefField Alias="" SysField="true">Description</RefField>
				</RefFields>
			</Field>
			<Field Alias="ChildState" ID="E3D74B55-8D33-4D42-9F41-1B17DD4CB837" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Report state</LocalizedString>
					<LocalizedString Language="ru">Состояние отчета</LocalizedString>
					<LocalizedString Language="lv">Atskaites statuss</LocalizedString>
				</Name>
				<Enum Alias="Inactive" Value="0">
					<Name>
						<LocalizedString Language="en">Inactive</LocalizedString>
						<LocalizedString Language="uk">Не активно</LocalizedString>
						<LocalizedString Language="ru">Не активно</LocalizedString>
						<LocalizedString Language="lv">Neaktīvs</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToPerform" Value="1">
					<Name>
						<LocalizedString Language="en">To perform</LocalizedString>
						<LocalizedString Language="uk">До виконання</LocalizedString>
						<LocalizedString Language="ru">К исполнению</LocalizedString>
						<LocalizedString Language="lv">Izpildīšanai</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="InProcess" Value="2">
					<Name>
						<LocalizedString Language="en">In process</LocalizedString>
						<LocalizedString Language="uk">Виконується</LocalizedString>
						<LocalizedString Language="ru">Исполняется</LocalizedString>
						<LocalizedString Language="lv">Procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Completed" Value="3">
					<Name>
						<LocalizedString Language="en">Completed</LocalizedString>
						<LocalizedString Language="uk">Закінчено</LocalizedString>
						<LocalizedString Language="ru">Завершено</LocalizedString>
						<LocalizedString Language="lv">Izpildīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Error" Value="4">
					<Name>
						<LocalizedString Language="en">Error</LocalizedString>
						<LocalizedString Language="uk">Помилка</LocalizedString>
						<LocalizedString Language="ru">Ошибка</LocalizedString>
						<LocalizedString Language="lv">Kļūda</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="ChildTaskState" ID="16D62AC2-6268-4388-BBC8-F285D9736B95" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Report task state</LocalizedString>
					<LocalizedString Language="ru">Состояние задания отчета</LocalizedString>
					<LocalizedString Language="lv">Atskaites uzdevuma statuss</LocalizedString>
				</Name>
				<Enum Alias="Inactive" Value="0">
					<Name>
						<LocalizedString Language="en">Inactive</LocalizedString>
						<LocalizedString Language="uk">Не активно</LocalizedString>
						<LocalizedString Language="ru">Не активно</LocalizedString>
						<LocalizedString Language="lv">Neaktīvs</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="ToPerform" Value="1">
					<Name>
						<LocalizedString Language="en">To perform</LocalizedString>
						<LocalizedString Language="uk">До виконання</LocalizedString>
						<LocalizedString Language="ru">К исполнению</LocalizedString>
						<LocalizedString Language="lv">Izpildei</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="InProcess" Value="2">
					<Name>
						<LocalizedString Language="en">In process</LocalizedString>
						<LocalizedString Language="uk">Виконується</LocalizedString>
						<LocalizedString Language="ru">Исполняется</LocalizedString>
						<LocalizedString Language="lv">Procesā</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Completed" Value="3">
					<Name>
						<LocalizedString Language="en">Completed</LocalizedString>
						<LocalizedString Language="uk">Закінчено</LocalizedString>
						<LocalizedString Language="ru">Завершено</LocalizedString>
						<LocalizedString Language="lv">Izpildīts</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Error" Value="4">
					<Name>
						<LocalizedString Language="en">Error</LocalizedString>
						<LocalizedString Language="uk">Помилка</LocalizedString>
						<LocalizedString Language="ru">Ошибка</LocalizedString>
						<LocalizedString Language="lv">Kļūda</LocalizedString>
					</Name>
				</Enum>
			</Field>
		</Section>
		<Section Alias="PerformerReferences" Type="coll" ID="51C02683-8D61-4F8F-98DD-80A4DA5AC4F4">
			<Name>
				<LocalizedString Language="en">Performer references</LocalizedString>
				<LocalizedString Language="ru">Ссылки исполнителя</LocalizedString>
				<LocalizedString Language="lv">Izpildītāja atsauces</LocalizedString>
			</Name>
			<Field Alias="RefType" ID="0A45FFF0-2C4C-4DE2-81B8-48092C1F16FD" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference type</LocalizedString>
					<LocalizedString Language="uk">Тип посилання</LocalizedString>
					<LocalizedString Language="ru">Тип ссылки</LocalizedString>
					<LocalizedString Language="lv">Atsauces tips</LocalizedString>
				</Name>
				<Enum Alias="File" Value="0">
					<Name>
						<LocalizedString Language="en">DV file card</LocalizedString>
						<LocalizedString Language="uk">Картка файлу DV</LocalizedString>
						<LocalizedString Language="ru">Карточка файла DV</LocalizedString>
						<LocalizedString Language="lv">DV kartiņas fails</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DVDocument" Value="1">
					<Name>
						<LocalizedString Language="en">DV card</LocalizedString>
						<LocalizedString Language="uk">Картка DV</LocalizedString>
						<LocalizedString Language="ru">Карточка DV</LocalizedString>
						<LocalizedString Language="lv">DV dokuments</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="DVFolder" Value="2">
					<Name>
						<LocalizedString Language="en">DV folder</LocalizedString>
						<LocalizedString Language="uk">Папка DV</LocalizedString>
						<LocalizedString Language="ru">Папка DV</LocalizedString>
						<LocalizedString Language="lv">DV mape</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="URL" Value="3">
					<Name>
						<LocalizedString Language="en">Reference</LocalizedString>
						<LocalizedString Language="uk">Посилання</LocalizedString>
						<LocalizedString Language="ru">Ссылка</LocalizedString>
						<LocalizedString Language="lv">Saite</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Reference" Value="4">
					<Name>
						<LocalizedString Language="en">Routed</LocalizedString>
						<LocalizedString Language="uk">Той, що маршрутизується</LocalizedString>
						<LocalizedString Language="ru">Маршрутизируемый</LocalizedString>
						<LocalizedString Language="lv">Atsauce</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="RefID" ID="7369DD32-179E-4DEA-82BA-A6AEDBFB2D22" Type="uniqueid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference</LocalizedString>
					<LocalizedString Language="uk">Посилання</LocalizedString>
					<LocalizedString Language="ru">Ссылка</LocalizedString>
					<LocalizedString Language="lv">Atcauce</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefURL" ID="6436305B-5AAA-4C54-9B18-6BAB08B89B33" Type="unistring" Max="4000" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference URL</LocalizedString>
					<LocalizedString Language="uk">Адреса посилання</LocalizedString>
					<LocalizedString Language="ru">Адрес ссылки</LocalizedString>
					<LocalizedString Language="lv">Atsauces saite</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ReadOnly" ID="A9FC6D70-DD95-45A5-8681-3CB9A01BD590" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Read only</LocalizedString>
					<LocalizedString Language="uk">Тільки читання</LocalizedString>
					<LocalizedString Language="ru">Только чтение</LocalizedString>
					<LocalizedString Language="lv">Tikai lasīt</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comment" ID="35CF2D1E-ABC8-4EA7-A906-C7C8FACD3492" Type="unistring" Max="2048" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comment</LocalizedString>
					<LocalizedString Language="uk">Коментар</LocalizedString>
					<LocalizedString Language="ru">Комментарий</LocalizedString>
					<LocalizedString Language="lv">Komentāri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ModeID" ID="A215E79E-32A0-41BB-9EB5-D4A318ADFA09" Type="uniqueid" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Opening mode</LocalizedString>
					<LocalizedString Language="uk">Режим відкриття</LocalizedString>
					<LocalizedString Language="ru">Режим открытия</LocalizedString>
					<LocalizedString Language="lv">Atvēršanas režīms</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefIDPID" ID="BB3BFF99-602E-4A1F-AD82-884047740895" Type="refid" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reference parameter</LocalizedString>
					<LocalizedString Language="uk">Параметр посилання</LocalizedString>
					<LocalizedString Language="ru">Параметр ссылки</LocalizedString>
					<LocalizedString Language="lv">Atsauces parametrs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefCardID" ID="AE77BD93-C0A8-4D9B-8566-EB9633BA8667" Type="refcardid" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Weak" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Card reference</LocalizedString>
					<LocalizedString Language="ru">Ссылка на карточку</LocalizedString>
					<LocalizedString Language="lv">Kartiņas atsauces</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefFolderID" ID="4C354418-0930-4918-BC41-1A4D7389B575" Type="refid" RefType="DA86FABF-4DD7-4A86-B6FF-C58C24D12DE2" RefSection="FE27631D-EEEA-4E2E-A04C-D4351282FB55" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Folder reference</LocalizedString>
					<LocalizedString Language="ru">Ссылка на папку</LocalizedString>
					<LocalizedString Language="lv">Atsauce uz mapi</LocalizedString>
				</Name>
			</Field>
		</Section>
	</Sections>
	<Transformations>
		<Transformation ID="2BB997FC-D690-4F76-B5A6-2A9171D16007" Type="XSLT" FileRef="XSLT\WorkflowTask.xslt" Alias="PrintTemplateEn" ContentType="Text" Language="en">
			<Name>
				<LocalizedString Language="en">Print template</LocalizedString>
				<LocalizedString Language="uk">Англійський шаблон друку</LocalizedString>
				<LocalizedString Language="ru">Английский шаблон печати</LocalizedString>
				<LocalizedString Language="lv">Izdrukas šablons</LocalizedString>
			</Name>
		</Transformation>
		<Transformation ID="A0AE7295-6D8F-4671-9E97-0F71107D783C" Type="XSLT" FileRef="XSLT\WorkflowTask.ru.xslt" Alias="PrintTemplateRu" ContentType="Text" Default="true" Language="ru">
			<Name>
				<LocalizedString Language="en">Russian print template</LocalizedString>
				<LocalizedString Language="uk">Стандартний шаблон друку</LocalizedString>
				<LocalizedString Language="ru">Стандартный шаблон печати</LocalizedString>
				<LocalizedString Language="lv">Drukāšanas šablons krievu valodā</LocalizedString>
			</Name>
		</Transformation>
		<Transformation ID="4267CA35-784C-402D-A07B-541C84FF122A" Type="XSLT" FileRef="XSLT\WorkflowTask.uk.xslt" Alias="PrintTemplateUk" ContentType="Text" Language="uk">
			<Name>
				<LocalizedString Language="en">Ukrainian Print Template</LocalizedString>
				<LocalizedString Language="uk">Стандартний шаблон друку</LocalizedString>
				<LocalizedString Language="ru">Украинский шаблон печати</LocalizedString>
				<LocalizedString Language="lv">Drukāšanas šablons ukraiņu valodā</LocalizedString>
			</Name>
		</Transformation>
		<Transformation ID="43B9D012-E719-452E-8D35-A911562F01E9" Type="XSLT" FileRef="XSLT\WorkflowPerform.ru.xslt" Alias="PerformDefaultRu" ContentType="Text" Language="ru">
			<Name>
				<LocalizedString Language="en">Russian task content template</LocalizedString>
				<LocalizedString Language="ru">Шаблон для текста задания по умолчанию</LocalizedString>
				<LocalizedString Language="lv">Krievu uzdevuma satura šablons</LocalizedString>
			</Name>
		</Transformation>
		<Transformation ID="C26BB075-DDE3-44B7-8A1B-61735073C142" Type="XSLT" FileRef="XSLT\WorkflowPerform.xslt" Alias="PerformDefaultEn" ContentType="Text" Language="en">
			<Name>
				<LocalizedString Language="en">Default task content template</LocalizedString>
				<LocalizedString Language="ru">Английский шаблон для текста задания</LocalizedString>
				<LocalizedString Language="lv">Uzdevuma saturs pēc noklusējuma</LocalizedString>
			</Name>
		</Transformation>
	</Transformations>
	<ViewElements>
		<ViewElement Alias="DefaultView" ID="AC233C2C-DCA1-4E49-AF0B-E68AD8056BE7">
			<Name>
				<LocalizedString Language="en">Main view</LocalizedString>
				<LocalizedString Language="uk">Основне подання</LocalizedString>
				<LocalizedString Language="ru">Основное представление</LocalizedString>
				<LocalizedString Language="lv">Skatījums pēc noklusējuma</LocalizedString>
			</Name>
			<Columns>
				<Column Alias="TaskState" ID="F352AB6E-3C86-4CEA-8836-2D616532C873" Expression="">
					<Name>
						<LocalizedString Language="en">Task state</LocalizedString>
						<LocalizedString Language="uk">Стан завдання</LocalizedString>
						<LocalizedString Language="ru">Состояние задания</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma stāvoklis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="" IsEnum="true" ID="F36202F5-4767-4BE4-BCA2-F797CFB425A7">TaskState</DataColumn>
				</Column>
				<Column Alias="CurrentPerformer" ID="8421A65F-3CDB-4ED3-80D2-832061539AF4" Expression="">
					<Name>
						<LocalizedString Language="en">Current performer</LocalizedString>
						<LocalizedString Language="uk">Поточний виконавець</LocalizedString>
						<LocalizedString Language="ru">Текущий исполнитель</LocalizedString>
						<LocalizedString Language="lv">Patreizējais izpildītājs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Employees" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="Employees" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="Employees" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="PercentCompleted" ID="DD72FC79-53B7-4E7D-9A99-C9B9BD2A63AD" Expression="">
					<Name>
						<LocalizedString Language="en">Percent completed</LocalizedString>
						<LocalizedString Language="uk">Відсоток виконання</LocalizedString>
						<LocalizedString Language="ru">Процент исполнения</LocalizedString>
						<LocalizedString Language="lv">Izpilde procentos</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">PercentCompleted</DataColumn>
				</Column>
				<Column Alias="Author" ID="75B66610-483E-462F-AADA-7BDED39F708B" Expression="">
					<Name>
						<LocalizedString Language="en">Author</LocalizedString>
						<LocalizedString Language="uk">Автор</LocalizedString>
						<LocalizedString Language="ru">Автор</LocalizedString>
						<LocalizedString Language="lv">Autors</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CreatorTable" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="CreatorTable" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="CreatorTable" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="Controller" ID="424F9C24-16FB-4E62-95AE-9A466C6F22D9" Expression="">
					<Name>
						<LocalizedString Language="en">Responsible performer</LocalizedString>
						<LocalizedString Language="uk">Відповідальний виконавець</LocalizedString>
						<LocalizedString Language="ru">Ответственный исполнитель</LocalizedString>
						<LocalizedString Language="lv">Kontrolētājs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ControllerTable" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="ControllerTable" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="ControllerTable" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="ProcessName" ID="DA2CD6C7-83D1-4EC8-B91D-C57C40563E83" Expression="">
					<Name>
						<LocalizedString Language="en">Process name</LocalizedString>
						<LocalizedString Language="uk">Назва процесу</LocalizedString>
						<LocalizedString Language="ru">Название процесса</LocalizedString>
						<LocalizedString Language="lv">Procesa nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ProcessMainInfo" Separator="">Name</DataColumn>
				</Column>
				<Column Alias="ProcessState" ID="66E22BD8-42F9-4558-8487-06709104FFDD" Expression="">
					<Name>
						<LocalizedString Language="en">Process state</LocalizedString>
						<LocalizedString Language="uk">Стан процесу</LocalizedString>
						<LocalizedString Language="ru">Состояние процесса</LocalizedString>
						<LocalizedString Language="lv">Procesa stāvoklis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ProcessMainInfo" Separator="" IsEnum="true" ID="0187C815-2D85-4333-9DE2-8D0DACA79CE6">State</DataColumn>
				</Column>
				<Column Alias="Name" ID="E69FDB87-6F96-4F6C-89BD-4F29F28C0D98" Expression="">
					<Name>
						<LocalizedString Language="en">Name</LocalizedString>
						<LocalizedString Language="uk">Назва</LocalizedString>
						<LocalizedString Language="ru">Название</LocalizedString>
						<LocalizedString Language="lv">Nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">Name</DataColumn>
				</Column>
				<Column Alias="Contents" ID="A88B238C-7D4D-4900-8734-B5365439229E" Expression="">
					<Name>
						<LocalizedString Language="en">Content</LocalizedString>
						<LocalizedString Language="uk">Зміст</LocalizedString>
						<LocalizedString Language="ru">Содержание</LocalizedString>
						<LocalizedString Language="lv">Saturs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">Comments</DataColumn>
				</Column>
				<Column Alias="Registrar" ID="D0EA03A9-1364-41CF-9A2C-37316D141958" Expression="">
					<Name>
						<LocalizedString Language="en">Clerk</LocalizedString>
						<LocalizedString Language="uk">Реєстратор</LocalizedString>
						<LocalizedString Language="ru">Регистратор</LocalizedString>
						<LocalizedString Language="lv">Reģistrētājs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="RegistrarTable" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="RegistrarTable" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="RegistrarTable" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="ExpectedStartDate" ID="ED0B2E80-1409-4EFA-A81A-9DC7C3624F39" Expression="">
					<Name>
						<LocalizedString Language="en">Expected start date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата початку</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата начала</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">ExpectedStartDate</DataColumn>
				</Column>
				<Column Alias="ActualStartDate" ID="0D7489B2-F4DC-412F-94CB-8087BFE73324" Expression="">
					<Name>
						<LocalizedString Language="en">Actual start date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата старту</LocalizedString>
						<LocalizedString Language="ru">Реальная дата старта</LocalizedString>
						<LocalizedString Language="lv">Patiesais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ActualStartDate</DataColumn>
				</Column>
				<Column Alias="ExpectedEndDate" ID="AE86CD2D-1669-4FE6-9262-08BC647A2040" Expression="">
					<Name>
						<LocalizedString Language="en">Expected end date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата завершения</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">ExpectedEndDate</DataColumn>
				</Column>
				<Column Alias="ActualEndDate" ID="B9A1E77F-1D1F-4380-864B-789115722354" Expression="">
					<Name>
						<LocalizedString Language="en">Actual completion date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Реальная дата завершения</LocalizedString>
						<LocalizedString Language="lv">Patiesais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ActualEndDate</DataColumn>
				</Column>
				<Column Alias="ExpectedDuration" ID="567018C9-02A5-49FD-87E3-C701F68B15CE" Expression="">
					<Name>
						<LocalizedString Language="en">Expected duration</LocalizedString>
						<LocalizedString Language="uk">Очікувана тривалість</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая длительность</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">ExpectedDuration</DataColumn>
				</Column>
				<Column Alias="ActualDuration" ID="8CF7C489-2297-4133-A5D4-B13BD6A5BE86" Expression="">
					<Name>
						<LocalizedString Language="en">Actual Duration</LocalizedString>
						<LocalizedString Language="uk">Реальна тривалість</LocalizedString>
						<LocalizedString Language="ru">Реальная длительность</LocalizedString>
						<LocalizedString Language="lv">Patiesais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ActualDuration</DataColumn>
				</Column>
				<Column Alias="ProcessStartDate" ID="C6435F56-7881-41BD-86D3-58E8AF30E15A" Expression="">
					<Name>
						<LocalizedString Language="en">Process start date</LocalizedString>
						<LocalizedString Language="uk">Дата початку процесу</LocalizedString>
						<LocalizedString Language="ru">Дата начала процесса</LocalizedString>
						<LocalizedString Language="lv">Procesa sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ProcessMainInfo" Separator="">DateBegin</DataColumn>
				</Column>
				<Column Alias="ProcessEndDate" ID="55A95BD0-FBC2-4B08-8DA3-F26AAFDC9D83" Expression="">
					<Name>
						<LocalizedString Language="en">Process completion date</LocalizedString>
						<LocalizedString Language="uk">Дата закінчення процесу</LocalizedString>
						<LocalizedString Language="ru">Дата завершения процесса</LocalizedString>
						<LocalizedString Language="lv">Procesa beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ProcessMainInfo" Separator="">DateEnd</DataColumn>
				</Column>
				<Column Alias="Expired" ID="3AABC1D6-B20F-4F19-8C41-69640973648E" Expression="">
					<Name>
						<LocalizedString Language="en">Expired</LocalizedString>
						<LocalizedString Language="uk">Прострочено</LocalizedString>
						<LocalizedString Language="ru">Просрочено</LocalizedString>
						<LocalizedString Language="lv">Termiņš beidzies</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">IsOverdue</DataColumn>
				</Column>
				<Column Alias="ControlDate" ID="F09B6CEB-A42E-4978-8D86-C3B0E75D6458" Expression="">
					<Name>
						<LocalizedString Language="en">Control date</LocalizedString>
						<LocalizedString Language="ru">Дата контроля</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Kontroles datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">ControlDate</DataColumn>
				</Column>
				<Column Alias="ParentTask" ID="D8C42191-F6EF-4C00-ABA7-2F2E52606D4F" Expression="">
					<Name>
						<LocalizedString Language="en">Parent task</LocalizedString>
						<LocalizedString Language="ru">Родительское задание</LocalizedString>
						<LocalizedString Language="uk">Батьківське завдання</LocalizedString>
						<LocalizedString Language="lv">Sākotnējais uzdevums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ParentTaskMainInfo" Separator="" System="true">Description</DataColumn>
				</Column>
				<Column Alias="SignedBy" ID="24FC55A2-A298-498F-B5CF-F92C09AA4390" Expression="">
					<Name>
						<LocalizedString Language="en">Signed</LocalizedString>
						<LocalizedString Language="ru">Подписано</LocalizedString>
						<LocalizedString Language="lv">Parakstījis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="SignedByEmployees" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="SignedByEmployees" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="SignedByEmployees" Separator=" ">MiddleName</DataColumn>
					<CustomAggregation Delimiter="; " TableAlias="SignedBy">
						<Conditions>
							<Condition TableAlias="SignedBy" Column="Type" Expression="{0}=2" />
						</Conditions>
					</CustomAggregation>
				</Column>
				<Column Alias="FilesCount" ID="375B3270-59F3-4EF6-8DFD-A5C255570F4C" Expression="">
					<Name>
						<LocalizedString Language="en">Attached file count</LocalizedString>
						<LocalizedString Language="ru">Количество файлов, присоединенных к заданию</LocalizedString>
						<LocalizedString Language="lv">Saistīto failu skaits</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="FileList" Separator="">Count</DataColumn>
				</Column>
				<Column Alias="TaskFiles" ID="166D38AF-5DCC-4399-921C-C4F22A65CCC9" Expression="">
					<Name>
						<LocalizedString Language="en">Files attached to task</LocalizedString>
						<LocalizedString Language="ru">Файлы, присоединенные к заданию</LocalizedString>
						<LocalizedString Language="lv">Saistīto uzdevumu faili</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CardFileMainInfo" Separator="">FileName</DataColumn>
					<CustomAggregation Delimiter="; " TableAlias="FileReferences" />
				</Column>
				<Column Alias="ReferencesCount" ID="93C484FB-3FC8-4A42-8A97-845C636B1DBD" Expression="">
					<Name>
						<LocalizedString Language="en">Number of references to documents and folders</LocalizedString>
						<LocalizedString Language="ru">Количество ссылок на документы и папки</LocalizedString>
						<LocalizedString Language="lv">Atsauces skaits</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CardReferences" Separator="" IsEnum="true" ID="E75FCDEC-229D-401D-87BE-20073064BAA8">RefType</DataColumn>
					<Aggregation Function="Count" />
				</Column>
				<Column Alias="Performers" ID="B4424232-B544-4145-8173-6565A81500D1" Expression="">
					<Name>
						<LocalizedString Language="en">Task performers</LocalizedString>
						<LocalizedString Language="ru">Исполнители задания</LocalizedString>
						<LocalizedString Language="uk">Виконавці</LocalizedString>
						<LocalizedString Language="lv">Izpilīdāji</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CurrentPerfEmployees" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="CurrentPerfEmployees" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="CurrentPerfEmployees" Separator=" ">MiddleName</DataColumn>
					<CustomAggregation Delimiter="; " TableAlias="CurrentPerformers" />
				</Column>
				<Column Alias="TaskComments" ID="B634B06A-36E9-4C4B-8BCD-913BB93250CB" Expression="">
					<Name>
						<LocalizedString Language="en">Task comments</LocalizedString>
						<LocalizedString Language="ru">Комментарии задания</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma komentāri</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Comments" Separator="" CastToChar="true">CreationDate</DataColumn>
					<DataColumn Alias="" TableAlias="CommentEmployees" Separator=": ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="CommentEmployees" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="CommentEmployees" Separator=" ">MiddleName</DataColumn>
					<DataColumn Alias="" TableAlias="Comments" Separator=": ">Comment</DataColumn>
					<CustomAggregation Delimiter="; " TableAlias="Comments" />
				</Column>
				<Column Alias="ChildrenTasks" ID="29AC42D8-E011-46D9-8AD2-2047C1520043" Expression="">
					<Name>
						<LocalizedString Language="en">Child tasks</LocalizedString>
						<LocalizedString Language="ru">Подчиненные задания</LocalizedString>
						<LocalizedString Language="uk">Підлеглі завдання</LocalizedString>
						<LocalizedString Language="lv">Apakš uzdevumi</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ChildMainInfo" Separator="" System="true">Description</DataColumn>
					<CustomAggregation Delimiter="; " TableAlias="ChildrenTasks" />
				</Column>
				<Column Alias="ChildrenTaskCount" ID="87FBD5A9-4F48-4470-B644-4F63F52AF2E6" Expression="">
					<Name>
						<LocalizedString Language="en">Child task count</LocalizedString>
						<LocalizedString Language="ru">Количество подчиненных заданий</LocalizedString>
						<LocalizedString Language="lv">Apakš uzdevumu skaits</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ChildrenTasks" Separator="">TaskID</DataColumn>
					<Aggregation Function="Count" />
				</Column>
				<Column Alias="ParentTaskPerformer" ID="A1FDBB8F-1541-46B2-AC2E-176A920EF35C" Expression="">
					<Name>
						<LocalizedString Language="en">Parent task performer</LocalizedString>
						<LocalizedString Language="ru">Исполнитель родительского задания</LocalizedString>
						<LocalizedString Language="lv">Sākotnējā uzdevuma izpildītājs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ParentTaskPerformer" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="ParentTaskPerformer" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="ParentTaskPerformer" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="ParentTaskState" ID="66D2971A-2B96-4089-BF05-7637F107302B" Expression="">
					<Name>
						<LocalizedString Language="en">Parent task state</LocalizedString>
						<LocalizedString Language="ru">Состояние родительского задания</LocalizedString>
						<LocalizedString Language="lv">Patreizējais uzdevuma stāvoklis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ParentTaskPerforming" Separator="" IsEnum="true" ID="F36202F5-4767-4BE4-BCA2-F797CFB425A7">TaskState</DataColumn>
				</Column>
				<Column Alias="ParentTaskExpired" ID="D39C0F50-FB77-4745-A37F-4E856590C468" Expression="">
					<Name>
						<LocalizedString Language="en">Parent task overdue</LocalizedString>
						<LocalizedString Language="ru">Родительское задание просрочено</LocalizedString>
						<LocalizedString Language="lv">Patreizējais uzdevums nokavēts</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ParentTaskPerforming" Separator="">IsOverdue</DataColumn>
				</Column>
				<Column Alias="ParentTaskExpectedEndDate" ID="5688BBEB-A88B-4FA0-A9EF-531631A73C24" Expression="">
					<Name>
						<LocalizedString Language="en">Parent task expected completion date</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата завершения родительского задания</LocalizedString>
						<LocalizedString Language="lv">Sākotnējā uzdevuma gaidāmais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ParentTaskMainInfo" Separator="">ExpectedEndDate</DataColumn>
				</Column>
				<Column Alias="CompletedEmployee" ID="E8550A72-B656-4537-A855-DBAFACADBF44" Expression="">
					<Name>
						<LocalizedString Language="en">Completing employee</LocalizedString>
						<LocalizedString Language="ru">Завершивший сотрудник</LocalizedString>
						<LocalizedString Language="lv">Pabeidza darbinieks</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CompletedEmployee" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="CompletedEmployee" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="CompletedEmployee" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="ParentName" ID="91A2C98E-9190-462E-988F-6E06D8EC12E7" Expression="">
					<Name>
						<LocalizedString Language="en">Parent document name</LocalizedString>
						<LocalizedString Language="ru">Название родительского документа</LocalizedString>
						<LocalizedString Language="lv">Sākotnējās kartiņas nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ResolutionMainInfo" Separator="">ParentName</DataColumn>
					<DataColumn Alias="" TableAlias="ApprovalMainInfo" Separator="">ParentName</DataColumn>
				</Column>
				<Column Alias="ParentType" ID="A63FC3C4-D5F8-4842-85EF-E2CBD29ED634" Expression="">
					<Name>
						<LocalizedString Language="en">Parent document class</LocalizedString>
						<LocalizedString Language="ru">Вид родительского документа</LocalizedString>
						<LocalizedString Language="lv">Sākotnējās kartiņas tips</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ParentType" Separator="">Name</DataColumn>
					<DataColumn Alias="" TableAlias="AppParentType" Separator="">Name</DataColumn>
				</Column>
				<Column Alias="ParentNumber" ID="FD11EE33-4F24-4E70-A6C0-5CF50B154B04" Expression="">
					<Name>
						<LocalizedString Language="en">Parent document number</LocalizedString>
						<LocalizedString Language="ru">Номер родительского документа</LocalizedString>
						<LocalizedString Language="lv">Sākotnējās kartiņas numurs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ResolutionMainInfo" Separator="">ParentNumber</DataColumn>
					<DataColumn Alias="" TableAlias="ApprovalMainInfo" Separator="">ParentNumber</DataColumn>
				</Column>
				<Column Alias="ParentRegDate" ID="4C011B61-DF8B-4754-8143-AC7DDE9727EE" Expression="">
					<Name>
						<LocalizedString Language="en">Parent document registration date</LocalizedString>
						<LocalizedString Language="ru">Дата регистрации родительского документа</LocalizedString>
						<LocalizedString Language="lv">Sākotnējās kartiņas reģistrācijas datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ResolutionMainInfo" Separator="">ParentRegDate</DataColumn>
					<DataColumn Alias="" TableAlias="ApprovalMainInfo" Separator="">ParentRegDate</DataColumn>
				</Column>
				<Column Alias="PerfFiles" ID="D26B9EC9-A9F3-4385-86C3-2F3A71934E10" Expression="">
					<Name>
						<LocalizedString Language="en">Report files</LocalizedString>
						<LocalizedString Language="ru">Файлы отчета</LocalizedString>
						<LocalizedString Language="lv">Atskaites faili</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="PerfCardFileMainInfo" Separator="">FileName</DataColumn>
					<CustomAggregation Delimiter="; " TableAlias="PerfFileReferences" />
				</Column>
				<Column Alias="PerfFilesCount" ID="C4787DC1-2967-405F-94FA-079F9C3C017C" Expression="">
					<Name>
						<LocalizedString Language="en">Report files count</LocalizedString>
						<LocalizedString Language="ru">Количество файлов отчета</LocalizedString>
						<LocalizedString Language="lv">Atskaites faila skaits</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="PerfFileList" Separator="">Count</DataColumn>
				</Column>
				<Column Alias="ChildrenResolutions" ID="213BCB16-C3C1-468F-B8F5-7A061CE6BECD" Expression="">
					<Name>
						<LocalizedString Language="en">Child resolutions</LocalizedString>
						<LocalizedString Language="ru">Подчиненные задачи</LocalizedString>
						<LocalizedString Language="lv">Apakšrezolūcijas</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ChildResMainInfo" Separator="" System="true">Description</DataColumn>
					<CustomAggregation Delimiter="; " TableAlias="ChildrenResolutions" />
				</Column>
				<Column Alias="ChildrenResolutionCount" ID="D71E6C5A-DA5E-431E-97B0-644734D4E24D" Expression="">
					<Name>
						<LocalizedString Language="en">Child resolutions count</LocalizedString>
						<LocalizedString Language="ru">Количество подчиненных задач</LocalizedString>
						<LocalizedString Language="lv">Apakšrezolūcijas skaits</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ChildrenResolutions" Separator="">ResolutionID</DataColumn>
					<Aggregation Function="Count" />
				</Column>
			</Columns>
			<Data>
				<Table ID="D48E6155-C774-4205-AB70-7A67AB69DF22" />
				<JoinTable ID="7213A125-2CA4-40EE-A671-B52850F45E7D" Alias="MainInfo" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="Employees" LeftColumnAlias="CurrentPerformer" RightColumnAlias="RowID" WithTable="main" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="CreatorTable" LeftColumnAlias="CreatedBy" RightColumnAlias="RowID" WithTable="MainInfo" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="ControllerTable" LeftColumnAlias="ControlledBy" RightColumnAlias="RowID" WithTable="MainInfo" />
				<JoinTable ID="0EF6BCCA-7A09-4027-A3A2-D2EEECA1BF4D" Alias="ProcessMainInfo" LeftColumnAlias="ParentProcessID" RightColumnAlias="InstanceID" WithTable="MainInfo" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="RegistrarTable" LeftColumnAlias="RegisteredBy" RightColumnAlias="RowID" WithTable="MainInfo" />
				<JoinTable ID="7213A125-2CA4-40EE-A671-B52850F45E7D" Alias="ParentTaskMainInfo" LeftColumnAlias="ParentTaskID" RightColumnAlias="InstanceID" WithTable="MainInfo" />
				<JoinTable ID="D79E48AE-18EE-4BC8-9DF0-8129C4F8840F" Alias="SignedBy" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="MainInfo" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="SignedByEmployees" LeftColumnAlias="EmployeeID" RightColumnAlias="RowID" WithTable="SignedBy" />
				<JoinTable ID="3F8270DB-3603-463C-BA59-26B89EBB6CB5" Alias="FileList" LeftColumnAlias="FilesID" RightColumnAlias="InstanceID" WithTable="MainInfo" />
				<JoinTable ID="E962AC85-0F53-4439-A1CD-171E46C3EF91" Alias="FileReferences" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="FileList" />
				<JoinTable ID="B4562DF8-AF19-4D0F-85CA-53A311354D39" Alias="CardFileMainInfo" LeftColumnAlias="CardFileID" RightColumnAlias="InstanceID" WithTable="FileReferences" />
				<JoinTable ID="ECA843EF-2810-4795-A81A-B047F76250EC" Alias="CardReferences" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="9D09144D-CAEC-4732-AD4D-EB6A3864714A" Alias="CurrentPerformers" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="CurrentPerfEmployees" LeftColumnAlias="PerformerID" RightColumnAlias="RowID" WithTable="CurrentPerformers" />
				<JoinTable ID="9F3D8474-49A3-43DC-9D2B-59E82CC8F267" Alias="Comments" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="DE2BDAB8-ED9B-420F-A1E5-C845D5F801E7" Alias="ChildrenTasks" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="7213A125-2CA4-40EE-A671-B52850F45E7D" Alias="ChildMainInfo" LeftColumnAlias="TaskID" RightColumnAlias="InstanceID" WithTable="ChildrenTasks" />
				<JoinTable ID="D48E6155-C774-4205-AB70-7A67AB69DF22" Alias="ParentTaskPerforming" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="ParentTaskMainInfo" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="ParentTaskPerformer" LeftColumnAlias="CurrentPerformer" RightColumnAlias="RowID" WithTable="main" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="CommentEmployees" LeftColumnAlias="CreatedBy" RightColumnAlias="RowID" WithTable="Comments" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="CompletedEmployee" LeftColumnAlias="CompletedEmployeeID" RightColumnAlias="RowID" WithTable="main" />
				<JoinTable ID="77C70C13-881A-4534-9704-C4F6B9ACDB0A" Alias="ResolutionMainInfo" LeftColumnAlias="ParentResolutionID" RightColumnAlias="InstanceID" WithTable="MainInfo" />
				<JoinTable ID="49AD5A2D-17EC-46E2-A49E-C58D0BBD9C1A" Alias="ParentType" LeftColumnAlias="ParentTypeID" RightColumnAlias="RowID" WithTable="ResolutionMainInfo" />
				<JoinTable ID="3F8270DB-3603-463C-BA59-26B89EBB6CB5" Alias="PerfFileList" LeftColumnAlias="PerformerFilesID" RightColumnAlias="InstanceID" WithTable="MainInfo" />
				<JoinTable ID="E962AC85-0F53-4439-A1CD-171E46C3EF91" Alias="PerfFileReferences" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="PerfFileList" />
				<JoinTable ID="B4562DF8-AF19-4D0F-85CA-53A311354D39" Alias="PerfCardFileMainInfo" LeftColumnAlias="CardFileID" RightColumnAlias="InstanceID" WithTable="PerfFileReferences" />
				<JoinTable ID="BBAA81AA-999D-461B-9B74-2A60A0965555" Alias="ChildrenResolutions" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="77C70C13-881A-4534-9704-C4F6B9ACDB0A" Alias="ChildResMainInfo" LeftColumnAlias="ResolutionID" RightColumnAlias="InstanceID" WithTable="ChildrenResolutions" />
				<JoinTable ID="3C2F1AC3-8D26-425F-956B-A3B0B52BAC5D" Alias="ApprovalMainInfo" LeftColumnAlias="ParentApprovalID" RightColumnAlias="InstanceID" WithTable="MainInfo" />
				<JoinTable ID="49AD5A2D-17EC-46E2-A49E-C58D0BBD9C1A" Alias="AppParentType" LeftColumnAlias="ParentTypeID" RightColumnAlias="RowID" WithTable="ApprovalMainInfo" />
			</Data>
		</ViewElement>
		<ViewElement Alias="PerformerView" ID="01F4EC4A-243C-489A-B1F4-F9872A5ED39C">
			<Name>
				<LocalizedString Language="en">Performer states</LocalizedString>
				<LocalizedString Language="uk">Стан виконавців</LocalizedString>
				<LocalizedString Language="ru">Состояние исполнителей</LocalizedString>
				<LocalizedString Language="lv">Izpildītāja skatījums</LocalizedString>
			</Name>
			<Columns>
				<Column Alias="TaskName" ID="D29E973E-342E-492E-8B79-8CBDD035A6A0" Expression="">
					<Name>
						<LocalizedString Language="en">Task name</LocalizedString>
						<LocalizedString Language="uk">Назва завдання</LocalizedString>
						<LocalizedString Language="ru">Название задания</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">Name</DataColumn>
				</Column>
				<Column Alias="ExpectedStartDate" ID="B068BA92-64F5-455D-8594-9A3A89EA8409" Expression="">
					<Name>
						<LocalizedString Language="en">Expected start date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата початку</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата начала</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">ExpectedStartDate</DataColumn>
				</Column>
				<Column Alias="ActualStartDate" ID="E82C8CC1-4426-4170-BE12-E8501183D574" Expression="">
					<Name>
						<LocalizedString Language="en">Actual start date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата початку</LocalizedString>
						<LocalizedString Language="ru">Реальная дата начала</LocalizedString>
						<LocalizedString Language="lv">Patiesais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualStartDate</DataColumn>
				</Column>
				<Column Alias="ExpectedEndDate" ID="71DB0872-3F68-4CA7-9EB5-0381CB90B1AE" Expression="">
					<Name>
						<LocalizedString Language="en">Expected end date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата завершения</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">ExpectedEndDate</DataColumn>
				</Column>
				<Column Alias="ActualEndDate" ID="F6A482FD-44A5-4E20-90C9-C3AF5CB3A6F4" Expression="">
					<Name>
						<LocalizedString Language="en">Actual completion date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Реальная дата завершения</LocalizedString>
						<LocalizedString Language="lv">Patiesais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualEndDate</DataColumn>
				</Column>
				<Column Alias="TaskState" ID="E519E927-C1B1-4AAB-BF1A-2265E4AA4D47" Expression="">
					<Name>
						<LocalizedString Language="en">Task State</LocalizedString>
						<LocalizedString Language="uk">Стан завдання</LocalizedString>
						<LocalizedString Language="ru">Состояние задания</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma stāvoklis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="" IsEnum="true" ID="F36202F5-4767-4BE4-BCA2-F797CFB425A7">TaskState</DataColumn>
				</Column>
				<Column Alias="Performer" ID="701304CF-CF91-4E1D-BA62-CC812A5584DA" Expression="">
					<Name>
						<LocalizedString Language="en">Performer</LocalizedString>
						<LocalizedString Language="uk">Виконавець</LocalizedString>
						<LocalizedString Language="ru">Исполнитель</LocalizedString>
						<LocalizedString Language="lv">Izpildītājs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="PerformerTable" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="PerformerTable" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="PerformerTable" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="PerformerState" ID="EA8570B2-F3FD-47C1-8A01-357C84B75864" Expression="">
					<Name>
						<LocalizedString Language="en">Performer state</LocalizedString>
						<LocalizedString Language="uk">Стан виконавця</LocalizedString>
						<LocalizedString Language="ru">Состояние исполнителя</LocalizedString>
						<LocalizedString Language="lv">Izpildītāja stāvoklis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="" IsEnum="true" ID="A3FB5837-99B7-4AC4-9B96-68B362317678">PerformerState</DataColumn>
				</Column>
				<Column Alias="IsActive" ID="AB1CF920-BA22-486C-8FBE-9AD8992F041E" Expression="">
					<Name>
						<LocalizedString Language="en">Is Active</LocalizedString>
						<LocalizedString Language="uk">Ознака активності</LocalizedString>
						<LocalizedString Language="ru">Признак активности</LocalizedString>
						<LocalizedString Language="lv">Aktīvs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">IsActive</DataColumn>
				</Column>
				<Column Alias="DelegatedFrom" ID="7B359E09-1D64-4CBC-BA50-A8CCBC32270D" Expression="">
					<Name>
						<LocalizedString Language="en">Delegated from</LocalizedString>
						<LocalizedString Language="uk">Делеговано</LocalizedString>
						<LocalizedString Language="ru">Делегировано от</LocalizedString>
						<LocalizedString Language="lv">Deleģēts no</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="DelegateTable" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="DelegateTable" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="DelegateTable" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="TaskContents" ID="6E6BDBB0-3962-4BB6-BE0C-2C26F4204D8B" Expression="">
					<Name>
						<LocalizedString Language="en">Task content</LocalizedString>
						<LocalizedString Language="uk">Зміст завдання</LocalizedString>
						<LocalizedString Language="ru">Содержание задания</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma saturs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">Comments</DataColumn>
				</Column>
				<Column Alias="Expired" ID="3DDD8CBB-5BCC-4F5F-8ABA-D373162D8F00" Expression="">
					<Name>
						<LocalizedString Language="en">Expired</LocalizedString>
						<LocalizedString Language="uk">Прострочено</LocalizedString>
						<LocalizedString Language="ru">Просрочено</LocalizedString>
						<LocalizedString Language="lv">Termiņš beidzies</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">IsOverdue</DataColumn>
				</Column>
				<Column Alias="ExpectedDuration" ID="53119400-4F22-46E6-B9F3-D17BD7CDFD2D" Expression="">
					<Name>
						<LocalizedString Language="en">Expected duration</LocalizedString>
						<LocalizedString Language="uk">Очікувана тривалість</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая длительность</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">ExpectedDuration</DataColumn>
				</Column>
				<Column Alias="ActualDuration" ID="16721392-0713-4725-9D76-4B8F9EA63EAC" Expression="">
					<Name>
						<LocalizedString Language="en">Actual Duration</LocalizedString>
						<LocalizedString Language="uk">Реальна тривалість</LocalizedString>
						<LocalizedString Language="ru">Реальная длительность</LocalizedString>
						<LocalizedString Language="lv">Patiesais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualDuration</DataColumn>
				</Column>
				<Column Alias="ControlDate" ID="08FD4D96-DA00-4CCD-BC05-3FC87F87F5C6" Expression="">
					<Name>
						<LocalizedString Language="en">Control date</LocalizedString>
						<LocalizedString Language="ru">Дата контроля</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Kontroles datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="MainInfo" Separator="">ControlDate</DataColumn>
				</Column>
				<Column Alias="Department" ID="5BA589B1-18A0-495C-890F-BE0EE6A0E6D9" Expression="">
					<Name>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="uk">Відділ виконавця</LocalizedString>
						<LocalizedString Language="ru">Отдел исполнителя</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="DepartmentTable" Separator="">Name</DataColumn>
				</Column>
				<Column Alias="RoutingType" ID="EA1E44AC-9E86-4948-A71F-D96A52959F16" Expression="">
					<Name>
						<LocalizedString Language="en">Routing type</LocalizedString>
						<LocalizedString Language="uk">Тип маршрутизації</LocalizedString>
						<LocalizedString Language="ru">Тип маршрутизации</LocalizedString>
						<LocalizedString Language="lv">Pārvietošanas tips</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="" IsEnum="true" ID="C89DEF8E-44A0-487C-BD9D-07D5F65E52C7">CurrentRoutingType</DataColumn>
				</Column>
				<Column Alias="PercentCompleted" ID="4F275596-8AF0-4DBE-9FE3-41E1A24896FD" Expression="">
					<Name>
						<LocalizedString Language="en">Percent completed</LocalizedString>
						<LocalizedString Language="uk">Відсоток виконання</LocalizedString>
						<LocalizedString Language="ru">Процент исполнения</LocalizedString>
						<LocalizedString Language="lv">Izpilde procentos</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">PercentCompleted</DataColumn>
				</Column>
				<Column Alias="CreatedBy" ID="A8A17216-2C71-4CDA-BFA8-F1E995704A1C" Expression="">
					<Name>
						<LocalizedString Language="en">Author</LocalizedString>
						<LocalizedString Language="ru">Автор</LocalizedString>
						<LocalizedString Language="uk">Автор</LocalizedString>
						<LocalizedString Language="lv">Autors</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CreatedBy" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="CreatedBy" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="CreatedBy" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="RegisteredBy" ID="FF197F56-4BF1-45FB-9184-271C03F19A92" Expression="">
					<Name>
						<LocalizedString Language="en">Clerk</LocalizedString>
						<LocalizedString Language="ru">Регистратор</LocalizedString>
						<LocalizedString Language="uk">Реєстратор</LocalizedString>
						<LocalizedString Language="lv">Reģistrējis: </LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="RegisteredBy" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="RegisteredBy" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="RegisteredBy" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="Controller" ID="241EE80E-02C5-4904-875F-1F9D28E93FC1" Expression="">
					<Name>
						<LocalizedString Language="en">Responsible performer</LocalizedString>
						<LocalizedString Language="uk">Відповідальний виконавець</LocalizedString>
						<LocalizedString Language="ru">Ответственный исполнитель</LocalizedString>
						<LocalizedString Language="lv">Kontrolētājs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ControllerTable" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="ControllerTable" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="ControllerTable" Separator=" ">MiddleName</DataColumn>
				</Column>
			</Columns>
			<Data>
				<Table ID="9D09144D-CAEC-4732-AD4D-EB6A3864714A" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="PerformerTable" LeftColumnAlias="PerformerID" RightColumnAlias="RowID" WithTable="main" />
				<JoinTable ID="9D09144D-CAEC-4732-AD4D-EB6A3864714A" Alias="DelegatedFromTable" LeftColumnAlias="DelegatedFrom" RightColumnAlias="RowID" WithTable="main" />
				<JoinTable ID="7213A125-2CA4-40EE-A671-B52850F45E7D" Alias="MainInfo" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="D48E6155-C774-4205-AB70-7A67AB69DF22" Alias="Performing" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="DelegateTable" LeftColumnAlias="PerformerID" RightColumnAlias="RowID" WithTable="main" />
				<JoinTable ID="7473F07F-11ED-4762-9F1E-7FF10808DDD1" Alias="DepartmentTable" LeftColumnAlias="ParentRowID" RightColumnAlias="RowID" WithTable="PerformerTable" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="CreatedBy" LeftColumnAlias="CreatedBy" RightColumnAlias="RowID" WithTable="MainInfo" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="RegisteredBy" LeftColumnAlias="RegisteredBy" RightColumnAlias="RowID" WithTable="MainInfo" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="ControllerTable" LeftColumnAlias="ControlledBy" RightColumnAlias="RowID" WithTable="MainInfo" />
			</Data>
		</ViewElement>
		<ViewElement Alias="FilesView" ID="6B51232A-3BAD-4AB9-8AAE-5B8B1A78ED5E">
			<Name>
				<LocalizedString Language="en">Files attached to task</LocalizedString>
				<LocalizedString Language="ru">Файлы, присоединенные к заданию</LocalizedString>
				<LocalizedString Language="uk">Файли документа</LocalizedString>
				<LocalizedString Language="lv">Saistīto failu skatījums</LocalizedString>
			</Name>
			<Columns>
				<Column Alias="Name" ID="97AC38D3-BE85-43E4-9AF1-371D2BA15CC9" Expression="">
					<Name>
						<LocalizedString Language="en">Topic</LocalizedString>
						<LocalizedString Language="uk">Тема</LocalizedString>
						<LocalizedString Language="ru">Тема</LocalizedString>
						<LocalizedString Language="lv">Nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">Name</DataColumn>
				</Column>
				<Column Alias="FileName" ID="58BF3911-475B-48E5-ADD9-29F284453011" Expression="">
					<Name>
						<LocalizedString Language="en">File name</LocalizedString>
						<LocalizedString Language="ru">Имя файла</LocalizedString>
						<LocalizedString Language="uk">Ім''я файлу</LocalizedString>
						<LocalizedString Language="lv">Faila nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CardFileMain" Separator="">FileName</DataColumn>
				</Column>
				<Column Alias="URL" ID="3BF94E96-A383-4E51-AA28-6A07F437CF7E" Expression="">
					<Name>
						<LocalizedString Language="en">URL</LocalizedString>
						<LocalizedString Language="ru">URL</LocalizedString>
						<LocalizedString Language="uk">URL</LocalizedString>
						<LocalizedString Language="lv">Saite</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CardFileMain" Separator="">URL</DataColumn>
				</Column>
				<Column Alias="CanModify" ID="EFA38B76-19BA-4C43-8320-EDB7CAFB87B6" Expression="">
					<Name>
						<LocalizedString Language="en">Can modify</LocalizedString>
						<LocalizedString Language="ru">Разрешено изменение</LocalizedString>
						<LocalizedString Language="uk">Дозволено зміну</LocalizedString>
						<LocalizedString Language="lv">Var mainīt</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="FileReferences" Separator="">CanModify</DataColumn>
				</Column>
				<Column Alias="CanCheckout" ID="9A689756-7748-4520-BF06-222AFDB4021E" Expression="">
					<Name>
						<LocalizedString Language="en">Can checkout</LocalizedString>
						<LocalizedString Language="ru">Разрешена блокировка</LocalizedString>
						<LocalizedString Language="uk">Дозволене блокування</LocalizedString>
						<LocalizedString Language="lv">Var izņemt</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="FileReferences" Separator="">CanCheckout</DataColumn>
				</Column>
				<Column Alias="CanDelete" ID="5D2958DA-1986-4B20-83C5-7C8EE59EA0E7" Expression="">
					<Name>
						<LocalizedString Language="en">Can delete</LocalizedString>
						<LocalizedString Language="ru">Разрешено удаление</LocalizedString>
						<LocalizedString Language="uk">Дозволено видалення</LocalizedString>
						<LocalizedString Language="lv">Var dzēst</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="FileReferences" Separator="">CanDelete</DataColumn>
				</Column>
				<Column Alias="VersioningType" ID="3DB2F31C-50D3-4B35-8292-2F110CCFDA76" Expression="">
					<Name>
						<LocalizedString Language="en">Versioning type</LocalizedString>
						<LocalizedString Language="ru">Тип поддержки версий</LocalizedString>
						<LocalizedString Language="uk">Тип підтримки версій</LocalizedString>
						<LocalizedString Language="lv">Versiju tips</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CardFileMain" Separator="" IsEnum="true" ID="3264F70D-0515-4BCC-8B0B-9539C710380C">VersioningType</DataColumn>
				</Column>
				<Column Alias="TaskState" ID="7342860E-A4EC-42A4-8D02-ABA2927C4F18" Expression="">
					<Name>
						<LocalizedString Language="en">Task state</LocalizedString>
						<LocalizedString Language="ru">Состояние задания</LocalizedString>
						<LocalizedString Language="uk">Стан завдання</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma stāvoklis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="" IsEnum="true" ID="F36202F5-4767-4BE4-BCA2-F797CFB425A7">TaskState</DataColumn>
				</Column>
				<Column Alias="Contents" ID="80D631A6-CDCA-4822-B897-44BA52B11035" Expression="">
					<Name>
						<LocalizedString Language="en">Content</LocalizedString>
						<LocalizedString Language="uk">Зміст</LocalizedString>
						<LocalizedString Language="ru">Содержание</LocalizedString>
						<LocalizedString Language="lv">Saturs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">Comments</DataColumn>
				</Column>
				<Column Alias="ExpectedStartDate" ID="2BEA244E-C92E-41ED-AA3B-6C86CA19F50D" Expression="">
					<Name>
						<LocalizedString Language="en">Expected start date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата початку</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата начала</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ExpectedStartDate</DataColumn>
				</Column>
				<Column Alias="ActualStartDate" ID="E5C48D19-9DEB-4AE8-9DBF-930B37F7A023" Expression="">
					<Name>
						<LocalizedString Language="en">Actual start date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата початку</LocalizedString>
						<LocalizedString Language="ru">Реальная дата начала</LocalizedString>
						<LocalizedString Language="lv">Patiesais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualStartDate</DataColumn>
				</Column>
				<Column Alias="ExpectedEndDate" ID="1258B561-DBA3-4D1E-A144-70B1DFF13239" Expression="">
					<Name>
						<LocalizedString Language="en">Expected end date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата завершения</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ExpectedEndDate</DataColumn>
				</Column>
				<Column Alias="ActualEndDate" ID="C7BF065B-8F25-47C8-B4C0-20EB74CC0937" Expression="">
					<Name>
						<LocalizedString Language="en">Actual completion date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Реальная дата завершения</LocalizedString>
						<LocalizedString Language="lv">Patiesais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualEndDate</DataColumn>
				</Column>
				<Column Alias="ExpectedDuration" ID="528DC038-7C92-45F0-BEDB-94A74217C7F2" Expression="">
					<Name>
						<LocalizedString Language="en">Expected duration</LocalizedString>
						<LocalizedString Language="uk">Очікувана тривалість</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая длительность</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ExpectedDuration</DataColumn>
				</Column>
				<Column Alias="ActualDuration" ID="EB6334C4-358B-4BFF-A38D-0B6E96D9791A" Expression="">
					<Name>
						<LocalizedString Language="en">Actual Duration</LocalizedString>
						<LocalizedString Language="uk">Реальна тривалість</LocalizedString>
						<LocalizedString Language="ru">Реальная длительность</LocalizedString>
						<LocalizedString Language="lv">Patiesais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualDuration</DataColumn>
				</Column>
				<Column Alias="ControlDate" ID="D5ACB17A-2C75-4D70-A781-E8AEF816B18E" Expression="">
					<Name>
						<LocalizedString Language="en">Control date</LocalizedString>
						<LocalizedString Language="ru">Дата контроля</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Kontroles datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ControlDate</DataColumn>
				</Column>
			</Columns>
			<Data>
				<Table ID="7213A125-2CA4-40EE-A671-B52850F45E7D" />
				<JoinTable ID="3F8270DB-3603-463C-BA59-26B89EBB6CB5" Alias="FileListMain" LeftColumnAlias="FilesID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="E962AC85-0F53-4439-A1CD-171E46C3EF91" Alias="FileReferences" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="FileListMain" />
				<JoinTable ID="B4562DF8-AF19-4D0F-85CA-53A311354D39" Alias="CardFileMain" LeftColumnAlias="CardFileID" RightColumnAlias="InstanceID" WithTable="FileReferences" />
				<JoinTable ID="D48E6155-C774-4205-AB70-7A67AB69DF22" Alias="Performing" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
			</Data>
		</ViewElement>
		<ViewElement Alias="ReportFilesView" ID="78F9E861-C52D-4BE6-BABF-81B3AFDEDD31">
			<Name>
				<LocalizedString Language="en">Report files view</LocalizedString>
				<LocalizedString Language="ru">Файлы отчета</LocalizedString>
				<LocalizedString Language="lv">Atskaites failu skatījums</LocalizedString>
			</Name>
			<Columns>
				<Column Alias="Name" ID="87EE6C7D-5280-4267-ADC7-F79756613373" Expression="">
					<Name>
						<LocalizedString Language="en">Topic</LocalizedString>
						<LocalizedString Language="uk">Тема</LocalizedString>
						<LocalizedString Language="ru">Тема</LocalizedString>
						<LocalizedString Language="lv">Nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">Name</DataColumn>
				</Column>
				<Column Alias="FileName" ID="7738D594-8FA2-4106-8FC4-722BE1B4B828" Expression="">
					<Name>
						<LocalizedString Language="en">File name</LocalizedString>
						<LocalizedString Language="ru">Имя файла</LocalizedString>
						<LocalizedString Language="uk">Ім''я файлу</LocalizedString>
						<LocalizedString Language="lv">Faila nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CardFileMain" Separator="">FileName</DataColumn>
				</Column>
				<Column Alias="URL" ID="B7380CAA-A02A-48EF-8B52-3416A0BE7853" Expression="">
					<Name>
						<LocalizedString Language="en">URL</LocalizedString>
						<LocalizedString Language="ru">URL</LocalizedString>
						<LocalizedString Language="uk">URL</LocalizedString>
						<LocalizedString Language="lv">Saite</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CardFileMain" Separator="">URL</DataColumn>
				</Column>
				<Column Alias="CanModify" ID="ACD0A462-091B-45C9-A53D-7437F327B93D" Expression="">
					<Name>
						<LocalizedString Language="en">Can modify</LocalizedString>
						<LocalizedString Language="ru">Разрешено изменение</LocalizedString>
						<LocalizedString Language="uk">Дозволено зміну</LocalizedString>
						<LocalizedString Language="lv">Var pārveidot</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="FileReferences" Separator="">CanModify</DataColumn>
				</Column>
				<Column Alias="CanCheckout" ID="2A1B6887-5620-4FAD-B2FD-68D5956058A2" Expression="">
					<Name>
						<LocalizedString Language="en">Can checkout</LocalizedString>
						<LocalizedString Language="ru">Разрешена блокировка</LocalizedString>
						<LocalizedString Language="uk">Дозволене блокування</LocalizedString>
						<LocalizedString Language="lv">Var izņemt</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="FileReferences" Separator="">CanCheckout</DataColumn>
				</Column>
				<Column Alias="CanDelete" ID="0282C630-A1FE-49F8-866B-EDB017F6A8F9" Expression="">
					<Name>
						<LocalizedString Language="en">Can delete</LocalizedString>
						<LocalizedString Language="ru">Разрешено удаление</LocalizedString>
						<LocalizedString Language="uk">Дозволено видалення</LocalizedString>
						<LocalizedString Language="lv">Var dzēst</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="FileReferences" Separator="">CanDelete</DataColumn>
				</Column>
				<Column Alias="VersioningType" ID="A4765C26-AA6F-4781-800B-71C3ABB1A1E6" Expression="">
					<Name>
						<LocalizedString Language="en">Versioning type</LocalizedString>
						<LocalizedString Language="ru">Тип поддержки версий</LocalizedString>
						<LocalizedString Language="uk">Тип підтримки версій</LocalizedString>
						<LocalizedString Language="lv">Versijas tips</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CardFileMain" Separator="" IsEnum="true" ID="3264F70D-0515-4BCC-8B0B-9539C710380C">VersioningType</DataColumn>
				</Column>
				<Column Alias="TaskState" ID="A0214205-45D8-4077-9427-B8F6A0F67D44" Expression="">
					<Name>
						<LocalizedString Language="en">Task state</LocalizedString>
						<LocalizedString Language="ru">Состояние задания</LocalizedString>
						<LocalizedString Language="uk">Стан завдання</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma stāvoklis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="" IsEnum="true" ID="F36202F5-4767-4BE4-BCA2-F797CFB425A7">TaskState</DataColumn>
				</Column>
				<Column Alias="Contents" ID="A8DE1166-0FFE-4001-95BC-77EE4F6EB954" Expression="">
					<Name>
						<LocalizedString Language="en">Content</LocalizedString>
						<LocalizedString Language="uk">Зміст</LocalizedString>
						<LocalizedString Language="ru">Содержание</LocalizedString>
						<LocalizedString Language="lv">Saturs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">Comments</DataColumn>
				</Column>
				<Column Alias="ExpectedStartDate" ID="8612F28C-9C64-48B3-980F-CF0CF34F4B5F" Expression="">
					<Name>
						<LocalizedString Language="en">Expected start date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата початку</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата начала</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ExpectedStartDate</DataColumn>
				</Column>
				<Column Alias="ActualStartDate" ID="7640B52F-EF4A-43BA-9C41-11C840A39EA4" Expression="">
					<Name>
						<LocalizedString Language="en">Actual start date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата початку</LocalizedString>
						<LocalizedString Language="ru">Реальная дата начала</LocalizedString>
						<LocalizedString Language="lv">Patiesais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualStartDate</DataColumn>
				</Column>
				<Column Alias="ExpectedEndDate" ID="834C3F5D-4928-44CB-8DD0-702AB3F8CDBE" Expression="">
					<Name>
						<LocalizedString Language="en">Expected end date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата завершения</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ExpectedEndDate</DataColumn>
				</Column>
				<Column Alias="ActualEndDate" ID="A72285B8-B872-4C48-9EBC-A12D989F49E4" Expression="">
					<Name>
						<LocalizedString Language="en">Actual completion date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Реальная дата завершения</LocalizedString>
						<LocalizedString Language="lv">Patiesais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualEndDate</DataColumn>
				</Column>
				<Column Alias="ExpectedDuration" ID="C7A7E28C-6794-4371-9FDB-ECE6C29906F3" Expression="">
					<Name>
						<LocalizedString Language="en">Expected duration</LocalizedString>
						<LocalizedString Language="uk">Очікувана тривалість</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая длительность</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ExpectedDuration</DataColumn>
				</Column>
				<Column Alias="ActualDuration" ID="AD351419-B430-43AE-92D1-E6DBC9A549D8" Expression="">
					<Name>
						<LocalizedString Language="en">Actual Duration</LocalizedString>
						<LocalizedString Language="uk">Реальна тривалість</LocalizedString>
						<LocalizedString Language="ru">Реальная длительность</LocalizedString>
						<LocalizedString Language="lv">Patiesais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualDuration</DataColumn>
				</Column>
				<Column Alias="ControlDate" ID="13E28FDE-8C1E-48DA-9639-37B92B255B6B" Expression="">
					<Name>
						<LocalizedString Language="en">Control date</LocalizedString>
						<LocalizedString Language="ru">Дата контроля</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Kontroles datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ControlDate</DataColumn>
				</Column>
			</Columns>
			<Data>
				<Table ID="7213A125-2CA4-40EE-A671-B52850F45E7D" />
				<JoinTable ID="3F8270DB-3603-463C-BA59-26B89EBB6CB5" Alias="FileListMain" LeftColumnAlias="PerformerFilesID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="E962AC85-0F53-4439-A1CD-171E46C3EF91" Alias="FileReferences" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="FileListMain" />
				<JoinTable ID="B4562DF8-AF19-4D0F-85CA-53A311354D39" Alias="CardFileMain" LeftColumnAlias="CardFileID" RightColumnAlias="InstanceID" WithTable="FileReferences" />
				<JoinTable ID="D48E6155-C774-4205-AB70-7A67AB69DF22" Alias="Performing" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
			</Data>
		</ViewElement>
		<ViewElement Alias="CommentsView" ID="71A3DA7B-9E22-40D1-97D5-0A1CF9786529">
			<Name>
				<LocalizedString Language="en">Task comments</LocalizedString>
				<LocalizedString Language="ru">Комментарии задания</LocalizedString>
				<LocalizedString Language="uk">Коментарі</LocalizedString>
				<LocalizedString Language="lv">Komentāru skatījums</LocalizedString>
			</Name>
			<Columns>
				<Column Alias="TaskName" ID="DC794031-0ADC-46CF-8497-BD9933AA767F" Expression="">
					<Name>
						<LocalizedString Language="en">Task name</LocalizedString>
						<LocalizedString Language="uk">Назва завдання</LocalizedString>
						<LocalizedString Language="ru">Название задания</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">Name</DataColumn>
				</Column>
				<Column Alias="ExpectedStartDate" ID="6AEBCEB3-C6BA-4A6E-A965-5C4657BBF957" Expression="">
					<Name>
						<LocalizedString Language="en">Expected start date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата початку</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата начала</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ExpectedStartDate</DataColumn>
				</Column>
				<Column Alias="ActualStartDate" ID="B21F53C5-7BD7-410E-ACD8-7ACA316185C5" Expression="">
					<Name>
						<LocalizedString Language="en">Actual start date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата початку</LocalizedString>
						<LocalizedString Language="ru">Реальная дата начала</LocalizedString>
						<LocalizedString Language="lv">Patiesais sākuma datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualStartDate</DataColumn>
				</Column>
				<Column Alias="ExpectedEndDate" ID="C3D46B72-94A0-476F-92D0-99E3CA1A4E54" Expression="">
					<Name>
						<LocalizedString Language="en">Expected end date</LocalizedString>
						<LocalizedString Language="uk">Очікувана дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая дата завершения</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ExpectedEndDate</DataColumn>
				</Column>
				<Column Alias="ActualEndDate" ID="F1A10C07-1FFA-45FC-AEF3-C7EAF9F18CE5" Expression="">
					<Name>
						<LocalizedString Language="en">Actual completion date</LocalizedString>
						<LocalizedString Language="uk">Реальна дата закінчення</LocalizedString>
						<LocalizedString Language="ru">Реальная дата завершения</LocalizedString>
						<LocalizedString Language="lv">Patiesais beigu datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualEndDate</DataColumn>
				</Column>
				<Column Alias="TaskState" ID="AB074A87-EB61-42A8-BCCC-10FD35BA9F97" Expression="">
					<Name>
						<LocalizedString Language="en">Task State</LocalizedString>
						<LocalizedString Language="uk">Стан завдання</LocalizedString>
						<LocalizedString Language="ru">Состояние задания</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma stāvoklis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="" IsEnum="true" ID="F36202F5-4767-4BE4-BCA2-F797CFB425A7">TaskState</DataColumn>
				</Column>
				<Column Alias="TaskContents" ID="03E12E79-0AD1-4548-AAD4-B105B55D88B3" Expression="">
					<Name>
						<LocalizedString Language="en">Task content</LocalizedString>
						<LocalizedString Language="uk">Зміст завдання</LocalizedString>
						<LocalizedString Language="ru">Содержание задания</LocalizedString>
						<LocalizedString Language="lv">Uzdevuma saturs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">Comments</DataColumn>
				</Column>
				<Column Alias="Expired" ID="31735734-7DE7-4379-9832-B068CE1EEF6B" Expression="">
					<Name>
						<LocalizedString Language="en">Expired</LocalizedString>
						<LocalizedString Language="uk">Прострочено</LocalizedString>
						<LocalizedString Language="ru">Просрочено</LocalizedString>
						<LocalizedString Language="lv">Termiņš beidzies</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">IsOverdue</DataColumn>
				</Column>
				<Column Alias="ExpectedDuration" ID="3753ACA1-32FE-44A9-AE90-1F7368294803" Expression="">
					<Name>
						<LocalizedString Language="en">Expected duration</LocalizedString>
						<LocalizedString Language="uk">Очікувана тривалість</LocalizedString>
						<LocalizedString Language="ru">Ожидаемая длительность</LocalizedString>
						<LocalizedString Language="lv">Gaidāmais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ExpectedDuration</DataColumn>
				</Column>
				<Column Alias="ActualDuration" ID="118A02EB-94BA-4233-95E9-A5EA6F8DCC62" Expression="">
					<Name>
						<LocalizedString Language="en">Actual Duration</LocalizedString>
						<LocalizedString Language="uk">Реальна тривалість</LocalizedString>
						<LocalizedString Language="ru">Реальная длительность</LocalizedString>
						<LocalizedString Language="lv">Patiesais ilgums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">ActualDuration</DataColumn>
				</Column>
				<Column Alias="PercentCompleted" ID="7FE025AF-5FEE-48E0-9799-6025FA28179A" Expression="">
					<Name>
						<LocalizedString Language="en">Percent completed</LocalizedString>
						<LocalizedString Language="uk">Відсоток виконання</LocalizedString>
						<LocalizedString Language="ru">Процент исполнения</LocalizedString>
						<LocalizedString Language="lv">Izpilde procentos</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Performing" Separator="">PercentCompleted</DataColumn>
				</Column>
				<Column Alias="ControlDate" ID="E25101BD-19F3-409D-8932-A79742DCD439" Expression="">
					<Name>
						<LocalizedString Language="en">Control date</LocalizedString>
						<LocalizedString Language="ru">Дата контроля</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Kontroles datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="main" Separator="">ControlDate</DataColumn>
				</Column>
				<Column Alias="CurrentPerformer" ID="8BA94CC1-EF1A-44E7-9690-F18E7F1265E6" Expression="">
					<Name>
						<LocalizedString Language="en">Current performer</LocalizedString>
						<LocalizedString Language="ru">Текущий исполнитель</LocalizedString>
						<LocalizedString Language="uk">Поточний виконавець</LocalizedString>
						<LocalizedString Language="lv">Patreizējais izpildītājs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="CurrentPerformer" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="CurrentPerformer" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="CurrentPerformer" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="ProcessName" ID="BD52E8A0-88C6-4F10-8331-290D568C5F43" Expression="">
					<Name>
						<LocalizedString Language="en">Process name</LocalizedString>
						<LocalizedString Language="uk">Назва процесу</LocalizedString>
						<LocalizedString Language="ru">Название процесса</LocalizedString>
						<LocalizedString Language="lv">Procesa nosaukums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="ProcessMainInfo" Separator="">Name</DataColumn>
				</Column>
				<Column Alias="Performers" ID="B730FF1C-DF5F-4352-9763-BCD78E4BC682" Expression="">
					<Name>
						<LocalizedString Language="en">Task performers</LocalizedString>
						<LocalizedString Language="ru">Исполнители задания</LocalizedString>
						<LocalizedString Language="uk">Виконавці</LocalizedString>
						<LocalizedString Language="lv">Izpilīdāji</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="PerfEmployees" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="PerfEmployees" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="PerfEmployees" Separator=" ">MiddleName</DataColumn>
					<CustomAggregation Delimiter="; " TableAlias="CurrentPerformers" />
				</Column>
				<Column Alias="CreationDate" ID="56E9511F-B96B-451F-8CF0-5494BFC20BDD" Expression="">
					<Name>
						<LocalizedString Language="en">Comment date</LocalizedString>
						<LocalizedString Language="ru">Дата комментария</LocalizedString>
						<LocalizedString Language="uk">Дата коментаря</LocalizedString>
						<LocalizedString Language="lv">Izveides datums</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Comments" Separator="">CreationDate</DataColumn>
				</Column>
				<Column Alias="CreatedBy" ID="B168FFFB-0BCA-4813-94DF-BE51C9FFB526" Expression="">
					<Name>
						<LocalizedString Language="en">Author</LocalizedString>
						<LocalizedString Language="ru">Автор</LocalizedString>
						<LocalizedString Language="uk">Автор</LocalizedString>
						<LocalizedString Language="lv">Izveidojis</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Employees" Separator=" ">LastName</DataColumn>
					<DataColumn Alias="" TableAlias="Employees" Separator=" ">FirstName</DataColumn>
					<DataColumn Alias="" TableAlias="Employees" Separator=" ">MiddleName</DataColumn>
				</Column>
				<Column Alias="Comment" ID="9B6D4994-796F-4255-AC04-A1A4FD106687" Expression="">
					<Name>
						<LocalizedString Language="en">Comment</LocalizedString>
						<LocalizedString Language="ru">Комментарий</LocalizedString>
						<LocalizedString Language="uk">Коментар</LocalizedString>
						<LocalizedString Language="lv">Komentārs</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Comments" Separator="">Comment</DataColumn>
				</Column>
				<Column Alias="IsReport" ID="9D61F9C6-98F5-4E98-8F95-8E58788182EE" Expression="">
					<Name>
						<LocalizedString Language="en">Is report</LocalizedString>
						<LocalizedString Language="ru">Является отчетом</LocalizedString>
						<LocalizedString Language="uk">Звіт</LocalizedString>
						<LocalizedString Language="lv">Atskaite</LocalizedString>
					</Name>
					<DataColumn Alias="" TableAlias="Comments" Separator="">IsReport</DataColumn>
				</Column>
			</Columns>
			<Data>
				<Table ID="7213A125-2CA4-40EE-A671-B52850F45E7D" />
				<JoinTable ID="9F3D8474-49A3-43DC-9D2B-59E82CC8F267" Alias="Comments" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="D48E6155-C774-4205-AB70-7A67AB69DF22" Alias="Performing" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="Employees" LeftColumnAlias="CreatedBy" RightColumnAlias="RowID" WithTable="main" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="CurrentPerformer" LeftColumnAlias="CurrentPerformer" RightColumnAlias="RowID" WithTable="Performing" />
				<JoinTable ID="0EF6BCCA-7A09-4027-A3A2-D2EEECA1BF4D" Alias="ProcessMainInfo" LeftColumnAlias="ParentProcessID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="9D09144D-CAEC-4732-AD4D-EB6A3864714A" Alias="CurrentPerformers" LeftColumnAlias="InstanceID" RightColumnAlias="InstanceID" WithTable="main" />
				<JoinTable ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Alias="PerfEmployees" LeftColumnAlias="PerformerID" RightColumnAlias="RowID" WithTable="CurrentPerformers" />
			</Data>
		</ViewElement>
	</ViewElements>
	<VirtualFields>
		<VirtualField Alias="DelegationList" ID="74534C2A-CADC-4ABF-80FB-DD677BB04A48">
			<Name>
				<LocalizedString Language="en">Delegation list</LocalizedString>
				<LocalizedString Language="ru">Список делегирований</LocalizedString>
				<LocalizedString Language="lv">Saišu saraksts</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="7213A125-2CA4-40EE-A671-B52850F45E7D" Version="4000" Type="unistring"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="unistring"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="ActionDate" SectionAlias="__Log" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value=" - " Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="Description" SectionAlias="__Log" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="Concatenate" SectionAlias="Main" Delimiter="; " PrimaryKey="RowID" KeyType="uniqueid" Type="unistring" OrderSection="__Log" OrderField="ActionDate" OrderDescending="false" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;JoinDefs&gt;&lt;JoinDef Alias="__Log" SectionID="96909C05-27C2-4E37-9770-A4D0D2C10CB8" SourceAlias="Main" SourceField="InstanceID" DestField="InstanceID"&gt;&lt;ConditionGroup Operation="And"&gt;&lt;Conditions&gt;&lt;Condition Operation="EQUALS"&gt;&lt;ConditionItems&gt;&lt;ConditionItem Value="Action" SectionAlias="__Log" /&gt;&lt;ConditionItem Value="16" Type="int" /&gt;&lt;/ConditionItems&gt;&lt;/Condition&gt;&lt;/Conditions&gt;&lt;ConditionGroups /&gt;&lt;/ConditionGroup&gt;&lt;/JoinDef&gt;&lt;/JoinDefs&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
		<VirtualField Alias="TaskFilesCount" ID="4D58E996-008A-4324-8E43-0D04638BFBDD">
			<Name>
				<LocalizedString Language="en">Task files count</LocalizedString>
				<LocalizedString Language="ru">Количество файлов задания</LocalizedString>
				<LocalizedString Language="lv">Uzdevuma failu daudzums</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="7213A125-2CA4-40EE-A671-B52850F45E7D" Version="4000" Type="int"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="int"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="SysRowTimestamp" SectionAlias="__FileReferences" Type="int" /&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="Count" SectionAlias="Main" Delimiter="" PrimaryKey="RowID" KeyType="uniqueid" Type="int" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;JoinDefs&gt;&lt;JoinDef Alias="__FileReferences" SectionID="E962AC85-0F53-4439-A1CD-171E46C3EF91" SourceAlias="Main" SourceField="FilesID" DestField="InstanceID" /&gt;&lt;/JoinDefs&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
		<VirtualField Alias="ReportFilesCount" ID="A71BE508-56A0-4417-8D5A-160ED36B8925">
			<Name>
				<LocalizedString Language="en">Report files count</LocalizedString>
				<LocalizedString Language="ru">Количество файлов отчета</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="7213A125-2CA4-40EE-A671-B52850F45E7D" Version="4000" Type="int"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="int"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="SysRowTimestamp" SectionAlias="__FileReferences2" Type="int" /&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="Count" SectionAlias="Main" Delimiter="" PrimaryKey="RowID" KeyType="uniqueid" Type="int" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;JoinDefs&gt;&lt;JoinDef Alias="__FileReferences2" SectionID="E962AC85-0F53-4439-A1CD-171E46C3EF91" SourceAlias="Main" SourceField="PerformerFilesID" DestField="InstanceID" /&gt;&lt;/JoinDefs&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
		<VirtualField Alias="CommentsList" ID="20A4F6D3-BD85-4C31-A94B-B5DB9D4C644E">
			<Name>
				<LocalizedString Language="en">Comments list</LocalizedString>
				<LocalizedString Language="ru">Список комментариев</LocalizedString>
				<LocalizedString Language="lv">Komentāru saraksts</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="7213A125-2CA4-40EE-A671-B52850F45E7D" Version="4000" Type="unistring"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="unistring"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="CreationDate" SectionAlias="__Comments" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value=": " Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="LastName" SectionAlias="__Employees" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value=" " Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="FirstName" SectionAlias="__Employees" Function="Left" ProtectNull="true" Default="" Type="unistring"&gt;&lt;Parameters&gt;&lt;Parameter Value="1" /&gt;&lt;/Parameters&gt;&lt;/DataItem&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="ConditionList"&gt;&lt;CaseItems&gt;&lt;CaseItem&gt;&lt;DataItem Value="." Type="unistring" /&gt;&lt;ConditionGroup Operation="And"&gt;&lt;Conditions&gt;&lt;Condition Operation="ISNOTNULL"&gt;&lt;ConditionItems&gt;&lt;ConditionItem Value="FirstName" SectionAlias="__Employees" /&gt;&lt;/ConditionItems&gt;&lt;/Condition&gt;&lt;/Conditions&gt;&lt;ConditionGroups /&gt;&lt;/ConditionGroup&gt;&lt;/CaseItem&gt;&lt;/CaseItems&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="MiddleName" SectionAlias="__Employees" Function="Left" ProtectNull="true" Default="" Type="unistring"&gt;&lt;Parameters&gt;&lt;Parameter Value="1" /&gt;&lt;/Parameters&gt;&lt;/DataItem&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="ConditionList"&gt;&lt;CaseItems&gt;&lt;CaseItem&gt;&lt;DataItem Value="." Type="unistring" /&gt;&lt;ConditionGroup Operation="And"&gt;&lt;Conditions&gt;&lt;Condition Operation="ISNOTNULL"&gt;&lt;ConditionItems&gt;&lt;ConditionItem Value="MiddleName" SectionAlias="__Employees" /&gt;&lt;/ConditionItems&gt;&lt;/Condition&gt;&lt;/Conditions&gt;&lt;ConditionGroups /&gt;&lt;/ConditionGroup&gt;&lt;/CaseItem&gt;&lt;/CaseItems&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value=": " Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="Comment" SectionAlias="__Comments" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="Concatenate" SectionAlias="Main" Delimiter="; " PrimaryKey="RowID" KeyType="uniqueid" Type="unistring" OrderSection="__Comments" OrderField="CreationDate" OrderDescending="true" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;JoinDefs&gt;&lt;JoinDef Alias="__Comments" SectionID="9F3D8474-49A3-43DC-9D2B-59E82CC8F267" SourceAlias="Main" SourceField="InstanceID" DestField="InstanceID" /&gt;&lt;JoinDef Alias="__Employees" SectionID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" TableName="" SourceAlias="__Comments" SourceField="CreatedBy" DestField="RowID" /&gt;&lt;/JoinDefs&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
		<VirtualField Alias="ChildrenResList" ID="9FD1F385-2DA6-4F65-978F-A035F9E5F239">
			<Name>
				<LocalizedString Language="en">Children resolutions list</LocalizedString>
				<LocalizedString Language="ru">Подчиненные задачи</LocalizedString>
				<LocalizedString Language="lv">Pakļautie uzdevumi</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="7213A125-2CA4-40EE-A671-B52850F45E7D" Version="4000" Type="unistring"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="unistring"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="Description" SectionAlias="__ChildrenInstances" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="Concatenate" SectionAlias="Main" Delimiter="; " PrimaryKey="RowID" KeyType="uniqueid" Type="unistring" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;JoinDefs&gt;&lt;JoinDef Alias="__ChildrenRes" SectionID="BBAA81AA-999D-461B-9B74-2A60A0965555" SourceAlias="Main" SourceField="InstanceID" DestField="InstanceID" /&gt;&lt;JoinDef Alias="__ChildrenInstances" SectionID="" TableName="dvsys_instances" SourceAlias="__ChildrenRes" SourceField="InstanceID" DestField="InstanceID" /&gt;&lt;/JoinDefs&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
		<VirtualField Alias="ChildrenResCount" ID="1F62E5ED-2AD2-49DC-810D-21092FF36F37">
			<Name>
				<LocalizedString Language="en">Children resolutions count</LocalizedString>
				<LocalizedString Language="ru">Количество подчиненных задач</LocalizedString>
				<LocalizedString Language="lv">Pakļauto uzdevumu daudzums</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="7213A125-2CA4-40EE-A671-B52850F45E7D" Version="4000" Type="int"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="int"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="SysRowTimestamp" SectionAlias="__ChildrenRes" Type="int" /&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="Count" SectionAlias="Main" Delimiter="" PrimaryKey="RowID" KeyType="uniqueid" Type="int" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;JoinDefs&gt;&lt;JoinDef Alias="__ChildrenRes" SectionID="BBAA81AA-999D-461B-9B74-2A60A0965555" SourceAlias="Main" SourceField="InstanceID" DestField="InstanceID" /&gt;&lt;/JoinDefs&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
	</VirtualFields>
</CardDefinition>', @XSDSchema='<?xml version="1.0" encoding="utf-8"?>
<xs:schema elementFormDefault="qualified" attributeFormDefault="unqualified" targetNamespace="http://www.docsvision.com/schemas/WorkflowTask" xmlns:my="http://www.docsvision.com/schemas/WorkflowTask" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xs:element name="WorkflowTask">
		<xs:complexType>
			<xs:sequence>
				<xs:element ref="my:MainInfo" minOccurs="0" />
				<xs:element ref="my:Performing" minOccurs="0" />
				<xs:element ref="my:AdditionalSettings" minOccurs="0" />
				<xs:element name="Aliases" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:AliasesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Performers" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:PerformersRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Delegates" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:DelegatesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="CurrentPerformers" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:CurrentPerformersRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Properties" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:PropertiesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Log" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:LogRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Comments" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:CommentsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="References" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:ReferencesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="CompletionParams" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:CompletionParamsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="ChildrenTasks" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:ChildrenTasksRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="CardReferences2" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:CardReferences2Row" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="VariablesHistory" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:VariablesHistoryRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Employees" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:EmployeesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="ChildrenResolutions" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:ChildrenResolutionsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Reports" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:ReportsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="PerformerReferences" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:PerformerReferencesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="CardID" type="xs:string" />
			<xs:attribute name="CardTypeID" type="xs:string" />
			<xs:attribute name="Description" type="xs:string" />
			<xs:attribute name="CreationDateTime" type="xs:dateTime" />
			<xs:attribute name="ChangeDateTime" type="xs:dateTime" />
			<xs:attribute name="Template" type="xs:boolean" />
			<xs:attribute name="Topic" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="MainInfo">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="NamePID" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
			<xs:attribute name="CommentsPID" type="xs:string" />
			<xs:attribute name="CreatedBy" type="xs:string" />
			<xs:attribute name="Cre_LastName" type="xs:string" />
			<xs:attribute name="Cre_FirstName" type="xs:string" />
			<xs:attribute name="Cre_MiddleName" type="xs:string" />
			<xs:attribute name="Cre_DisplayString" type="xs:string" />
			<xs:attribute name="CreatedByPID" type="xs:string" />
			<xs:attribute name="RegisteredBy" type="xs:string" />
			<xs:attribute name="Reg_LastName" type="xs:string" />
			<xs:attribute name="Reg_FirstName" type="xs:string" />
			<xs:attribute name="Reg_MiddleName" type="xs:string" />
			<xs:attribute name="Reg_DisplayString" type="xs:string" />
			<xs:attribute name="RegisteredByPID" type="xs:string" />
			<xs:attribute name="ControlledBy" type="xs:string" />
			<xs:attribute name="Con_LastName" type="xs:string" />
			<xs:attribute name="Con_FirstName" type="xs:string" />
			<xs:attribute name="Con_MiddleName" type="xs:string" />
			<xs:attribute name="Con_DisplayString" type="xs:string" />
			<xs:attribute name="ControlledByPID" type="xs:string" />
			<xs:attribute name="StartASAP" type="xs:boolean" />
			<xs:attribute name="ExpectedDuration" type="xs:int" />
			<xs:attribute name="ExpectedDurationPID" type="xs:string" />
			<xs:attribute name="ExpectedStartDate" type="xs:dateTime" />
			<xs:attribute name="ExpectedStartDatePID" type="xs:string" />
			<xs:attribute name="ExpectedEndDate" type="xs:dateTime" />
			<xs:attribute name="ExpectedEndDatePID" type="xs:string" />
			<xs:attribute name="CreateOutlookTask" type="xs:boolean" />
			<xs:attribute name="Reminder" type="xs:int" />
			<xs:attribute name="ReminderPID" type="xs:string" />
			<xs:attribute name="FilesID" type="xs:string" />
			<xs:attribute name="ParentProcessID" type="xs:string" />
			<xs:attribute name="ParentTaskID" type="xs:string" />
			<xs:attribute name="SettingsStartDate" type="xs:dateTime" />
			<xs:attribute name="SettingsEndDate" type="xs:dateTime" />
			<xs:attribute name="TaskController" type="xs:string" />
			<xs:attribute name="TCo_LastName" type="xs:string" />
			<xs:attribute name="TCo_FirstName" type="xs:string" />
			<xs:attribute name="TCo_MiddleName" type="xs:string" />
			<xs:attribute name="TCo_DisplayString" type="xs:string" />
			<xs:attribute name="SignedByPID" type="xs:string" />
			<xs:attribute name="ControlDate" type="xs:dateTime" />
			<xs:attribute name="ControlDatePID" type="xs:string" />
			<xs:attribute name="ChildTaskCount" type="xs:int" />
			<xs:attribute name="ParentResolutionID" type="xs:string" />
			<xs:attribute name="ParentRes_Description" type="xs:string" />
			<xs:attribute name="ReportID" type="xs:string" />
			<xs:attribute name="Report_Description" type="xs:string" />
			<xs:attribute name="PerformerFilesID" type="xs:string" />
			<xs:attribute name="IsControllerTask" type="xs:boolean" />
			<xs:attribute name="ParentApprovalID" type="xs:string" />
			<xs:attribute name="ParentApp_Description" type="xs:string" />
			<xs:attribute name="ControlledTaskID" type="xs:string" />
			<xs:attribute name="Type" type="xs:string" />
			<xs:attribute name="RefsID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="Performing">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="ActualStartDate" type="xs:dateTime" />
			<xs:attribute name="ActualStartDatePID" type="xs:string" />
			<xs:attribute name="ActualEndDate" type="xs:dateTime" />
			<xs:attribute name="ActualEndDatePID" type="xs:string" />
			<xs:attribute name="TaskState">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
						<xs:enumeration value="7" />
						<xs:enumeration value="8" />
						<xs:enumeration value="9" />
						<xs:enumeration value="10" />
						<xs:enumeration value="11" />
						<xs:enumeration value="12" />
						<xs:enumeration value="13" />
						<xs:enumeration value="14" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="TaskStatePID" type="xs:string" />
			<xs:attribute name="CurrentPerformer" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="DisplayString" type="xs:string" />
			<xs:attribute name="CurrentPerformerPID" type="xs:string" />
			<xs:attribute name="PercentCompleted" type="xs:int" />
			<xs:attribute name="PercentCompletedPID" type="xs:string" />
			<xs:attribute name="ExecutionStarted" type="xs:boolean" />
			<xs:attribute name="ControllerShortcutID" type="xs:string" />
			<xs:attribute name="DelegatedTo" type="xs:string" />
			<xs:attribute name="ReturnReason">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ActualDuration" type="xs:int" />
			<xs:attribute name="ActualDurationPID" type="xs:string" />
			<xs:attribute name="RecreateShortcuts" type="xs:boolean" />
			<xs:attribute name="ReportPID" type="xs:string" />
			<xs:attribute name="IsOverdue" type="xs:boolean" />
			<xs:attribute name="TaskReferencePID" type="xs:string" />
			<xs:attribute name="CompletedByResponsible" type="xs:boolean" />
			<xs:attribute name="CompletedByResponsiblePID" type="xs:string" />
			<xs:attribute name="CompletedEmployeeID" type="xs:string" />
			<xs:attribute name="Com_LastName" type="xs:string" />
			<xs:attribute name="Com_FirstName" type="xs:string" />
			<xs:attribute name="Com_MiddleName" type="xs:string" />
			<xs:attribute name="Com_DisplayString" type="xs:string" />
			<xs:attribute name="CompletedEmployeeIDPID" type="xs:string" />
			<xs:attribute name="IsNewEndDate" type="xs:boolean" />
			<xs:attribute name="NotifyChildren" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="AdditionalSettings">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="CanReject" type="xs:boolean" />
			<xs:attribute name="CanViewLog" type="xs:boolean" />
			<xs:attribute name="CanReschedule" type="xs:boolean" />
			<xs:attribute name="ControllerCanReschedule" type="xs:boolean" />
			<xs:attribute name="CanDelegate" type="xs:boolean" />
			<xs:attribute name="DelegateToAll" type="xs:boolean" />
			<xs:attribute name="IsReportNeeded" type="xs:boolean" />
			<xs:attribute name="CanAddDocuments" type="xs:boolean" />
			<xs:attribute name="AddNewReferences" type="xs:boolean" />
			<xs:attribute name="CompletionText" type="xs:string" />
			<xs:attribute name="CompletionTextPID" type="xs:string" />
			<xs:attribute name="ToRead" type="xs:boolean" />
			<xs:attribute name="CanOpenParent" type="xs:boolean" />
			<xs:attribute name="PerformConfirmation" type="xs:boolean" />
			<xs:attribute name="FinishParam" type="xs:string" />
			<xs:attribute name="IsAddFileNeeded" type="xs:boolean" />
			<xs:attribute name="DelegateToDeputies" type="xs:boolean" />
			<xs:attribute name="JournalsName" type="xs:string" />
			<xs:attribute name="FilesToAddPID" type="xs:string" />
			<xs:attribute name="FilesCount" type="xs:int" />
			<xs:attribute name="DefaultVersioningType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="FinishListOnly" type="xs:boolean" />
			<xs:attribute name="ReportCardRequired" type="xs:boolean" />
			<xs:attribute name="NoDialogOnFinish" type="xs:boolean" />
			<xs:attribute name="TemplateID" type="xs:string" />
			<xs:attribute name="KeepTask" type="xs:boolean" />
			<xs:attribute name="FinishDialogWidth" type="xs:int" />
			<xs:attribute name="FinishDialogHeight" type="xs:int" />
			<xs:attribute name="CanDeleteDocuments" type="xs:boolean" />
			<xs:attribute name="SendAsHTML" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="AliasesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="TaskState">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
						<xs:enumeration value="7" />
						<xs:enumeration value="8" />
						<xs:enumeration value="9" />
						<xs:enumeration value="10" />
						<xs:enumeration value="11" />
						<xs:enumeration value="12" />
						<xs:enumeration value="13" />
						<xs:enumeration value="14" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ActionAlias" type="xs:string" />
			<xs:attribute name="StateAlias" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="PerformersRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="PerformerID" type="xs:string" />
			<xs:attribute name="PerformerIDPID" type="xs:string" />
			<xs:attribute name="PerformerType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="RoutingType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
						<xs:enumeration value="7" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="PerformerName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="DelegatesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="DelegateID" type="xs:string" />
			<xs:attribute name="DelegateIDPID" type="xs:string" />
			<xs:attribute name="DelegateType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ResponseRequired" type="xs:boolean" />
			<xs:attribute name="ResponseRequiredPID" type="xs:string" />
			<xs:attribute name="CanReject" type="xs:boolean" />
			<xs:attribute name="CanRejectPID" type="xs:string" />
			<xs:attribute name="RoutingType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
						<xs:enumeration value="7" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="IsDelegated" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="CurrentPerformersRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="PerformerID" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="PersonalFolder" type="xs:string" />
			<xs:attribute name="RoutingType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="Email" type="xs:string" />
			<xs:attribute name="DisplayString" type="xs:string" />
			<xs:attribute name="DelegatedFrom" type="xs:string" />
			<xs:attribute name="DelegatedTo" type="xs:string" />
			<xs:attribute name="PerformerState">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
						<xs:enumeration value="7" />
						<xs:enumeration value="8" />
						<xs:enumeration value="9" />
						<xs:enumeration value="10" />
						<xs:enumeration value="11" />
						<xs:enumeration value="12" />
						<xs:enumeration value="13" />
						<xs:enumeration value="14" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="OutlookTaskID" type="xs:string" />
			<xs:attribute name="ShortcutID" type="xs:string" />
			<xs:attribute name="ResponseRequired" type="xs:boolean" />
			<xs:attribute name="CanReject" type="xs:boolean" />
			<xs:attribute name="IsActive" type="xs:boolean" />
			<xs:attribute name="CurrentRoutingType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="DeputyFor" type="xs:string" />
			<xs:attribute name="Dep_LastName" type="xs:string" />
			<xs:attribute name="Dep_FirstName" type="xs:string" />
			<xs:attribute name="Dep_MiddleName" type="xs:string" />
			<xs:attribute name="Dep_DisplayString" type="xs:string" />
			<xs:attribute name="OldPerformerID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="PropertiesRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element name="EnumValues" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:EnumValuesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="SelectedValues" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:SelectedValuesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Value" type="my:Variant" />
			<xs:attribute name="_Type_Value" type="my:VariantType" />
			<xs:attribute name="ValuePID" type="xs:string" />
			<xs:attribute name="WriteToCard" type="xs:boolean" />
			<xs:attribute name="WriteToProcess" type="xs:boolean" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="ParamType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
						<xs:enumeration value="7" />
						<xs:enumeration value="8" />
						<xs:enumeration value="9" />
						<xs:enumeration value="10" />
						<xs:enumeration value="11" />
						<xs:enumeration value="12" />
						<xs:enumeration value="13" />
						<xs:enumeration value="14" />
						<xs:enumeration value="15" />
						<xs:enumeration value="16" />
						<xs:enumeration value="17" />
						<xs:enumeration value="18" />
						<xs:enumeration value="19" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ItemType" type="xs:string" />
			<xs:attribute name="ParentProp" type="xs:string" />
			<xs:attribute name="ParentFieldName" type="xs:string" />
			<xs:attribute name="DisplayValue" type="xs:string" />
			<xs:attribute name="ReadOnly" type="xs:boolean" />
			<xs:attribute name="CreationReadOnly" type="xs:boolean" />
			<xs:attribute name="Required" type="xs:boolean" />
			<xs:attribute name="GateID" type="xs:string" />
			<xs:attribute name="VarTypeID" type="xs:int" />
			<xs:attribute name="Hidden" type="xs:boolean" />
			<xs:attribute name="IsCollection" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="EnumValuesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="ValueID" type="xs:int" />
			<xs:attribute name="ValueName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="SelectedValuesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="SelectedValue" type="my:Variant" />
			<xs:attribute name="_Type_SelectedValue" type="my:VariantType" />
			<xs:attribute name="Order" type="xs:int" />
		</xs:complexType>
	</xs:element>
	<xs:element name="LogRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Action">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
						<xs:enumeration value="7" />
						<xs:enumeration value="8" />
						<xs:enumeration value="9" />
						<xs:enumeration value="10" />
						<xs:enumeration value="11" />
						<xs:enumeration value="12" />
						<xs:enumeration value="13" />
						<xs:enumeration value="14" />
						<xs:enumeration value="15" />
						<xs:enumeration value="16" />
						<xs:enumeration value="17" />
						<xs:enumeration value="18" />
						<xs:enumeration value="19" />
						<xs:enumeration value="20" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ActionDate" type="xs:dateTime" />
			<xs:attribute name="ActionBy" type="xs:string" />
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
			<xs:attribute name="PercentCompleted" type="xs:int" />
			<xs:attribute name="TaskState">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
						<xs:enumeration value="7" />
						<xs:enumeration value="8" />
						<xs:enumeration value="9" />
						<xs:enumeration value="10" />
						<xs:enumeration value="11" />
						<xs:enumeration value="12" />
						<xs:enumeration value="13" />
						<xs:enumeration value="14" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="Description" type="xs:string" />
			<xs:attribute name="NewEndDate" type="xs:dateTime" />
		</xs:complexType>
	</xs:element>
	<xs:element name="CommentsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="CreationDate" type="xs:dateTime" />
			<xs:attribute name="CreatedBy" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="DisplayString" type="xs:string" />
			<xs:attribute name="Comment" type="xs:string" />
			<xs:attribute name="IsReport" type="xs:boolean" />
			<xs:attribute name="IsNew" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="ReferencesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="RefType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="RefIDPID" type="xs:string" />
			<xs:attribute name="ReadOnly" type="xs:boolean" />
			<xs:attribute name="Comment" type="xs:string" />
			<xs:attribute name="CommentPID" type="xs:string" />
			<xs:attribute name="Rights">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ModeID" type="xs:string" />
			<xs:attribute name="CommentRequired" type="xs:boolean" />
			<xs:attribute name="OpenImmediately" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="CompletionParamsRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element ref="my:CompletionParamsRow" minOccurs="0" maxOccurs="unbounded" />
				<xs:element name="CompletionEnumValues" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:CompletionEnumValuesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="CompletionSelectedValues" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:CompletionSelectedValuesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="SelectionName" type="xs:string" />
			<xs:attribute name="SelectionNamePID" type="xs:string" />
			<xs:attribute name="ParamType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
						<xs:enumeration value="7" />
						<xs:enumeration value="8" />
						<xs:enumeration value="9" />
						<xs:enumeration value="10" />
						<xs:enumeration value="11" />
						<xs:enumeration value="12" />
						<xs:enumeration value="13" />
						<xs:enumeration value="14" />
						<xs:enumeration value="15" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ParamPID" type="xs:string" />
			<xs:attribute name="SelectedValue" type="xs:string" />
			<xs:attribute name="IsCollection" type="xs:boolean" />
			<xs:attribute name="Required" type="xs:boolean" />
			<xs:attribute name="ReadOnly" type="xs:boolean" />
			<xs:attribute name="LinkValueID" type="xs:int" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="Tag" type="xs:string" />
			<xs:attribute name="NoValueMessage" type="xs:string" />
			<xs:attribute name="NoValueMessagePID" type="xs:string" />
			<xs:attribute name="GateID" type="xs:string" />
			<xs:attribute name="VarTypeID" type="xs:int" />
		</xs:complexType>
	</xs:element>
	<xs:element name="CompletionEnumValuesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="ValueID" type="xs:int" />
			<xs:attribute name="ValueName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="CompletionSelectedValuesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="SelectedValue" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
		</xs:complexType>
	</xs:element>
	<xs:element name="ChildrenTasksRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="TaskID" type="xs:string" />
			<xs:attribute name="Description" type="xs:string" />
			<xs:attribute name="ChildState">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
		</xs:complexType>
	</xs:element>
	<xs:element name="CardReferences2Row">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="RefType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="RefID" type="xs:string" />
			<xs:attribute name="RefURL" type="xs:string" />
			<xs:attribute name="ReadOnly" type="xs:boolean" />
			<xs:attribute name="Comment" type="xs:string" />
			<xs:attribute name="RefRowID" type="xs:string" />
			<xs:attribute name="ModeID" type="xs:string" />
			<xs:attribute name="Rights">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="CommentRequired" type="xs:boolean" />
			<xs:attribute name="OpenImmediately" type="xs:boolean" />
			<xs:attribute name="RefCardID" type="xs:string" />
			<xs:attribute name="RefFolderID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="VariablesHistoryRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element name="Values" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:ValuesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="VarID" type="xs:string" />
			<xs:attribute name="VarName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="ValuesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="ChangeDate" type="xs:dateTime" />
			<xs:attribute name="ChangedBy" type="xs:string" />
			<xs:attribute name="TaskName" type="xs:string" />
			<xs:attribute name="Value" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="EmployeesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="EmployeeID" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="DisplayString" type="xs:string" />
			<xs:attribute name="Type">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="2" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="IsResponsible" type="xs:boolean" />
			<xs:attribute name="DepartmentID" type="xs:string" />
			<xs:attribute name="DepartmentName" type="xs:string" />
			<xs:attribute name="DepartmentFullName" type="xs:string" />
			<xs:attribute name="PositionID" type="xs:string" />
			<xs:attribute name="PositionName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="ChildrenResolutionsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="ResolutionID" type="xs:string" />
			<xs:attribute name="ChildState">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
		</xs:complexType>
	</xs:element>
	<xs:element name="ReportsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="ReportID" type="xs:string" />
			<xs:attribute name="ChangeDate" type="xs:dateTime" />
			<xs:attribute name="Description" type="xs:string" />
			<xs:attribute name="ChildState">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ChildTaskState">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
		</xs:complexType>
	</xs:element>
	<xs:element name="PerformerReferencesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="RefType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="RefID" type="xs:string" />
			<xs:attribute name="RefURL" type="xs:string" />
			<xs:attribute name="ReadOnly" type="xs:boolean" />
			<xs:attribute name="Comment" type="xs:string" />
			<xs:attribute name="ModeID" type="xs:string" />
			<xs:attribute name="RefIDPID" type="xs:string" />
			<xs:attribute name="RefCardID" type="xs:string" />
			<xs:attribute name="RefFolderID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:simpleType name="Variant">
		<xs:union memberTypes="xs:int xs:boolean xs:dateTime xs:string xs:float xs:decimal xs:base64Binary" />
	</xs:simpleType>
	<xs:simpleType name="VariantType">
		<xs:restriction base="xs:string">
			<xs:enumeration value="boolean" />
			<xs:enumeration value="dateTime" />
			<xs:enumeration value="i4" />
			<xs:enumeration value="r8" />
			<xs:enumeration value="number" />
			<xs:enumeration value="uuid" />
			<xs:enumeration value="bin.base64" />
			<xs:enumeration value="string" />
		</xs:restriction>
	</xs:simpleType>
</xs:schema>', @Icon = 'AAABAAIAEBAAAAEACABoBQAAJgAAACAgAAABAAgAqAgAAI4FAAAoAAAAEAAAACAAAAABAAgAAAAAAEABAAAAAAAAAAAAAAABAAAAAAAAAAAAAP///wBtbWwAa2trAGloaABmZmYAcnJyAHFxcQBwb3AAwMDAAGRkZABiYmIAX19fAHJxcQD+/v4AcHFwAG9vbgBsbGwAaWlqAGhnZwDq6+sA6OjoAF1dXABxcnEA/v3+AP39/QD7+/sA+fn5APb29gDz9PMA8fHxAO7u7QDr6+oA5+fnAFxcXABwb28A/Pz8APr6+gD4+PgA9vX2APPz8wDw8PAA7e3tAOrq6gBubm4A+fr6ANiwmQDWrJQA1KeOANKhhgDPmn0AzJN0AOfm5QDl5eYAW1tbAPf29wDz8vIA7+3sAOvp5wDp5+QA6OTjAOTi4QDj4eAA4+PiAFtaWgBpaWkA9PT0APTz8wDWq5IA1KWLANGfgwDOmHoAy5FxAMiLaQDh398A4uLhAFlZWQBnZ2cA6ujnAOjl4wDl4+IA4+DfAOHe3QDf3d0A4OHfAFlZWABlZGQA7u7uAO3u7gDTo4gA0J2AAM2WdwDKj24AyIlmAMaEYADe3dwA3t/eAFhXVwBhYmEA6+rrAOjo5wDi394A4N3cAN/b2wDd2tkA3NvaAN3e3QBVVlUAX19eAOjn5wDn6OcA5ubmAOTj4gDi4eAA4eDfAN/e3gDd3N0AVFRTAF1dWwDl5OUA5eTkAOTl5ADj4+MA4uLiAOHh4gDg4OAA39/eAN7d3gDc3NwAU1NSAFpaWgBaWlkAWFhXAFdYVwBWV1YAVlZUAAAAgAAAgAAAAICAAIAAAACAAIAAgIAAAICAgAAAAP8AAP8AAAD//wD/AAAA/wD/AP//AAAJCQkAEhISAB8fHwAsLCwAOTk5AEVFRQBSUlIAeHh4AIWFhQCSkpIAn5+fAKurqwC4uLgAxcXFANLS0gDe3t4A6+vrAPD7/wCkoKAAwNzAAPDKpgAAAD4AAABdAAAAfAAAAJsAAAC6AAAA2QAAAPAAJCT/AEhI/wBsbP8AkJD/ALS0/wAAFD4AAB5dAAAofAAAMpsAADy6AABG2QAAVfAAJG3/AEiF/wBsnf8AkLX/ALTN/wAAKj4AAD9dAABUfAAAaZsAAH66AACT2QAAqvAAJLb/AEjC/wBszv8AkNr/ALTm/wAAPj4AAF1dAAB8fAAAm5sAALq6AADZ2QAA8PAAJP//AEj//wBs//8AkP//ALT//wAAPioAAF0/AAB8VAAAm2kAALp+AADZkwAA8KoAJP+2AEj/wgBs/84AkP/aALT/5gAAPhQAAF0eAAB8KAAAmzIAALo8AADZRgAA8FUAJP9tAEj/hQBs/50AkP+1ALT/zQAAPgAAAF0AAAB8AAAAmwAAALoAAADZAAAA8AAAJP8kAEj/SABs/2wAkP+QALT/tAAUPgAAHl0AAAAAAAAAAAAAAAAAAAAAAAAAAAAiIiIig4Z1dXV1AAAAAAAieHh4eHh4eICAgHUAAAAAIjxueHh4PoCAgIB1AAAAAAoqKjp4UlKAgICAdQAAAAAKKiozXFxeXl6AgGEAAAAACkJCKjo8eD5SgD4iAAAAABFCQjMzXFxdXlJ4IgAAAAARQkJCKjo8PHh4eCIAAAAAESQkRzMzM1xdeHgiAAAAACMkJCQkQkJCKip4IgAAAAAGJCQkJEJCQioqeCIAAAAABiQkBhERERMKKioiAAAAAAAGBg0koqKiCgoiAAAAAAAAAAAAERERCgAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//wAA4AcAAMADAADAAwAAwAMAAMADAADAAwAAwAMAAMADAADAAwAAwAMAAMADAADAAwAA4AcAAPw/AAD//wAAKAAAACAAAABAAAAAAQAIAAAAAACABAAAAAAAAAAAAAAAAQAAAAAAAAAAAAD///8An5WMAJiTjwCTkY8Awru0ANfX1wDn5+cAgICAAFtbWgDIyMgAwcC/AMG8uQCIiIgASkpKAISEhAB+fn4Az8/PACUlJQBsbWwAdHR0AHNzcwB4eHgA8PDwAPf29wD29vYA7u7uAHBwbwAvLy8A6OjnAOnp6QDh4eEAdXV1APr6+gDv7+8ALi4uAC0tLQA1NTUAv728AG9vbwDt7e0A7OzsAOvr6wDq6uoA6erqAOjo6ADm5uYA5eXlAG5ubgD5+fkA+Pj4APj3+AD19fUA9PP0APLz8wDx8fEAfX19APT09ADz8/MA8vLyAOzt7QDk5OQA+vn6ANe5mgDZuJYA2raSANy1jwDdtIwA3bKJANywhgDbroQA2qh+ANmmewDj4+MAa2trAHx8fADi4uIAampqAHt7ewDXo3UA1qFyAGlpaQB6enkA5eTlAODg4ABnaGcA1J9vANOcbADe394AZ2dmAN3e3QDr7OwA2qqAANKZaADPlGIA5OPjAOXk5ADc3NwAZWVlANvb2wBlZWQAd3d3AM6SYADMkV8A4+LiANra2QBkZGMAdnZ2AN/f3wBjY2MA3t7eAODh4ADY2NgAYmJhAOHi4QDd3d0AYWFgAHJycgBxcXAA1tbWAGBhYADd3dwA1dXVAF5fXQDf4N8A1dXUANrb2gDZ2dkAzc3NAGNjYgBgYF8AAACAAACAAAAAgIAAgAAAAIAAgACAgAAAwMDAAAAA/wAA/wAAAP//AP8AAAD/AP8A//8AAAkJCQASEhIAHx8fACwsLAA5OTkARUVFAFJSUgBfX18AbGxsAIWFhQCSkpIAn5+fAKurqwC4uLgAxcXFANLS0gDw+/8ApKCgAMDcwADwyqYAAAA+AAAAXQAAAHwAAACbAAAAugAAANkAAADwACQk/wBISP8AbGz/AJCQ/wC0tP8AABQ+AAAeXQAAKHwAADKbAAA8ugAARtkAAFXwACRt/wBIhf8AbJ3/AJC1/wC0zf8AACo+AAA/XQAAVHwAAGmbAAB+ugAAk9kAAKrwACS2/wBIwv8AbM7/AJDa/wC05v8AAD4+AABdXQAAfHwAAJubAAC6ugAA2dkAAPDwACT//wBI//8AbP//AJD//wC0//8AAD4qAABdPwAAfFQAAJtpAAC6fgAA2ZMAAPCqACT/tgBI/8IAbP/OAJD/2gC0/+YAAD4UAABdHgAAfCgAAJsyAAC6PAAA2UYAAPBVACT/bQBI/4UAbP+dAJD/tQC0/80AAD4AAABdAAAAfAAAAJsAAAC6AAAA2QAAAPAAACT/JABI/0gAbP9sAJD/kAC0/7QAFD4AAB5dAAAofAAAMpsAADy6AABG2QAAVfAAAG3/JAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB1Sk1RUVlZWWJkamqBcXR0gnt7agAAAAAAAAAAAAAAFGFJTB9UbFhzYWN+aX9wBnd3en2AagAAAAAAAAAAAAAbLyorHi0HLi8vSUlMb1R8bG5zYX17AAAAAAAAAAAAAHYuKCoqHgcuYF9MH1RsWnN5c3NzensAAAAAAAAAAAAAdh0aPCkeL18vch9Ubm5zYWNhYW53eAAAAAAAAAAAAAB1HiIaKE9QU1ddXmZnZ2dnZ2FzbAZ0AAAAAAAAAAAAABUrFyIaKgcuBz1Mch9UbG5zc25sBnQAAAAAAAAAAAAAFCo3FyJHSAdQVlddXmZnZ2dubG9wcQAAAAAAAAAAAABrKTs7NygeLSwuPT1JTB9UbGwfH2ltAAAAAAAAAAAAAGUoOTs3RUYsSE9QVlddXmZnVB9oaWoAAAAAAAAAAAAAFho5OTYXKiopHgcuPT1JTB8fTF9jZAAAAAAAAAAAAABSIjQ0OUNDW1xHSE9QVlddXkxfYGFiAAAAAAAAAAAAAFIXGBk0OxopGioeHS4vLz09TFMuWlkAAAAAAAAAAAAAUjczGBlBQRpERUZHSE9QVldJLi5YWQAAAAAAAAAAAABSOzIyGDkXIhcoKiweLQcuL1MHLVRVAAAAAAAAAAAAAE46MTIyP0AXQkNERUZHSE9QLh0eH1EAAAAAAAAAAAAASzkhPjIZOzc2IhopKiseLQcHHitMTQAAAAAAAAAAAAA4NCEhPj8/NEBBQkNERUZHSCoqKklKAAAAAAAAAAAAADg0ISEhMTEyGBgZOTo7NxciGig8PRMAAAAAAAAAAAAAEBkhISEhITEyMxkZNDU2NxciGhovEwAAAAAAAAAAAAAQGCEhISEoKCkqKywtBwcuLxoXIi4wAAAAAAAAAAAAAAgYISEhIg4jIyQkJCQkJCUFJhoiBycAAAAAAAAAAAAADxcYGBkaEAgbGxsbGxsWDRwFHR4fIAAAAAAAAAAAAAAADwgQEBAEEQMNDQ0NDQ0CEhMUFRYAAAAAAAAAAAAAAAAAAAAAAAIGCgsLCwsMBA0OAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAUGBwcHBwYICQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIDAwMDAwQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/////////////////AAAP/gAAB/4AAAf+AAAH/gAAB/4AAAf+AAAH/gAAB/4AAAf+AAAH/gAAB/4AAAf+AAAH/gAAB/4AAAf+AAAH/gAAB/4AAAf+AAAH/gAAB/4AAAf+AAAH/gAAB/8AAA//+AD///wB///+A////////////8='

DECLARE @ColumnType nvarchar(128)
DECLARE @ColumnSize int
DECLARE @OldAllowsNull bit

-- Update table column [dbo].[dvtable_{7213A125-2CA4-40EE-A671-B52850F45E7D}].[RefsID]
SET @ColumnType = NULL
SET @ColumnSize = NULL
  SELECT @OldAllowsNull = ISNULL(COLUMNPROPERTY(OBJECT_ID('[dbo].[dvtable_{7213A125-2CA4-40EE-A671-B52850F45E7D}]'), 'RefsID', 'AllowsNull'), 1)
  
  SELECT @ColumnType = DATA_TYPE, @ColumnSize = CHARACTER_MAXIMUM_LENGTH
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_NAME = 'dvtable_{7213A125-2CA4-40EE-A671-B52850F45E7D}' AND COLUMN_NAME = 'RefsID'

IF @ColumnType IS NULL
BEGIN
		ALTER TABLE [dbo].[dvtable_{7213A125-2CA4-40EE-A671-B52850F45E7D}] ADD [RefsID] uniqueidentifier NULL
  END
ELSE
IF (@ColumnType <> 'uniqueidentifier') OR (@OldAllowsNull <> 1) OR ((@ColumnSize IS NOT NULL) AND (0 <> 0) AND (@ColumnSize <> 0))
BEGIN

	IF (@ColumnType IN ('image', 'datetime', 'smalldatetime', 'float', 'real', 'bigint', 'int', 'smallint', 'tinyint', 'bit', 'numeric', 'decimal', 'money', 'smallmoney', 'timestamp', 'sql_variant', 'text', 'ntext'))
	BEGIN
		ALTER TABLE [dbo].[dvtable_{7213A125-2CA4-40EE-A671-B52850F45E7D}] DROP COLUMN [RefsID]
		ALTER TABLE [dbo].[dvtable_{7213A125-2CA4-40EE-A671-B52850F45E7D}] ADD [RefsID] uniqueidentifier NULL
	END ELSE
	BEGIN
		ALTER TABLE [dbo].[dvtable_{7213A125-2CA4-40EE-A671-B52850F45E7D}] ALTER COLUMN [RefsID] uniqueidentifier NULL			
	END


END

GO

-------------------------------------------------------------------------------
-- CARD DEFINITION: RefStaff
-------------------------------------------------------------------------------

-- Store card definition
EXECUTE [dbo].[dvsys_cardtype_set_info] @CardTypeID='{6710B92A-E148-4363-8A6F-1AA0EB18936C}', @Alias='RefStaff', @Version=173, @SysVersion=1584, @LibraryID='C257FEAA-7F8C-48BD-AB05-397507F88985', @ControlInfo = 'clsid:{27acd3ae-ea1f-4b7d-ab3d-5ac8aedfb866},license:gdddbdcfdcedegfh', @Options=16802347, @FetchMode=8, @XMLSchema=N'<?xml version="1.0" encoding="utf-8"?>
<CardDefinition xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" ID="6710B92A-E148-4363-8A6F-1AA0EB18936C" Alias="RefStaff" Version="173" LibraryID="C257FEAA-7F8C-48BD-AB05-397507F88985" ProgID="clsid:{27acd3ae-ea1f-4b7d-ab3d-5ac8aedfb866},license:gdddbdcfdcedegfh" Dictionary="true" NonSearchable="true" NonCreatable="true" NonDeletable="true" IconFile="Icons\RefStaff.ico" NoLockOnOpen="true" AlwaysRead="true" ItemsSelectable="true" FetchMode="8" NonArchivable="true">
	<Actions />
	<Modes />
	<Name>
		<LocalizedString Language="en">Employee directory</LocalizedString>
		<LocalizedString Language="uk">Довідник співробітників</LocalizedString>
		<LocalizedString Language="ru">Справочник сотрудников</LocalizedString>
		<LocalizedString Language="lv">Darbinieku mape</LocalizedString>
	</Name>
	<Sections>
		<Section Alias="Units" Type="tree" ID="7473F07F-11ED-4762-9F1E-7FF10808DDD1" ItemsSelectable="true">
			<Name>
				<LocalizedString Language="en">Departments</LocalizedString>
				<LocalizedString Language="uk">Підрозділ</LocalizedString>
				<LocalizedString Language="ru">Подразделения</LocalizedString>
				<LocalizedString Language="lv">Organizācijas vienība</LocalizedString>
			</Name>
			<Field Alias="Name" ID="40CAE88E-D610-4E92-A5B8-66936741249E" Type="unistring" Max="255" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Type" ID="9AF9D292-4087-4DF1-8744-106AF27D0798" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Department type</LocalizedString>
					<LocalizedString Language="uk">Тип підрозділу</LocalizedString>
					<LocalizedString Language="ru">Тип подразделения</LocalizedString>
					<LocalizedString Language="lv">Tips</LocalizedString>
				</Name>
				<Enum Alias="Organization" Value="0">
					<Name>
						<LocalizedString Language="ru">Организация</LocalizedString>
						<LocalizedString Language="uk">Організація</LocalizedString>
						<LocalizedString Language="en">Organization</LocalizedString>
						<LocalizedString Language="lv">Organizācija</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Department" Value="1">
					<Name>
						<LocalizedString Language="ru">Подразделение</LocalizedString>
						<LocalizedString Language="uk">Підрозділ</LocalizedString>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="Manager" ID="815E14FF-995B-4D79-B7C4-8B0F8E4E0A72" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Manager</LocalizedString>
					<LocalizedString Language="uk">Керівник</LocalizedString>
					<LocalizedString Language="ru">Руководитель</LocalizedString>
					<LocalizedString Language="lv">Vadītājs</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Manager_FName">FirstName</RefField>
					<RefField Alias="Manager_MName">MiddleName</RefField>
					<RefField Alias="Manager_LName">LastName</RefField>
				</RefFields>
			</Field>
			<Field Alias="ContactPerson" ID="D452A12C-6EE8-4E78-A09C-2B6BA8C56D5C" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Contact person</LocalizedString>
					<LocalizedString Language="uk">Контактна особа</LocalizedString>
					<LocalizedString Language="ru">Контактное лицо</LocalizedString>
					<LocalizedString Language="lv">Kontakt persona</LocalizedString>
				</Name>
				<RefFields>
					<RefField Alias="Contact_FName">FirstName</RefField>
					<RefField Alias="Contact_MName">MiddleName</RefField>
					<RefField Alias="Contact_LName">LastName</RefField>
				</RefFields>
			</Field>
			<Field Alias="Phone" ID="A83F24E3-E651-457A-AE06-3C9026013090" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Phone</LocalizedString>
					<LocalizedString Language="uk">Телефон</LocalizedString>
					<LocalizedString Language="ru">Телефон</LocalizedString>
					<LocalizedString Language="lv">Telefons</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Fax" ID="A61B99D9-5DE9-4207-9157-1D5CF0A1E685" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Fax</LocalizedString>
					<LocalizedString Language="uk">Факс</LocalizedString>
					<LocalizedString Language="ru">Факс</LocalizedString>
					<LocalizedString Language="lv">Fakss</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Email" ID="7F8A8235-C09D-4AC4-AFD9-1D6C39FF1A25" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">E-mail</LocalizedString>
					<LocalizedString Language="uk">Електронна пошта</LocalizedString>
					<LocalizedString Language="ru">Электронная почта</LocalizedString>
					<LocalizedString Language="lv">E-pasts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Telex" ID="56E21263-CF6E-4344-AEEB-576F42CB0DE9" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Telex</LocalizedString>
					<LocalizedString Language="uk">Телекс</LocalizedString>
					<LocalizedString Language="ru">Телекс</LocalizedString>
					<LocalizedString Language="lv">Vien. Reg. Nr.:</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Account" ID="E319A922-78DA-4430-BB06-464ECA5EDD66" Type="unistring" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Account</LocalizedString>
					<LocalizedString Language="uk">Розрахунковий рахунок</LocalizedString>
					<LocalizedString Language="ru">Расчетный счет</LocalizedString>
					<LocalizedString Language="lv">Konts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CorrespondentAccount" ID="002B315A-4F0F-45AE-86C5-FB5A8C087608" Type="unistring" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">CorrespondentAccount</LocalizedString>
					<LocalizedString Language="uk">Кореспондентський рахунок</LocalizedString>
					<LocalizedString Language="ru">Корреспондентский счет</LocalizedString>
					<LocalizedString Language="lv">Korespondenta konts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="BankName" ID="CAFA94A6-0857-455B-B3FC-18616E30B2AA" Type="unistring" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Bank name</LocalizedString>
					<LocalizedString Language="uk">Назва банку</LocalizedString>
					<LocalizedString Language="ru">Название банка</LocalizedString>
					<LocalizedString Language="lv">Bankas nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="BIK" ID="4FBC5EBB-841E-425D-A6C8-4F0F6E449CA3" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">BIK</LocalizedString>
					<LocalizedString Language="uk">БІК</LocalizedString>
					<LocalizedString Language="ru">БИК</LocalizedString>
					<LocalizedString Language="lv">Konts (EUR)</LocalizedString>
				</Name>
			</Field>
			<Field Alias="INN" ID="5899CCF6-B74E-4529-A5DA-1C5E22EF74DB" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">INN</LocalizedString>
					<LocalizedString Language="uk">ІНН</LocalizedString>
					<LocalizedString Language="ru">ИНН</LocalizedString>
					<LocalizedString Language="lv">INN</LocalizedString>
				</Name>
			</Field>
			<Field Alias="KPP" ID="168A3527-DC3D-40AD-BAE9-A1F13AB2AC5F" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">KPP</LocalizedString>
					<LocalizedString Language="uk">КПП</LocalizedString>
					<LocalizedString Language="ru">КПП</LocalizedString>
					<LocalizedString Language="lv">KPP</LocalizedString>
				</Name>
			</Field>
			<Field Alias="OKPO" ID="283665CA-C5C6-4D91-919B-CBE42491201F" Type="unistring" Max="128" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">OKPO</LocalizedString>
					<LocalizedString Language="uk">ЄРДПОУ</LocalizedString>
					<LocalizedString Language="ru">ОКПО</LocalizedString>
					<LocalizedString Language="lv">Konts (USD):</LocalizedString>
				</Name>
			</Field>
			<Field Alias="OKONH" ID="F3069B2D-34FA-498B-BDB6-64E58CF29D1E" Type="unistring" Max="128" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">OKVED</LocalizedString>
					<LocalizedString Language="uk">ОКВЭД</LocalizedString>
					<LocalizedString Language="ru">ОКВЭД</LocalizedString>
					<LocalizedString Language="lv">OKONH</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RootFolder" ID="FA9ECAC0-32CF-4A06-9CBF-D236A10CCA30" Type="refid" RefType="DA86FABF-4DD7-4A86-B6FF-C58C24D12DE2" RefSection="FE27631D-EEEA-4E2E-A04C-D4351282FB55" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Root folder</LocalizedString>
					<LocalizedString Language="uk">Коренева папка</LocalizedString>
					<LocalizedString Language="ru">Корневая папка</LocalizedString>
					<LocalizedString Language="lv">Sākotnējā mape</LocalizedString>
				</Name>
				<RefFields />
			</Field>
			<Field Alias="TaskFolder" ID="FAEA3567-50B6-4696-BA80-6BC12CB0F0F5" Type="refid" RefType="DA86FABF-4DD7-4A86-B6FF-C58C24D12DE2" RefSection="FE27631D-EEEA-4E2E-A04C-D4351282FB55" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Task folder</LocalizedString>
					<LocalizedString Language="uk">Папка завдань</LocalizedString>
					<LocalizedString Language="ru">Папка заданий</LocalizedString>
					<LocalizedString Language="lv">Uzdevuma mape</LocalizedString>
				</Name>
				<RefFields />
			</Field>
			<Field Alias="IncomingFolder" ID="84366EE8-A9A0-4465-A11C-CA473D130CBC" Type="refid" RefType="DA86FABF-4DD7-4A86-B6FF-C58C24D12DE2" RefSection="FE27631D-EEEA-4E2E-A04C-D4351282FB55" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Incoming Folder</LocalizedString>
					<LocalizedString Language="uk">Папка вхідних документів</LocalizedString>
					<LocalizedString Language="ru">Папка входящих документов</LocalizedString>
					<LocalizedString Language="lv">Saņemto dokumentu mape</LocalizedString>
				</Name>
				<RefFields />
			</Field>
			<Field Alias="OutgoingFolder" ID="0990B460-0590-41DD-9CB9-A431E376403B" Type="refid" RefType="DA86FABF-4DD7-4A86-B6FF-C58C24D12DE2" RefSection="FE27631D-EEEA-4E2E-A04C-D4351282FB55" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Outgoing documents folder</LocalizedString>
					<LocalizedString Language="uk">Папка вихідних документів</LocalizedString>
					<LocalizedString Language="ru">Папка исходящих документов</LocalizedString>
					<LocalizedString Language="lv">Nosūtāmo dokumentu mape</LocalizedString>
				</Name>
				<RefFields />
			</Field>
			<Field Alias="ResolutionFolder" ID="CC89794D-69B4-4ECE-BB83-4C4E80AACBF9" Type="refid" RefType="DA86FABF-4DD7-4A86-B6FF-C58C24D12DE2" RefSection="FE27631D-EEEA-4E2E-A04C-D4351282FB55" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Resolution Folder</LocalizedString>
					<LocalizedString Language="uk">Папка розпорядчих документів</LocalizedString>
					<LocalizedString Language="ru">Папка распорядительных документов</LocalizedString>
					<LocalizedString Language="lv">Rezolūcijas mape</LocalizedString>
				</Name>
				<RefFields />
			</Field>
			<Field Alias="Comments" ID="CDB6F04E-8F2C-424C-A4EA-05CC24A5FD8A" Type="unitext" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Additional information</LocalizedString>
					<LocalizedString Language="uk">Додаткова інформація</LocalizedString>
					<LocalizedString Language="ru">Дополнительная информация</LocalizedString>
					<LocalizedString Language="lv">Papildus informācija</LocalizedString>
				</Name>
			</Field>
			<Field Alias="CalendarID" ID="3D483E19-60A5-47D3-9508-2EDA4004F0EC" Type="refcardid" RefType="F31B9F60-F81F-4825-8216-FC3C1FF15222" RefSection="B788061D-B569-4C44-8F30-EC6C0E791EA9" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Hard" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Business calendar</LocalizedString>
					<LocalizedString Language="uk">Календар робочого часу</LocalizedString>
					<LocalizedString Language="ru">Календарь рабочего времени</LocalizedString>
					<LocalizedString Language="lv">Darba kalendārs</LocalizedString>
				</Name>
				<RefFields />
			</Field>
			<Field Alias="FullName" ID="05D36EEB-1A0B-4CCC-BF99-0C6FE03CBC56" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Full name</LocalizedString>
					<LocalizedString Language="uk">Повна назва</LocalizedString>
					<LocalizedString Language="ru">Полное название</LocalizedString>
					<LocalizedString Language="lv">Pilns vārds</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SyncTag" ID="4D34FB33-3C29-4D3D-A2C5-0DD42777BE00" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Synchronization field</LocalizedString>
					<LocalizedString Language="uk">Поле синхронізації</LocalizedString>
					<LocalizedString Language="ru">Поле синхронизации</LocalizedString>
					<LocalizedString Language="lv">Sinhronizācijas tags</LocalizedString>
				</Name>
			</Field>
			<Field Alias="NotAvailable" ID="CDD30F27-C7C7-4E70-A48B-10688E622C11" Type="bool" DefaultValue="0" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Hide in selection mode</LocalizedString>
					<LocalizedString Language="uk">Не використовується</LocalizedString>
					<LocalizedString Language="ru">Не показывать при выборе</LocalizedString>
					<LocalizedString Language="lv">Nav pieejams </LocalizedString>
				</Name>
			</Field>
			<Field Alias="ADsPath" ID="A4D39F3A-808B-4072-8ABA-B8E811EBD828" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">ADs path</LocalizedString>
					<LocalizedString Language="uk">Шлях до ADs</LocalizedString>
					<LocalizedString Language="ru">Путь в ADs</LocalizedString>
					<LocalizedString Language="lv">AD ceļš</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ADsID" ID="CF79F632-DF3A-4DDC-9FD9-7307B25A8783" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" SuppressSearch="true" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">ADs ID</LocalizedString>
					<LocalizedString Language="uk">ADs ID</LocalizedString>
					<LocalizedString Language="ru">ADs ID</LocalizedString>
					<LocalizedString Language="lv">AD ID</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ADsNotSynchronize" ID="FC6FDD66-DD36-4FFB-BBFC-9341EEA6D4E2" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Not synchronize with ADs</LocalizedString>
					<LocalizedString Language="uk">Не синхронізувати з ADs</LocalizedString>
					<LocalizedString Language="ru">Не синхронизировать с ADs</LocalizedString>
					<LocalizedString Language="lv">Nav sinhronizēts ar AD</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Code" ID="D2512BBE-F55C-499F-87F3-FB0F0ADEA2E8" Type="unistring" Max="16" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Code</LocalizedString>
					<LocalizedString Language="uk">Код</LocalizedString>
					<LocalizedString Language="ru">Код</LocalizedString>
					<LocalizedString Language="lv">Kods</LocalizedString>
				</Name>
			</Field>
			<Field Alias="DuplicateID" ID="FC7CB481-0C02-4474-8909-65C8A1BD39B3" Type="unistring" Max="256" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Duplicate ID</LocalizedString>
					<LocalizedString Language="ru">Идентификатор дубликата</LocalizedString>
				</Name>
			</Field>
			<Section Alias="Employees" Type="coll" ID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" ItemsSelectable="true">
				<Name>
					<LocalizedString Language="en">Employees</LocalizedString>
					<LocalizedString Language="uk">Співробітники</LocalizedString>
					<LocalizedString Language="ru">Сотрудники</LocalizedString>
					<LocalizedString Language="lv">Darbinieki</LocalizedString>
				</Name>
				<Field Alias="FirstName" ID="B2C70F55-C1D9-4504-BBFE-CFB7B3BE0AF6" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">First Name</LocalizedString>
						<LocalizedString Language="uk">Ім''я</LocalizedString>
						<LocalizedString Language="ru">Имя</LocalizedString>
						<LocalizedString Language="lv">Vārds</LocalizedString>
					</Name>
				</Field>
				<Field Alias="MiddleName" ID="8A2C8120-08B8-4E51-98CA-75D5BDB0171A" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Middle Name</LocalizedString>
						<LocalizedString Language="uk">По батькові</LocalizedString>
						<LocalizedString Language="ru">Отчество</LocalizedString>
						<LocalizedString Language="lv">Otrs priekšvārds</LocalizedString>
					</Name>
				</Field>
				<Field Alias="LastName" ID="C93DE5AB-2974-48C5-A1CD-A09F38B300B1" Type="unistring" Max="32" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">LastName</LocalizedString>
						<LocalizedString Language="uk">Прізвище</LocalizedString>
						<LocalizedString Language="ru">Фамилия</LocalizedString>
						<LocalizedString Language="lv">Uzvārds</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Position" ID="E5A6D1A9-3DB1-4F01-B782-95798ED7A8D5" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="CFDFE60A-21A8-4010-84E9-9D2DF348508C" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Position</LocalizedString>
						<LocalizedString Language="uk">Посада</LocalizedString>
						<LocalizedString Language="ru">Должность</LocalizedString>
						<LocalizedString Language="lv">Amats</LocalizedString>
					</Name>
					<RefFields>
						<RefField Alias="PositionName">Name</RefField>
						<RefField Alias="ShortPositionName">ShortName</RefField>
					</RefFields>
				</Field>
				<Field Alias="AccountName" ID="5D3267F0-5A84-4BD4-957F-18E8D8C334A5" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Domain account name</LocalizedString>
						<LocalizedString Language="uk">Обліковий запис домену</LocalizedString>
						<LocalizedString Language="ru">Учетная запись домена</LocalizedString>
						<LocalizedString Language="lv">Domēna konta nosaukums</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Manager" ID="0505CF20-29A4-4EAA-A300-181830B994F1" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Manager</LocalizedString>
						<LocalizedString Language="uk">Керівник</LocalizedString>
						<LocalizedString Language="ru">Руководитель</LocalizedString>
						<LocalizedString Language="lv">Vadītājs</LocalizedString>
					</Name>
					<RefFields>
						<RefField Alias="Manager_FName">FirstName</RefField>
						<RefField Alias="Manager_MName">MiddleName</RefField>
						<RefField Alias="Manager_LName">LastName</RefField>
					</RefFields>
				</Field>
				<Field Alias="RoomNumber" ID="5EC20BC5-DF69-4FDC-BF4E-7D61D2E8AA4B" Type="unistring" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Room Number</LocalizedString>
						<LocalizedString Language="uk">Номер кімнати</LocalizedString>
						<LocalizedString Language="ru">Номер комнаты</LocalizedString>
						<LocalizedString Language="lv">Kabineta numurs</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Phone" ID="574A993D-56CD-4689-9326-ADAEDDABC07F" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Phone</LocalizedString>
						<LocalizedString Language="uk">Телефон</LocalizedString>
						<LocalizedString Language="ru">Телефон</LocalizedString>
						<LocalizedString Language="lv">Telefons</LocalizedString>
					</Name>
				</Field>
				<Field Alias="MobilePhone" ID="38AB129D-7CB1-4884-AF0C-CBFEEC7337E8" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Mobile phone</LocalizedString>
						<LocalizedString Language="uk">Мобільний телефон</LocalizedString>
						<LocalizedString Language="ru">Мобильный телефон</LocalizedString>
						<LocalizedString Language="lv">Mobilais telefons</LocalizedString>
					</Name>
				</Field>
				<Field Alias="HomePhone" ID="FF7248CB-C141-4C4B-8890-FA183BFEB3AF" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Home Phone</LocalizedString>
						<LocalizedString Language="uk">Домашній телефон</LocalizedString>
						<LocalizedString Language="ru">Домашний телефон</LocalizedString>
						<LocalizedString Language="lv">Mājas telefons</LocalizedString>
					</Name>
				</Field>
				<Field Alias="IPPhone" ID="9352490E-D868-4D60-AD21-3D7D000E7C17" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">IP-phone number</LocalizedString>
						<LocalizedString Language="uk">IP-телефон</LocalizedString>
						<LocalizedString Language="ru">IP-телефон</LocalizedString>
						<LocalizedString Language="lv">ID-Telefona numurs</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Fax" ID="C45D4014-2EFB-464A-AE86-19B8388080A9" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Fax</LocalizedString>
						<LocalizedString Language="uk">Факс</LocalizedString>
						<LocalizedString Language="ru">Факс</LocalizedString>
						<LocalizedString Language="lv">Fakss</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Email" ID="C6D6F038-EF68-4E6F-BA62-00DAD8310851" Type="string" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">E-mail</LocalizedString>
						<LocalizedString Language="uk">Електронна пошта</LocalizedString>
						<LocalizedString Language="ru">Электронная почта</LocalizedString>
						<LocalizedString Language="lv">E-pasts</LocalizedString>
					</Name>
				</Field>
				<Field Alias="PersonalFolder" ID="0DFFE486-2BB6-4243-A3C5-207082B386AA" Type="refid" RefType="DA86FABF-4DD7-4A86-B6FF-C58C24D12DE2" RefSection="FE27631D-EEEA-4E2E-A04C-D4351282FB55" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Personal folder</LocalizedString>
						<LocalizedString Language="uk">Особиста папка</LocalizedString>
						<LocalizedString Language="ru">Личная папка</LocalizedString>
						<LocalizedString Language="lv">Personīgā mape</LocalizedString>
					</Name>
					<RefFields />
				</Field>
				<Field Alias="RoutingType" ID="C41EE1FE-CAF4-4F2E-B578-F8497705A1F1" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="5" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Routing type</LocalizedString>
						<LocalizedString Language="uk">Тип маршрутизації</LocalizedString>
						<LocalizedString Language="ru">Тип маршрутизации</LocalizedString>
						<LocalizedString Language="lv">Pārvietošanas tips</LocalizedString>
					</Name>
					<Enum Alias="NoRouting" Value="0">
						<Name>
							<LocalizedString Language="en">No routing</LocalizedString>
							<LocalizedString Language="uk">Не маршрутизувати</LocalizedString>
							<LocalizedString Language="ru">Не маршрутизировать</LocalizedString>
							<LocalizedString Language="lv">Nepārvietošana</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="DescriptionLetter" Value="1">
						<Name>
							<LocalizedString Language="en">Letter with attachments</LocalizedString>
							<LocalizedString Language="uk">Лист з вкладеннями</LocalizedString>
							<LocalizedString Language="ru">Письмо с вложениями</LocalizedString>
							<LocalizedString Language="lv">Vēstule ar pielikumiem</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Appointment" Value="2">
						<Name>
							<LocalizedString Language="en">Outlook appointment</LocalizedString>
							<LocalizedString Language="uk">Подія Outlook</LocalizedString>
							<LocalizedString Language="ru">Событие Outlook</LocalizedString>
							<LocalizedString Language="lv">Outlook tikšanās</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="TaskLink" Value="3">
						<Name>
							<LocalizedString Language="en">Link to task</LocalizedString>
							<LocalizedString Language="uk">Посилання на завдання</LocalizedString>
							<LocalizedString Language="ru">Ссылка на задание</LocalizedString>
							<LocalizedString Language="lv">Uzdevuma saite</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="OfflineTask" Value="4">
						<Name>
							<LocalizedString Language="en">Offline task</LocalizedString>
							<LocalizedString Language="uk">Оффлайн завдання</LocalizedString>
							<LocalizedString Language="ru">Офлайн задание</LocalizedString>
							<LocalizedString Language="lv">Ārlīnijas uzdevums</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="OnlineTask" Value="5">
						<Name>
							<LocalizedString Language="en">Online task</LocalizedString>
							<LocalizedString Language="uk">Онлайн завдання</LocalizedString>
							<LocalizedString Language="ru">Онлайн задание</LocalizedString>
							<LocalizedString Language="lv">Tiešsaistes uzdevums</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="OfflineEncrypted" Value="6">
						<Name>
							<LocalizedString Language="en">Offline encrypted</LocalizedString>
							<LocalizedString Language="uk">Зашифроване оффлайн</LocalizedString>
							<LocalizedString Language="ru">Зашифрованное офлайн</LocalizedString>
							<LocalizedString Language="lv">Ārlīnija atšifrēta</LocalizedString>
						</Name>
					</Enum>
				</Field>
				<Field Alias="IDNumber" ID="64D2A6CD-385B-45DA-9A3F-7E79212A59F7" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Passport number</LocalizedString>
						<LocalizedString Language="uk">Номер паспорту</LocalizedString>
						<LocalizedString Language="ru">Номер паспорта</LocalizedString>
						<LocalizedString Language="lv">Pases nr.</LocalizedString>
					</Name>
				</Field>
				<Field Alias="IDIssuedBy" ID="E30FF7DE-6F15-4E3E-A700-1EEC306EC291" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Passport issued by</LocalizedString>
						<LocalizedString Language="uk">Паспорт виданий</LocalizedString>
						<LocalizedString Language="ru">Паспорт выдан</LocalizedString>
						<LocalizedString Language="lv">Pase izdota</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Comments" ID="396BE1D6-E996-434B-9D72-2B87D720DDE5" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Additional information</LocalizedString>
						<LocalizedString Language="uk">Додаткова інформація</LocalizedString>
						<LocalizedString Language="ru">Дополнительная информация</LocalizedString>
						<LocalizedString Language="lv">Papildus informācija</LocalizedString>
					</Name>
				</Field>
				<Field Alias="CalendarID" ID="3056F2B1-F28A-4357-9F79-3CC9057FB6A3" Type="refcardid" RefType="F31B9F60-F81F-4825-8216-FC3C1FF15222" RefSection="B788061D-B569-4C44-8F30-EC6C0E791EA9" DeleteLinkedOnValueChange="false" DefaultValue="" RefKind="Hard" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Business calendar</LocalizedString>
						<LocalizedString Language="uk">Календар робочого часу</LocalizedString>
						<LocalizedString Language="ru">Календарь рабочего времени</LocalizedString>
						<LocalizedString Language="lv">Darba kalendārs</LocalizedString>
					</Name>
					<RefFields />
				</Field>
				<Field Alias="Status" ID="77258AA6-C887-4899-8042-05DA986A9D3A" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="0" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">&amp;Status:</LocalizedString>
						<LocalizedString Language="uk">Статус</LocalizedString>
						<LocalizedString Language="ru">Статус</LocalizedString>
						<LocalizedString Language="lv">Statuss</LocalizedString>
					</Name>
					<Enum Alias="Active" Value="0">
						<Name>
							<LocalizedString Language="en">Active</LocalizedString>
							<LocalizedString Language="uk">Активний</LocalizedString>
							<LocalizedString Language="ru">Активен</LocalizedString>
							<LocalizedString Language="lv">Aktīvs</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Sick" Value="1">
						<Name>
							<LocalizedString Language="en">Sick</LocalizedString>
							<LocalizedString Language="uk">Хворий</LocalizedString>
							<LocalizedString Language="ru">Болен</LocalizedString>
							<LocalizedString Language="lv">Slims</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Vacation" Value="2">
						<Name>
							<LocalizedString Language="en">On vacation</LocalizedString>
							<LocalizedString Language="uk">У відпустці</LocalizedString>
							<LocalizedString Language="ru">В отпуске</LocalizedString>
							<LocalizedString Language="lv">Atvaļinājumā</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="BusinessTrip" Value="3">
						<Name>
							<LocalizedString Language="en">On business trip</LocalizedString>
							<LocalizedString Language="uk">У відрядженні</LocalizedString>
							<LocalizedString Language="ru">В командировке</LocalizedString>
							<LocalizedString Language="lv">Komandējumā</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Absent" Value="4">
						<Name>
							<LocalizedString Language="en">Absent</LocalizedString>
							<LocalizedString Language="uk">Відсутній</LocalizedString>
							<LocalizedString Language="ru">Отсутствует</LocalizedString>
							<LocalizedString Language="lv">Promesošs</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Discharged" Value="5">
						<Name>
							<LocalizedString Language="en">Discharged</LocalizedString>
							<LocalizedString Language="uk">Звільнений</LocalizedString>
							<LocalizedString Language="ru">Уволен</LocalizedString>
							<LocalizedString Language="lv">Atlaists</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Transfered" Value="6">
						<Name>
							<LocalizedString Language="en">Transfered</LocalizedString>
							<LocalizedString Language="uk">Переведений</LocalizedString>
							<LocalizedString Language="ru">Переведен</LocalizedString>
							<LocalizedString Language="lv">Pārvietots</LocalizedString>
						</Name>
					</Enum>
				</Field>
				<Field Alias="NotAvailable" ID="613BB493-F485-4E23-B669-C6623E12321C" Type="bool" DefaultValue="0" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Hide in selection mode</LocalizedString>
						<LocalizedString Language="uk">Не використовується</LocalizedString>
						<LocalizedString Language="ru">Не показывать при выборе</LocalizedString>
						<LocalizedString Language="lv">Nav pieejams </LocalizedString>
					</Name>
				</Field>
				<Field Alias="Gender" ID="FA92655C-CB78-40C6-9211-21FA5BE6F895" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="0" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Gender</LocalizedString>
						<LocalizedString Language="uk">Стать</LocalizedString>
						<LocalizedString Language="ru">Пол</LocalizedString>
						<LocalizedString Language="lv">Dzimte</LocalizedString>
					</Name>
					<Enum Alias="None" Value="0">
						<Name>
							<LocalizedString Language="en">None</LocalizedString>
							<LocalizedString Language="uk">Відсутні</LocalizedString>
							<LocalizedString Language="ru">Нет</LocalizedString>
							<LocalizedString Language="lv">Nekas</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Male" Value="1">
						<Name>
							<LocalizedString Language="en">Male</LocalizedString>
							<LocalizedString Language="uk">Чоловіча</LocalizedString>
							<LocalizedString Language="ru">Мужской</LocalizedString>
							<LocalizedString Language="lv">Vīrietis</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Female" Value="2">
						<Name>
							<LocalizedString Language="en">Female</LocalizedString>
							<LocalizedString Language="uk">Жіноча</LocalizedString>
							<LocalizedString Language="ru">Женский</LocalizedString>
							<LocalizedString Language="lv">Sieviete</LocalizedString>
						</Name>
					</Enum>
				</Field>
				<Field Alias="SyncTag" ID="1110622A-0A6C-4708-B563-720E537227C4" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Synchronization field</LocalizedString>
						<LocalizedString Language="uk">Поле синхронізації</LocalizedString>
						<LocalizedString Language="ru">Поле синхронизации</LocalizedString>
						<LocalizedString Language="lv">Sinhronizācijas tags</LocalizedString>
					</Name>
				</Field>
				<Field Alias="ActiveEmployee" ID="905D4184-6692-4FBA-8ADC-C882E164AFCF" Type="refid" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Active employee</LocalizedString>
						<LocalizedString Language="uk">Актуальний співробітник</LocalizedString>
						<LocalizedString Language="ru">Актуальный сотрудник</LocalizedString>
						<LocalizedString Language="lv">Aktīvs darbinieks</LocalizedString>
					</Name>
				</Field>
				<Field Alias="ADsNotSynchronize" ID="498A4756-7BBC-438F-B488-6CD7607CDEDD" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Not synchronize with ADs</LocalizedString>
						<LocalizedString Language="uk">Не синхронізувати з ADs</LocalizedString>
						<LocalizedString Language="ru">Не синхронизировать с ADs</LocalizedString>
						<LocalizedString Language="lv">Nav sinhronizēts ar AD</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Importance" ID="3AA2DA76-05E5-4C56-BEA6-0A60BA6FE68F" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Importance</LocalizedString>
						<LocalizedString Language="uk">Значимість</LocalizedString>
						<LocalizedString Language="ru">Значимость</LocalizedString>
						<LocalizedString Language="lv">Nozīmība</LocalizedString>
					</Name>
				</Field>
				<Field Alias="AccountSID" ID="6E2F4C3F-2648-4E51-8F97-1FCC9E41EDAC" Type="string" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Account SID</LocalizedString>
						<LocalizedString Language="uk">SID облікового запису</LocalizedString>
						<LocalizedString Language="ru">SID учетной записи</LocalizedString>
						<LocalizedString Language="lv">Konta SID</LocalizedString>
					</Name>
				</Field>
				<Field Alias="DisplayString" ID="05A1908A-DB46-47D8-896C-76CAED1D3DDD" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Display string</LocalizedString>
						<LocalizedString Language="ru">Строка отображения</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Attēlot virkni</LocalizedString>
					</Name>
				</Field>
				<Field Alias="BirthDate" ID="919EA91D-5E87-4553-9309-F5A8A31CC967" Type="datetime" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Birth date</LocalizedString>
						<LocalizedString Language="ru">Дата рождения</LocalizedString>
						<LocalizedString Language="lv">Dzmišanas datums</LocalizedString>
					</Name>
				</Field>
				<Field Alias="ClockNumber" ID="7659A92C-47FD-46F3-92C2-5D9CE0CD833D" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Clock number</LocalizedString>
						<LocalizedString Language="ru">Табельный номер</LocalizedString>
						<LocalizedString Language="lv">Pulksteņa numurs</LocalizedString>
					</Name>
				</Field>
				<Field Alias="IDCode" ID="4A17F46D-A641-4371-9FB0-1908653EDFBC" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">ID code</LocalizedString>
						<LocalizedString Language="ru">ID код</LocalizedString>
						<LocalizedString Language="lv">ID kods</LocalizedString>
					</Name>
				</Field>
				<Field Alias="DuplicateID" ID="D67F756B-29D3-426D-8168-D11928ABAB88" Type="unistring" Max="256" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Duplicate ID</LocalizedString>
						<LocalizedString Language="ru">Идентификатор дубликата</LocalizedString>
					</Name>
				</Field>
				<SearchWords>
					<SearchWord Alias="I">
						<Name>
							<LocalizedString Language="en">I</LocalizedString>
							<LocalizedString Language="uk">Я</LocalizedString>
							<LocalizedString Language="ru">Я</LocalizedString>
							<LocalizedString Language="lv">Es</LocalizedString>
						</Name>
					</SearchWord>
					<SearchWord Alias="Manager">
						<Name>
							<LocalizedString Language="en">Manager</LocalizedString>
							<LocalizedString Language="uk">Керівник</LocalizedString>
							<LocalizedString Language="ru">Руководитель</LocalizedString>
							<LocalizedString Language="lv">Vadītājs</LocalizedString>
						</Name>
					</SearchWord>
				</SearchWords>
				<Section Alias="Deputies" Type="coll" ID="ED414CB4-B205-4BE4-A2FA-5C0D3347CEB3">
					<Name>
						<LocalizedString Language="ru">Заместители</LocalizedString>
						<LocalizedString Language="uk">Замісники</LocalizedString>
						<LocalizedString Language="en">Substitutes</LocalizedString>
						<LocalizedString Language="lv">Padotie</LocalizedString>
					</Name>
					<Field Alias="Order" ID="E54EF8D8-F676-4FFC-B5F6-D3DB3B1A0F54" Type="int" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Order</LocalizedString>
							<LocalizedString Language="uk">Порядок</LocalizedString>
							<LocalizedString Language="ru">Порядок</LocalizedString>
							<LocalizedString Language="lv">Kārtība</LocalizedString>
						</Name>
					</Field>
					<Field Alias="DeputyID" ID="B1CCA1F4-088B-4D93-A85C-80F0958BF1D2" Type="refid" NotNull="true" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="ru">ID заместителя</LocalizedString>
							<LocalizedString Language="uk">ID замісника</LocalizedString>
							<LocalizedString Language="en">Substitute ID</LocalizedString>
							<LocalizedString Language="lv">Padotā ID</LocalizedString>
						</Name>
						<RefFields>
							<RefField Alias="">LastName</RefField>
							<RefField Alias="">FirstName</RefField>
							<RefField Alias="">MiddleName</RefField>
							<RefField Alias="">Position</RefField>
							<RefField Alias="">Status</RefField>
						</RefFields>
					</Field>
					<Field Alias="SyncTag" ID="4144B2A2-AAE9-4D18-B849-0A2325CE44BC" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Synchronization field</LocalizedString>
							<LocalizedString Language="uk">Поле синхронізації</LocalizedString>
							<LocalizedString Language="ru">Поле синхронизации</LocalizedString>
							<LocalizedString Language="lv">Sinhronizācijas tags</LocalizedString>
						</Name>
					</Field>
					<Field Alias="Performing" ID="442CEBD9-169E-429B-AAED-C9D6662E3853" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="1" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Performance</LocalizedString>
							<LocalizedString Language="ru">Исполнение</LocalizedString>
							<LocalizedString Language="uk">Виконання</LocalizedString>
							<LocalizedString Language="lv">Izpilde</LocalizedString>
						</Name>
					</Field>
					<Field Alias="Control" ID="56F90471-5632-4490-825F-7FB290637620" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Responsible performance</LocalizedString>
							<LocalizedString Language="ru">Ответственное исполнение</LocalizedString>
							<LocalizedString Language="uk">TRANSLATION</LocalizedString>
							<LocalizedString Language="lv">Kontrolēt</LocalizedString>
						</Name>
					</Field>
					<Field Alias="Signature" ID="3EE530D1-9158-43CD-AAF1-B1F8D1E9E5B5" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Signature</LocalizedString>
							<LocalizedString Language="ru">Подпись</LocalizedString>
							<LocalizedString Language="uk">TRANSLATION</LocalizedString>
							<LocalizedString Language="lv">Paraksts</LocalizedString>
						</Name>
					</Field>
					<Field Alias="SignatureComment" ID="B8231FC9-EEC5-45C1-B282-13F2732DA6D6" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Signature comment</LocalizedString>
							<LocalizedString Language="ru">Комментарий к подписи</LocalizedString>
							<LocalizedString Language="uk">TRANSLATION</LocalizedString>
							<LocalizedString Language="lv">Paraksta komentārs</LocalizedString>
						</Name>
					</Field>
					<Field Alias="PermanentDeputy" ID="B4316D25-8651-4496-A301-0992AB11D050" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Permanent substitute</LocalizedString>
							<LocalizedString Language="ru">Постоянный заместитель</LocalizedString>
							<LocalizedString Language="uk">TRANSLATION</LocalizedString>
							<LocalizedString Language="lv">Nemainīgs vietnieks</LocalizedString>
						</Name>
					</Field>
					<SortBy>
						<Field>Order</Field>
					</SortBy>
					<Constraints>
						<Constraint AllowNulls="false" Type="UniqueSection">
							<ConstraintField>DeputyID</ConstraintField>
						</Constraint>
					</Constraints>
					<DisplayFields />
				</Section>
				<Section Alias="NameCases" Type="coll" ID="4A40AE5B-E445-4D3F-AF34-04A0BE696200" SuppressSearch="true">
					<Name>
						<LocalizedString Language="en">Name cases</LocalizedString>
						<LocalizedString Language="uk">Відмінки імені</LocalizedString>
						<LocalizedString Language="ru">Падежи имени</LocalizedString>
						<LocalizedString Language="lv">Nosaukuma locījumi</LocalizedString>
					</Name>
					<Field Alias="NameCase" ID="9511051D-A784-44F6-B1A1-AC7F6A910318" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Name case</LocalizedString>
							<LocalizedString Language="uk">Відмінок імені</LocalizedString>
							<LocalizedString Language="ru">Падеж имени</LocalizedString>
							<LocalizedString Language="lv">Nosaukuma locījums</LocalizedString>
						</Name>
						<Enum Alias="Nominative" Value="0">
							<Name>
								<LocalizedString Language="en">Nominative</LocalizedString>
								<LocalizedString Language="uk">Називний</LocalizedString>
								<LocalizedString Language="ru">Именительный</LocalizedString>
								<LocalizedString Language="lv">Nominatīvs</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Genitive" Value="1">
							<Name>
								<LocalizedString Language="en">Genitive</LocalizedString>
								<LocalizedString Language="uk">Родовий</LocalizedString>
								<LocalizedString Language="ru">Родительный</LocalizedString>
								<LocalizedString Language="lv">Ģenitīvs</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Dative" Value="2">
							<Name>
								<LocalizedString Language="en">Dative</LocalizedString>
								<LocalizedString Language="uk">Давальний</LocalizedString>
								<LocalizedString Language="ru">Дательный</LocalizedString>
								<LocalizedString Language="lv">Datīvs</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Accusative" Value="3">
							<Name>
								<LocalizedString Language="en">Accusative</LocalizedString>
								<LocalizedString Language="uk">Знахідний</LocalizedString>
								<LocalizedString Language="ru">Винительный</LocalizedString>
								<LocalizedString Language="lv">Akuzatīvs</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Instrumental" Value="4">
							<Name>
								<LocalizedString Language="en">Instrumental</LocalizedString>
								<LocalizedString Language="uk">Орудний</LocalizedString>
								<LocalizedString Language="ru">Творительный</LocalizedString>
								<LocalizedString Language="lv">Instrumentāls</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="Prepositional" Value="5">
							<Name>
								<LocalizedString Language="en">Prepositional</LocalizedString>
								<LocalizedString Language="uk">Місцевий</LocalizedString>
								<LocalizedString Language="ru">Предложный</LocalizedString>
								<LocalizedString Language="lv">Prepozicionāls</LocalizedString>
							</Name>
						</Enum>
					</Field>
					<Field Alias="FirstName" ID="1C9AB95D-DA0E-4DF1-B028-5DA2D93CE1D7" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">First Name</LocalizedString>
							<LocalizedString Language="uk">Ім''я</LocalizedString>
							<LocalizedString Language="ru">Имя</LocalizedString>
							<LocalizedString Language="lv">Vārds</LocalizedString>
						</Name>
					</Field>
					<Field Alias="MiddleName" ID="8E2CD64E-0EB7-4CEC-80BC-D7A362776BD4" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Middle Name</LocalizedString>
							<LocalizedString Language="uk">По батькові</LocalizedString>
							<LocalizedString Language="ru">Отчество</LocalizedString>
							<LocalizedString Language="lv">Otrs priekšvārds</LocalizedString>
						</Name>
					</Field>
					<Field Alias="LastName" ID="23C7590D-A378-4320-B202-F9FFC728271F" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">LastName</LocalizedString>
							<LocalizedString Language="uk">Прізвище</LocalizedString>
							<LocalizedString Language="ru">Фамилия</LocalizedString>
							<LocalizedString Language="lv">Uzvārds</LocalizedString>
						</Name>
					</Field>
					<DisplayFields />
				</Section>
				<Section Alias="Pictures" Type="coll" ID="E722EEE5-64C3-4832-8C32-60BBE53E0A64" SuppressSearch="true">
					<Name>
						<LocalizedString Language="en">Photos</LocalizedString>
						<LocalizedString Language="uk">Фотокартки</LocalizedString>
						<LocalizedString Language="ru">Фотографии</LocalizedString>
						<LocalizedString Language="lv">Bildes</LocalizedString>
					</Name>
					<Field Alias="Picture" ID="310082FB-1400-4BA9-B677-9C2C825C6237" Type="image" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Photo</LocalizedString>
							<LocalizedString Language="uk">Фотокартка</LocalizedString>
							<LocalizedString Language="ru">Фотография</LocalizedString>
							<LocalizedString Language="lv">Bilde</LocalizedString>
						</Name>
					</Field>
					<Field Alias="ImageFormat" ID="F74A92F9-05D3-406C-B99D-28E134D7FCB8" Type="enum" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
						<Name>
							<LocalizedString Language="en">Image format</LocalizedString>
							<LocalizedString Language="uk">Формат зображення</LocalizedString>
							<LocalizedString Language="ru">Формат изображения</LocalizedString>
							<LocalizedString Language="lv">Attēla formāts</LocalizedString>
						</Name>
						<Enum Alias="JPEG" Value="0">
							<Name>
								<LocalizedString Language="en">JPEG</LocalizedString>
								<LocalizedString Language="uk">JPEG</LocalizedString>
								<LocalizedString Language="ru">JPEG</LocalizedString>
								<LocalizedString Language="lv">JPEG</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="TIFF" Value="1">
							<Name>
								<LocalizedString Language="en">TIFF</LocalizedString>
								<LocalizedString Language="uk">TIFF</LocalizedString>
								<LocalizedString Language="ru">TIFF</LocalizedString>
								<LocalizedString Language="lv">TIFF</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="BMP" Value="2">
							<Name>
								<LocalizedString Language="en">BMP</LocalizedString>
								<LocalizedString Language="uk">BMP</LocalizedString>
								<LocalizedString Language="ru">BMP</LocalizedString>
								<LocalizedString Language="lv">BMP</LocalizedString>
							</Name>
						</Enum>
						<Enum Alias="GIF" Value="3">
							<Name>
								<LocalizedString Language="en">GIF</LocalizedString>
								<LocalizedString Language="uk">GIF</LocalizedString>
								<LocalizedString Language="ru">GIF</LocalizedString>
								<LocalizedString Language="lv">GIF</LocalizedString>
							</Name>
						</Enum>
					</Field>
					<DisplayFields />
				</Section>
				<SortBy>
					<Field>LastName</Field>
					<Field>FirstName</Field>
					<Field>MiddleName</Field>
				</SortBy>
				<DisplayFields FormatString="">
					<DisplayField>LastName</DisplayField>
					<DisplayField>FirstName</DisplayField>
					<DisplayField>MiddleName</DisplayField>
				</DisplayFields>
			</Section>
			<Section Alias="Addresses" Type="coll" ID="DC55DCA5-5D69-4FC4-90B1-C62E93A91B73">
				<Name>
					<LocalizedString Language="en">Addresses</LocalizedString>
					<LocalizedString Language="uk">Адреса</LocalizedString>
					<LocalizedString Language="ru">Адреса</LocalizedString>
					<LocalizedString Language="lv">Adreses</LocalizedString>
				</Name>
				<Field Alias="AddressType" ID="EC934352-F4B0-49FD-8FFF-DF6C94FEA876" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Address type</LocalizedString>
						<LocalizedString Language="uk">Тип адреси</LocalizedString>
						<LocalizedString Language="ru">Тип адреса</LocalizedString>
						<LocalizedString Language="lv">Adreses tips</LocalizedString>
					</Name>
					<Enum Alias="ContactAddress" Value="0">
						<Name>
							<LocalizedString Language="en">Contact address</LocalizedString>
							<LocalizedString Language="uk">Контактна адреса</LocalizedString>
							<LocalizedString Language="ru">Контактный адрес</LocalizedString>
							<LocalizedString Language="lv">Kontakt adrese</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="PostAddress" Value="1">
						<Name>
							<LocalizedString Language="en">Post address</LocalizedString>
							<LocalizedString Language="uk">Поштова адреса</LocalizedString>
							<LocalizedString Language="ru">Почтовый адрес</LocalizedString>
							<LocalizedString Language="lv">Pasta adrese</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="LegalAddress" Value="2">
						<Name>
							<LocalizedString Language="en">Legal address</LocalizedString>
							<LocalizedString Language="uk">Бридична адреса</LocalizedString>
							<LocalizedString Language="ru">Юридический адрес</LocalizedString>
							<LocalizedString Language="lv">Juridiskā adrese</LocalizedString>
						</Name>
					</Enum>
				</Field>
				<Field Alias="ZipCode" ID="0AE6E8F5-FD2B-4DD9-BBFA-77BC5D92F439" Type="unistring" Max="32" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Zip code</LocalizedString>
						<LocalizedString Language="uk">Індекс</LocalizedString>
						<LocalizedString Language="ru">Индекс</LocalizedString>
						<LocalizedString Language="lv">Pasta kods</LocalizedString>
					</Name>
				</Field>
				<Field Alias="City" ID="13E79984-899C-45CE-9BB5-872FB636B80F" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">City</LocalizedString>
						<LocalizedString Language="uk">Місто</LocalizedString>
						<LocalizedString Language="ru">Город</LocalizedString>
						<LocalizedString Language="lv">Pilsēta</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Address" ID="728508A6-E471-4823-9768-9B805B53ACE7" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Address</LocalizedString>
						<LocalizedString Language="uk">Адреса</LocalizedString>
						<LocalizedString Language="ru">Адрес</LocalizedString>
						<LocalizedString Language="lv">Adrese</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Country" ID="D649BA7B-130A-4802-B01D-0DC8A1CDF42A" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Country</LocalizedString>
						<LocalizedString Language="uk">Країна</LocalizedString>
						<LocalizedString Language="ru">Страна</LocalizedString>
						<LocalizedString Language="lv">Valsts</LocalizedString>
					</Name>
				</Field>
				<DisplayFields />
			</Section>
			<Section Alias="EmployeesFormat" Type="coll" ID="BD286CA5-2F4B-48AB-8C6A-51B77779ACBC">
				<Name>
					<LocalizedString Language="en">Employee display format</LocalizedString>
					<LocalizedString Language="ru">Формат отображения сотрудников</LocalizedString>
					<LocalizedString Language="uk">TRANSLATION</LocalizedString>
					<LocalizedString Language="lv">Darbinieku formāts</LocalizedString>
				</Name>
				<Field Alias="Order" ID="85748DE4-22DC-484E-979F-E610B011B1FB" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Order</LocalizedString>
						<LocalizedString Language="ru">Порядок</LocalizedString>
						<LocalizedString Language="uk">Порядок</LocalizedString>
						<LocalizedString Language="lv">Kārtība</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FieldName" ID="514F7457-BEFF-48AE-9332-4BBCFC04E49F" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Field</LocalizedString>
						<LocalizedString Language="ru">Поле</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Lauks</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FirstLetterOnly" ID="6C410771-1F44-4FFB-90D6-94A26E00DD56" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">First symbol only</LocalizedString>
						<LocalizedString Language="ru">Только первый символ</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Tikai pirmo burta</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Prefix" ID="99A46089-A08F-4D62-8397-DA954EF26BF5" Type="unistring" Max="16" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Prefix</LocalizedString>
						<LocalizedString Language="ru">Префикс</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Prefikss</LocalizedString>
					</Name>
				</Field>
				<Field Alias="Suffix" ID="6B9F832E-DE62-41A0-93BF-1CBD906959E6" Type="unistring" Max="16" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Suffix</LocalizedString>
						<LocalizedString Language="ru">Суффикс</LocalizedString>
						<LocalizedString Language="uk">TRANSLATION</LocalizedString>
						<LocalizedString Language="lv">Sufikss</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>Order</Field>
				</SortBy>
				<DisplayFields />
			</Section>
			<Section Alias="EmplViewFields" Type="coll" ID="C2EFA36A-5D64-4694-BB39-579CF53465AD">
				<Name>
					<LocalizedString Language="en">Displayed fields of department employees</LocalizedString>
					<LocalizedString Language="ru">Отображаемые поля сотрудников подразделения</LocalizedString>
					<LocalizedString Language="lv">Departamenta darbinieku attēlotie lauki</LocalizedString>
				</Name>
				<Field Alias="Order" ID="819272A6-73EB-4A1D-A973-3C8FD9C9B00B" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Order</LocalizedString>
						<LocalizedString Language="ru">Порядок</LocalizedString>
						<LocalizedString Language="lv">Kārtība</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FieldName" ID="CA8EDF70-A8B0-426C-84F8-68C50D007020" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Field</LocalizedString>
						<LocalizedString Language="ru">Поле</LocalizedString>
						<LocalizedString Language="lv">Lauks</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FirstLetterOnly" ID="880077B1-C73C-4C3D-9F45-7842DB36CAEA" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">First symbol only</LocalizedString>
						<LocalizedString Language="ru">Только первый символ</LocalizedString>
						<LocalizedString Language="lv">Tikai pirmo burtu</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>Order</Field>
				</SortBy>
				<DisplayFields />
			</Section>
			<Section Alias="DepViewFields" Type="coll" ID="DC47D0D9-D83E-4AB5-A6AF-CA197FE1444C">
				<Name>
					<LocalizedString Language="en">Child departments view fields</LocalizedString>
					<LocalizedString Language="ru">Отображаемые поля подчиненных подразделений</LocalizedString>
					<LocalizedString Language="lv">Apakšnodaļu lauku pārskats</LocalizedString>
				</Name>
				<Field Alias="Order" ID="B63FF0B7-075F-45F4-BF9A-CCF7624D33E8" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Order</LocalizedString>
						<LocalizedString Language="ru">Порядок</LocalizedString>
						<LocalizedString Language="lv">Kārtība</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FieldName" ID="D8A1D30C-DD80-4107-B28D-B5524259AAF8" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Field</LocalizedString>
						<LocalizedString Language="ru">Поле</LocalizedString>
						<LocalizedString Language="lv">Lauks</LocalizedString>
					</Name>
				</Field>
				<Field Alias="FirstLetterOnly" ID="F4AFBFB8-5467-4CEE-BBB6-5D9610BC4872" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">First symbol only</LocalizedString>
						<LocalizedString Language="ru">Только первый символ</LocalizedString>
						<LocalizedString Language="lv">Tikai pirmo burta</LocalizedString>
					</Name>
				</Field>
				<SortBy>
					<Field>Order</Field>
				</SortBy>
				<DisplayFields />
			</Section>
			<SortBy>
				<Field>Name</Field>
			</SortBy>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueTree">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields FormatString="">
				<DisplayField>Name</DisplayField>
			</DisplayFields>
		</Section>
		<Section Alias="AlternateHierarchy" Type="tree" ID="5B607FFC-7EA2-47B1-90D4-BB72A0FE7280" ItemsSelectable="true">
			<Name>
				<LocalizedString Language="en">Groups</LocalizedString>
				<LocalizedString Language="uk">Групи</LocalizedString>
				<LocalizedString Language="ru">Группы</LocalizedString>
				<LocalizedString Language="lv">Grupas</LocalizedString>
			</Name>
			<Field Alias="Name" ID="C1D88599-9DEB-47AD-8A12-0BACD6E6717A" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comments" ID="C853424D-3DCE-4387-8B28-F1F81F49BB61" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comments</LocalizedString>
					<LocalizedString Language="uk">Коментарі</LocalizedString>
					<LocalizedString Language="ru">Комментарии</LocalizedString>
					<LocalizedString Language="lv">Komentāri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="AccountName" ID="838FBFDC-CD0B-470C-A9B2-98B4D2547F4C" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Account name</LocalizedString>
					<LocalizedString Language="uk">Обліковий запис</LocalizedString>
					<LocalizedString Language="ru">Учетная запись</LocalizedString>
					<LocalizedString Language="lv">Konta nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefreshADsGroup" ID="1F371519-2A35-46B5-8FC3-EA65DB54D4EA" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Refresh ADs group</LocalizedString>
					<LocalizedString Language="uk">Поновлювати групу ADs</LocalizedString>
					<LocalizedString Language="ru">Обновлять группу ADs</LocalizedString>
					<LocalizedString Language="lv">Atjaunot AD grupu</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ADsNotSynchronize" ID="06590B13-658E-475A-A466-A78D59DBD12F" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Not synchronize with ADs</LocalizedString>
					<LocalizedString Language="uk">Не синхронізувати з ADs</LocalizedString>
					<LocalizedString Language="ru">Не синхронизировать с ADs</LocalizedString>
					<LocalizedString Language="lv">Nav sinhronizēts ar AD</LocalizedString>
				</Name>
			</Field>
			<Field Alias="AccountSID" ID="FC3DEAEA-60DC-45F6-8D4B-90FC69C621F3" Type="string" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Account SID</LocalizedString>
					<LocalizedString Language="uk">SID облікового запису</LocalizedString>
					<LocalizedString Language="ru">SID учетной записи</LocalizedString>
					<LocalizedString Language="lv">Konta SID</LocalizedString>
				</Name>
			</Field>
			<Section Alias="Group" Type="coll" ID="A960E37B-F1BD-4981-858D-AE9706E0571E">
				<Name>
					<LocalizedString Language="en">Group</LocalizedString>
					<LocalizedString Language="uk">Група</LocalizedString>
					<LocalizedString Language="ru">Группа</LocalizedString>
					<LocalizedString Language="lv">Grupa</LocalizedString>
				</Name>
				<Field Alias="EmployeeID" ID="5A10BCE3-9171-486D-8284-BBAA04A9FF6B" Type="refid" NotNull="true" RefType="6710B92A-E148-4363-8A6F-1AA0EB18936C" RefSection="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Name</LocalizedString>
						<LocalizedString Language="ru">Название</LocalizedString>
						<LocalizedString Language="uk">Назва</LocalizedString>
						<LocalizedString Language="lv">Nosaukums</LocalizedString>
					</Name>
					<RefFields>
						<RefField Alias="">LastName</RefField>
						<RefField Alias="">FirstName</RefField>
						<RefField Alias="">MiddleName</RefField>
						<RefField Alias="">Phone</RefField>
						<RefField Alias="">Email</RefField>
						<RefField Alias="">AccountName</RefField>
					</RefFields>
				</Field>
				<Field Alias="SyncTag" ID="9F82E74D-845E-4DB7-AED4-329B56FDA2A0" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Synchronization field</LocalizedString>
						<LocalizedString Language="uk">Поле синхронізації</LocalizedString>
						<LocalizedString Language="ru">Поле синхронизации</LocalizedString>
						<LocalizedString Language="lv">Sinhronizācijas tags</LocalizedString>
					</Name>
				</Field>
				<Constraints>
					<Constraint AllowNulls="false" Type="UniqueSection">
						<ConstraintField>EmployeeID</ConstraintField>
					</Constraint>
				</Constraints>
				<DisplayFields />
			</Section>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueTree">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields>
				<DisplayField>Name</DisplayField>
			</DisplayFields>
		</Section>
		<Section Alias="Roles" Type="coll" ID="F6927A03-5BCE-4C7E-9C8F-E61C6D9F256E" ItemsSelectable="true">
			<Name>
				<LocalizedString Language="en">Roles</LocalizedString>
				<LocalizedString Language="uk">Ролі</LocalizedString>
				<LocalizedString Language="ru">Роли</LocalizedString>
				<LocalizedString Language="lv">Lomas </LocalizedString>
			</Name>
			<Field Alias="Name" ID="C0871568-FC96-498F-9D25-A714D476813C" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comments" ID="04C420AE-0F60-4AA8-8424-2A6E6549D522" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comments</LocalizedString>
					<LocalizedString Language="uk">Коментарі</LocalizedString>
					<LocalizedString Language="ru">Комментарии</LocalizedString>
					<LocalizedString Language="lv">Komentāri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsPersonal" ID="986C711C-5A51-4029-AD54-EC2928D84C2C" Type="bool" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Personal role</LocalizedString>
					<LocalizedString Language="uk">Персональна роль</LocalizedString>
					<LocalizedString Language="ru">Персональная роль</LocalizedString>
					<LocalizedString Language="lv">Personīgs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="AccountName" ID="E99445B3-1A61-40A4-B1C4-9DDCB4FF6894" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Account name</LocalizedString>
					<LocalizedString Language="uk">Обліковий запис</LocalizedString>
					<LocalizedString Language="ru">Учетная запись</LocalizedString>
					<LocalizedString Language="lv">Konta nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="RefreshADsGroup" ID="A94311FB-3125-45E2-AB5B-24B78AD49308" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Refresh ADs group</LocalizedString>
					<LocalizedString Language="uk">Поновлювати групу ADs</LocalizedString>
					<LocalizedString Language="ru">Обновлять группу ADs</LocalizedString>
					<LocalizedString Language="lv">Atjaunot AD grupu</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ADsNotSynchronize" ID="98CA8ECC-DBD4-4B1D-AF44-24A28DF2C340" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Not synchronize with ADs</LocalizedString>
					<LocalizedString Language="uk">Не синхронізувати з ADs</LocalizedString>
					<LocalizedString Language="ru">Не синхронизировать с ADs</LocalizedString>
					<LocalizedString Language="lv">Nav sinhronizēts ar AD</LocalizedString>
				</Name>
			</Field>
			<Field Alias="AccountSID" ID="84563E69-3BF1-4F04-8E97-B822FFF498C0" Type="string" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Account SID</LocalizedString>
					<LocalizedString Language="uk">SID облікового запису</LocalizedString>
					<LocalizedString Language="ru">SID учетной записи</LocalizedString>
					<LocalizedString Language="lv">Konta SID</LocalizedString>
				</Name>
			</Field>
			<Section Alias="Contains" Type="coll" ID="C5F5B33A-5201-414C-87F4-7E0C5E641ADD">
				<Name>
					<LocalizedString Language="en">Contains</LocalizedString>
					<LocalizedString Language="uk">Зміст</LocalizedString>
					<LocalizedString Language="ru">Содержимое</LocalizedString>
					<LocalizedString Language="lv">Satur</LocalizedString>
				</Name>
				<Field Alias="RefID" ID="489FA15D-353D-4022-8A71-5C5C7D6D88D6" Type="refid" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Reference ID</LocalizedString>
						<LocalizedString Language="uk">ID посилання</LocalizedString>
						<LocalizedString Language="ru">ID ссылки</LocalizedString>
						<LocalizedString Language="lv">Atsauces ID</LocalizedString>
					</Name>
				</Field>
				<Field Alias="RefType" ID="1CE2F100-2A8D-40FF-8DDE-FA4FE191F513" Type="enum" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
					<Name>
						<LocalizedString Language="en">Reference type</LocalizedString>
						<LocalizedString Language="uk">Тип посилання</LocalizedString>
						<LocalizedString Language="ru">Тип ссылки</LocalizedString>
						<LocalizedString Language="lv">Atsauces tips</LocalizedString>
					</Name>
					<Enum Alias="Employee" Value="0">
						<Name>
							<LocalizedString Language="en">Employee</LocalizedString>
							<LocalizedString Language="uk">Співробітник</LocalizedString>
							<LocalizedString Language="ru">Сотрудник</LocalizedString>
							<LocalizedString Language="lv">Darbinieks</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Department" Value="1">
						<Name>
							<LocalizedString Language="en">Department</LocalizedString>
							<LocalizedString Language="uk">Відділ</LocalizedString>
							<LocalizedString Language="ru">Отдел</LocalizedString>
							<LocalizedString Language="lv">Departaments</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Group" Value="2">
						<Name>
							<LocalizedString Language="en">Group</LocalizedString>
							<LocalizedString Language="uk">Група</LocalizedString>
							<LocalizedString Language="ru">Группа</LocalizedString>
							<LocalizedString Language="lv">Grupa</LocalizedString>
						</Name>
					</Enum>
					<Enum Alias="Role" Value="3">
						<Name>
							<LocalizedString Language="en">Role</LocalizedString>
							<LocalizedString Language="uk">Роль</LocalizedString>
							<LocalizedString Language="ru">Роль</LocalizedString>
							<LocalizedString Language="lv">Loma</LocalizedString>
						</Name>
					</Enum>
				</Field>
				<Constraints>
					<Constraint AllowNulls="false" Type="UniqueSection">
						<ConstraintField>RefID</ConstraintField>
					</Constraint>
				</Constraints>
				<DisplayFields />
			</Section>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueGlobal">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields>
				<DisplayField>Name</DisplayField>
			</DisplayFields>
		</Section>
		<Section Alias="Positions" Type="coll" ID="CFDFE60A-21A8-4010-84E9-9D2DF348508C">
			<Name>
				<LocalizedString Language="en">Positions</LocalizedString>
				<LocalizedString Language="uk">Посади</LocalizedString>
				<LocalizedString Language="ru">Должности</LocalizedString>
				<LocalizedString Language="lv">Amati</LocalizedString>
			</Name>
			<Field Alias="Name" ID="74B55AD6-4C9F-4DE7-A5B9-83DA760CA957" Type="unistring" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Name</LocalizedString>
					<LocalizedString Language="uk">Назва</LocalizedString>
					<LocalizedString Language="ru">Название</LocalizedString>
					<LocalizedString Language="lv">Nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Importance" ID="5B8F4CF1-C6AF-4754-B8DD-669C7E9E2801" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Importance</LocalizedString>
					<LocalizedString Language="uk">Значимість</LocalizedString>
					<LocalizedString Language="ru">Значимость</LocalizedString>
					<LocalizedString Language="lv">Nozīmība</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SyncTag" ID="0A8700C4-88BF-4AF6-9982-278130CADBDA" Type="unistring" Max="256" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Synchronization field</LocalizedString>
					<LocalizedString Language="uk">Поле синхронізації</LocalizedString>
					<LocalizedString Language="ru">Поле синхронизации</LocalizedString>
					<LocalizedString Language="lv">Sinhronizācijas tags</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Comments" ID="7FC8CC6F-93D8-48D7-85BC-18BF6CEE8390" Type="unistring" Max="1024" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Comments</LocalizedString>
					<LocalizedString Language="uk">Коментарі</LocalizedString>
					<LocalizedString Language="ru">Комментарии</LocalizedString>
					<LocalizedString Language="lv">Komentāri</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Genitive" ID="03098BE0-0D81-4184-A749-C8C8969CFBAB" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Genitive</LocalizedString>
					<LocalizedString Language="uk">Родовий</LocalizedString>
					<LocalizedString Language="ru">Родительный</LocalizedString>
					<LocalizedString Language="lv">Ģenitīvs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Dative" ID="4E645504-0BE2-41F4-A17F-0AA71197E8EE" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Dative</LocalizedString>
					<LocalizedString Language="uk">Давальний</LocalizedString>
					<LocalizedString Language="ru">Дательный</LocalizedString>
					<LocalizedString Language="lv">Datīvs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Accusative" ID="CC9794D1-686D-4FE0-8AC2-69FC8002AF77" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Accusative</LocalizedString>
					<LocalizedString Language="uk">Знахідний</LocalizedString>
					<LocalizedString Language="ru">Винительный</LocalizedString>
					<LocalizedString Language="lv">Akuzatīvs</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Instrumental" ID="197DE6D3-9DAA-4028-84B0-E21937270C88" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Instrumental</LocalizedString>
					<LocalizedString Language="uk">Орудний</LocalizedString>
					<LocalizedString Language="ru">Творительный</LocalizedString>
					<LocalizedString Language="lv">Instrumentāls</LocalizedString>
				</Name>
			</Field>
			<Field Alias="Prepositional" ID="1B6E87C5-0396-4D4D-999C-899FB0CFAD65" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Prepositional</LocalizedString>
					<LocalizedString Language="uk">Місцевий</LocalizedString>
					<LocalizedString Language="ru">Предложный</LocalizedString>
					<LocalizedString Language="lv">Prepozicionāls</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ShortName" ID="A6A904F4-1A0B-45D8-8905-88F894AC3A1F" Type="unistring" Max="64" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Short name</LocalizedString>
					<LocalizedString Language="ru">Краткое название</LocalizedString>
					<LocalizedString Language="lv">Saīsinājums</LocalizedString>
				</Name>
			</Field>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueGlobal">
					<ConstraintField>Name</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields>
				<DisplayField>Name</DisplayField>
			</DisplayFields>
		</Section>
		<Section Alias="UserSettings" Type="struct" ID="7DF4140A-4664-406F-B704-982D06A3F521">
			<Name>
				<LocalizedString Language="en">User settings</LocalizedString>
				<LocalizedString Language="uk">Налаштування користувача</LocalizedString>
				<LocalizedString Language="ru">Пользовательские настройки</LocalizedString>
				<LocalizedString Language="lv">Lietotāja uzstādījumi</LocalizedString>
			</Name>
			<Field Alias="Reserved" ID="51C88867-5C0B-4F23-A06A-1187614C7458" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Reserved</LocalizedString>
					<LocalizedString Language="uk">Зарезервовано</LocalizedString>
					<LocalizedString Language="ru">Зарезервировано</LocalizedString>
					<LocalizedString Language="lv">Rezervēts</LocalizedString>
				</Name>
			</Field>
			<Field Alias="IsSearchMode" ID="99006EA4-0F5C-4154-AC77-7C2DCF93573D" Type="bool" UserDependent="true" DeleteLinkedOnValueChange="false" DefaultValue="0" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Search mode</LocalizedString>
					<LocalizedString Language="uk">Режим пошуку</LocalizedString>
					<LocalizedString Language="ru">Режим поиска</LocalizedString>
					<LocalizedString Language="lv">Meklēšanas režīms</LocalizedString>
				</Name>
			</Field>
			<Field Alias="SearchFor" ID="E576C491-4DD3-4E7E-987F-4C966BE686A8" Type="enum" UserDependent="true" DeleteLinkedOnValueChange="false" DefaultValue="0" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Search for</LocalizedString>
					<LocalizedString Language="uk">Шукати</LocalizedString>
					<LocalizedString Language="ru">Искать</LocalizedString>
					<LocalizedString Language="lv">Meklēt pēc</LocalizedString>
				</Name>
				<Enum Alias="Employee" Value="0">
					<Name>
						<LocalizedString Language="en">Employee</LocalizedString>
						<LocalizedString Language="uk">Співробітник</LocalizedString>
						<LocalizedString Language="ru">Сотрудник</LocalizedString>
						<LocalizedString Language="lv">Darbinieks</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Department" Value="1">
					<Name>
						<LocalizedString Language="en">Department</LocalizedString>
						<LocalizedString Language="uk">Підрозділ</LocalizedString>
						<LocalizedString Language="ru">Подразделение</LocalizedString>
						<LocalizedString Language="lv">Departaments</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<Field Alias="OpenMode" ID="3877651D-30E1-4A67-BB1D-431CCBFAF606" Type="enum" UserDependent="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Opening mode</LocalizedString>
					<LocalizedString Language="uk">Режим відкриття</LocalizedString>
					<LocalizedString Language="ru">Режим открытия</LocalizedString>
					<LocalizedString Language="lv">Atvēršanas režīms</LocalizedString>
				</Name>
				<Enum Alias="Departments" Value="0">
					<Name>
						<LocalizedString Language="en">Departments</LocalizedString>
						<LocalizedString Language="uk">Підрозділи</LocalizedString>
						<LocalizedString Language="ru">Подразделения</LocalizedString>
						<LocalizedString Language="lv">Departamenti</LocalizedString>
					</Name>
				</Enum>
				<Enum Alias="Employees" Value="1">
					<Name>
						<LocalizedString Language="en">Employees</LocalizedString>
						<LocalizedString Language="uk">Співробітники</LocalizedString>
						<LocalizedString Language="ru">Сотрудники</LocalizedString>
						<LocalizedString Language="lv">Darbinieki</LocalizedString>
					</Name>
				</Enum>
			</Field>
			<DisplayFields />
		</Section>
		<Section Alias="ADsMapping" Type="coll" ID="7FCC6C72-52A1-4CC7-BB2B-942E5FBFA38D">
			<Name>
				<LocalizedString Language="en">ADs Mapping</LocalizedString>
				<LocalizedString Language="uk">Відповідність полів ADs</LocalizedString>
				<LocalizedString Language="ru">Соответствие полей ADs</LocalizedString>
				<LocalizedString Language="lv">AD sasaiste</LocalizedString>
			</Name>
			<Field Alias="FieldName" ID="13AFF4BE-395D-4415-B7D2-7DA738F45BBE" Type="string" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Field name</LocalizedString>
					<LocalizedString Language="uk">Ім''я поля</LocalizedString>
					<LocalizedString Language="ru">Имя поля</LocalizedString>
					<LocalizedString Language="lv">Lauka nosaukums</LocalizedString>
				</Name>
			</Field>
			<Field Alias="ADsName" ID="A7342D2E-F794-4530-B2A8-A93EFDA25CE8" Type="string" Max="128" NotNull="true" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">ADs attribute</LocalizedString>
					<LocalizedString Language="uk">Атрибут ADs</LocalizedString>
					<LocalizedString Language="ru">Атрибут ADs</LocalizedString>
					<LocalizedString Language="lv">AD atribūts</LocalizedString>
				</Name>
			</Field>
			<SortBy>
				<Field>FieldName</Field>
			</SortBy>
			<Constraints>
				<Constraint AllowNulls="false" Type="UniqueGlobal">
					<ConstraintField>FieldName</ConstraintField>
				</Constraint>
			</Constraints>
			<DisplayFields />
		</Section>
		<Section Alias="AllEmplViewFields" Type="coll" ID="964087E9-3F72-449D-853D-FDB9BBF43E4C">
			<Name>
				<LocalizedString Language="en">Displayed employee fields</LocalizedString>
				<LocalizedString Language="ru">Отображаемые поля сотрудников</LocalizedString>
				<LocalizedString Language="lv">Attēlojamie darbinieku lauki</LocalizedString>
			</Name>
			<Field Alias="Order" ID="4C74E7DE-4FC1-486D-9D5A-A5725EDE3265" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Order</LocalizedString>
					<LocalizedString Language="ru">Порядок</LocalizedString>
					<LocalizedString Language="lv">Kārtība</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FieldName" ID="BEA1E49D-1845-46B6-A2D7-8A02C982E045" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Field</LocalizedString>
					<LocalizedString Language="ru">Поле</LocalizedString>
					<LocalizedString Language="lv">Lauks</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FirstLetterOnly" ID="5BA28340-9517-4669-BEA7-6FDB3073C7B5" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">First symbol only</LocalizedString>
					<LocalizedString Language="ru">Только первый символ</LocalizedString>
					<LocalizedString Language="lv">Tikai pirmo burta</LocalizedString>
				</Name>
			</Field>
			<SortBy>
				<Field>Order</Field>
			</SortBy>
			<DisplayFields />
		</Section>
		<Section Alias="AllDepViewFields" Type="coll" ID="E46DB878-6F27-474B-A611-86EDB45A23FB">
			<Name>
				<LocalizedString Language="en">Displayed departments fields</LocalizedString>
				<LocalizedString Language="ru">Отображаемые поля подразделений</LocalizedString>
				<LocalizedString Language="lv">Departamenta attēlotie lauki</LocalizedString>
			</Name>
			<Field Alias="Order" ID="F30EFC36-29A4-4BF6-9ACE-F8F7128B6332" Type="int" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Order</LocalizedString>
					<LocalizedString Language="ru">Порядок</LocalizedString>
					<LocalizedString Language="lv">Kārtība</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FieldName" ID="55422DA9-3A24-4241-9BDB-72BCAFD05D0C" Type="unistring" Max="128" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">Field</LocalizedString>
					<LocalizedString Language="ru">Поле</LocalizedString>
					<LocalizedString Language="lv">Lauks</LocalizedString>
				</Name>
			</Field>
			<Field Alias="FirstLetterOnly" ID="C2B76EFD-5DFA-4BDB-90F2-3C226A85E30F" Type="bool" DeleteLinkedOnValueChange="false" DefaultValue="" CopyBehavior="Copy">
				<Name>
					<LocalizedString Language="en">First symbol only</LocalizedString>
					<LocalizedString Language="ru">Только первый символ</LocalizedString>
					<LocalizedString Language="lv">Tikai pirmo burtu</LocalizedString>
				</Name>
			</Field>
			<SortBy>
				<Field>Order</Field>
			</SortBy>
			<DisplayFields />
		</Section>
	</Sections>
	<Transformations />
	<ViewElements />
	<VirtualFields>
		<VirtualField Alias="EmployeeName" ID="C6104063-87A8-4CC7-B710-D4F5403E13D5">
			<Name>
				<LocalizedString Language="en">Employee name</LocalizedString>
				<LocalizedString Language="ru">ФИО сотрудника</LocalizedString>
				<LocalizedString Language="lv">Darbinieka uzvārds, vārds</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Version="4000" Type="unistring"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="unistring"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="LastName" SectionAlias="Main" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value=" " Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="FirstName" SectionAlias="Main" Function="Left" ProtectNull="true" Default="" Type="unistring"&gt;&lt;Parameters&gt;&lt;Parameter Value="1" /&gt;&lt;/Parameters&gt;&lt;/DataItem&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="ConditionList"&gt;&lt;CaseItems&gt;&lt;CaseItem&gt;&lt;DataItem Value="." Type="unistring" /&gt;&lt;ConditionGroup Operation="And"&gt;&lt;Conditions&gt;&lt;Condition Operation="ISNOTNULL"&gt;&lt;ConditionItems&gt;&lt;ConditionItem Value="FirstName" SectionAlias="Main" /&gt;&lt;/ConditionItems&gt;&lt;/Condition&gt;&lt;/Conditions&gt;&lt;ConditionGroups /&gt;&lt;/ConditionGroup&gt;&lt;/CaseItem&gt;&lt;/CaseItems&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="MiddleName" SectionAlias="Main" Function="Left" ProtectNull="true" Default="" Type="unistring"&gt;&lt;Parameters&gt;&lt;Parameter Value="1" /&gt;&lt;/Parameters&gt;&lt;/DataItem&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="ConditionList"&gt;&lt;CaseItems&gt;&lt;CaseItem&gt;&lt;DataItem Value="." Type="unistring" /&gt;&lt;ConditionGroup Operation="And"&gt;&lt;Conditions&gt;&lt;Condition Operation="ISNOTNULL"&gt;&lt;ConditionItems&gt;&lt;ConditionItem Value="MiddleName" SectionAlias="Main" /&gt;&lt;/ConditionItems&gt;&lt;/Condition&gt;&lt;/Conditions&gt;&lt;ConditionGroups /&gt;&lt;/ConditionGroup&gt;&lt;/CaseItem&gt;&lt;/CaseItems&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="None" Type="int" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
		<VirtualField Alias="EmployeeManager" ID="D9B9051B-E2EB-40B6-89C3-894C3522BD8F">
			<Name>
				<LocalizedString Language="en">Employee manager</LocalizedString>
				<LocalizedString Language="ru">Руководитель сотрудника</LocalizedString>
				<LocalizedString Language="lv">Darbinieka vadītājs</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Version="4000" Type="unistring"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="unistring"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="LastName" SectionAlias="__Employees1" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value=" " Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="FirstName" SectionAlias="__Employees1" Function="Left" ProtectNull="true" Default="" Type="unistring"&gt;&lt;Parameters&gt;&lt;Parameter Value="1" /&gt;&lt;/Parameters&gt;&lt;/DataItem&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="ConditionList"&gt;&lt;CaseItems&gt;&lt;CaseItem&gt;&lt;DataItem Value="." Type="unistring" /&gt;&lt;ConditionGroup Operation="And"&gt;&lt;Conditions&gt;&lt;Condition Operation="ISNOTNULL"&gt;&lt;ConditionItems&gt;&lt;ConditionItem Value="FirstName" SectionAlias="__Employees1" /&gt;&lt;/ConditionItems&gt;&lt;/Condition&gt;&lt;/Conditions&gt;&lt;ConditionGroups /&gt;&lt;/ConditionGroup&gt;&lt;/CaseItem&gt;&lt;/CaseItems&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="MiddleName" SectionAlias="__Employees1" Function="Left" ProtectNull="true" Default="" Type="unistring"&gt;&lt;Parameters&gt;&lt;Parameter Value="1" /&gt;&lt;/Parameters&gt;&lt;/DataItem&gt;&lt;/ComputationPart&gt;&lt;ComputationPart Type="ConditionList"&gt;&lt;CaseItems&gt;&lt;CaseItem&gt;&lt;DataItem Value="." Type="unistring" /&gt;&lt;ConditionGroup Operation="And"&gt;&lt;Conditions&gt;&lt;Condition Operation="ISNOTNULL"&gt;&lt;ConditionItems&gt;&lt;ConditionItem Value="MiddleName" SectionAlias="__Employees1" /&gt;&lt;/ConditionItems&gt;&lt;/Condition&gt;&lt;/Conditions&gt;&lt;ConditionGroups /&gt;&lt;/ConditionGroup&gt;&lt;/CaseItem&gt;&lt;/CaseItems&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="None" Type="int" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;JoinDefs&gt;&lt;JoinDef Alias="__Employees1" SectionID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" TableName="" SourceAlias="Main" SourceField="Manager" DestField="RowID" /&gt;&lt;/JoinDefs&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
		<VirtualField Alias="EmployeePosition" ID="E765F64F-A47C-4C57-944B-D3CBE589DC87">
			<Name>
				<LocalizedString Language="en">Employee position</LocalizedString>
				<LocalizedString Language="ru">Должность сотрудника</LocalizedString>
				<LocalizedString Language="lv">Darbinieka amats</LocalizedString>
			</Name>
			<Data>&lt;?xml version="1.0" encoding="utf-8"?&gt;&lt;VirtualField xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" SectionTypeID="DBC8AE9D-C1D2-4D5E-978B-339D22B32482" Version="4000" Type="unistring"&gt;&lt;ComputedField&gt;&lt;ComputationGroup Operation="Add" Type="unistring"&gt;&lt;ComputationParts&gt;&lt;ComputationPart Type="Simple"&gt;&lt;DataItem Value="Name" SectionAlias="__Positions1" ProtectNull="true" Default="" Type="unistring" /&gt;&lt;/ComputationPart&gt;&lt;Aggregation Function="None" Type="int" /&gt;&lt;/ComputationParts&gt;&lt;ComputationGroups /&gt;&lt;/ComputationGroup&gt;&lt;/ComputedField&gt;&lt;JoinDefs&gt;&lt;JoinDef Alias="__Positions1" SectionID="CFDFE60A-21A8-4010-84E9-9D2DF348508C" TableName="" SourceAlias="Main" SourceField="Position" DestField="RowID" /&gt;&lt;/JoinDefs&gt;&lt;/VirtualField&gt;</Data>
		</VirtualField>
	</VirtualFields>
</CardDefinition>', @XSDSchema='<?xml version="1.0" encoding="utf-8"?>
<xs:schema elementFormDefault="qualified" attributeFormDefault="unqualified" targetNamespace="http://www.docsvision.com/schemas/RefStaff" xmlns:my="http://www.docsvision.com/schemas/RefStaff" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xs:element name="RefStaff">
		<xs:complexType>
			<xs:sequence>
				<xs:element name="Units" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:UnitsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="AlternateHierarchy" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:AlternateHierarchyRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Roles" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:RolesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Positions" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:PositionsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element ref="my:UserSettings" minOccurs="0" />
				<xs:element name="ADsMapping" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:ADsMappingRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="AllEmplViewFields" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:AllEmplViewFieldsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="AllDepViewFields" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:AllDepViewFieldsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="CardID" type="xs:string" />
			<xs:attribute name="CardTypeID" type="xs:string" />
			<xs:attribute name="Description" type="xs:string" />
			<xs:attribute name="CreationDateTime" type="xs:dateTime" />
			<xs:attribute name="ChangeDateTime" type="xs:dateTime" />
			<xs:attribute name="Template" type="xs:boolean" />
			<xs:attribute name="Topic" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="UnitsRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element ref="my:UnitsRow" minOccurs="0" maxOccurs="unbounded" />
				<xs:element name="Employees" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:EmployeesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Addresses" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:AddressesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="EmployeesFormat" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:EmployeesFormatRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="EmplViewFields" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:EmplViewFieldsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="DepViewFields" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:DepViewFieldsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Type">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="Manager" type="xs:string" />
			<xs:attribute name="Manager_FName" type="xs:string" />
			<xs:attribute name="Manager_MName" type="xs:string" />
			<xs:attribute name="Manager_LName" type="xs:string" />
			<xs:attribute name="ContactPerson" type="xs:string" />
			<xs:attribute name="Contact_FName" type="xs:string" />
			<xs:attribute name="Contact_MName" type="xs:string" />
			<xs:attribute name="Contact_LName" type="xs:string" />
			<xs:attribute name="Phone" type="xs:string" />
			<xs:attribute name="Fax" type="xs:string" />
			<xs:attribute name="Email" type="xs:string" />
			<xs:attribute name="Telex" type="xs:string" />
			<xs:attribute name="Account" type="xs:string" />
			<xs:attribute name="CorrespondentAccount" type="xs:string" />
			<xs:attribute name="BankName" type="xs:string" />
			<xs:attribute name="BIK" type="xs:string" />
			<xs:attribute name="INN" type="xs:string" />
			<xs:attribute name="KPP" type="xs:string" />
			<xs:attribute name="OKPO" type="xs:string" />
			<xs:attribute name="OKONH" type="xs:string" />
			<xs:attribute name="RootFolder" type="xs:string" />
			<xs:attribute name="TaskFolder" type="xs:string" />
			<xs:attribute name="IncomingFolder" type="xs:string" />
			<xs:attribute name="OutgoingFolder" type="xs:string" />
			<xs:attribute name="ResolutionFolder" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
			<xs:attribute name="CalendarID" type="xs:string" />
			<xs:attribute name="FullName" type="xs:string" />
			<xs:attribute name="SyncTag" type="xs:string" />
			<xs:attribute name="NotAvailable" type="xs:boolean" />
			<xs:attribute name="ADsPath" type="xs:string" />
			<xs:attribute name="ADsID" type="xs:string" />
			<xs:attribute name="ADsNotSynchronize" type="xs:boolean" />
			<xs:attribute name="Code" type="xs:string" />
			<xs:attribute name="DuplicateID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="EmployeesRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element name="Deputies" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:DeputiesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="NameCases" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:NameCasesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
				<xs:element name="Pictures" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:PicturesRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
			<xs:attribute name="Position" type="xs:string" />
			<xs:attribute name="PositionName" type="xs:string" />
			<xs:attribute name="ShortPositionName" type="xs:string" />
			<xs:attribute name="AccountName" type="xs:string" />
			<xs:attribute name="Manager" type="xs:string" />
			<xs:attribute name="Manager_FName" type="xs:string" />
			<xs:attribute name="Manager_MName" type="xs:string" />
			<xs:attribute name="Manager_LName" type="xs:string" />
			<xs:attribute name="RoomNumber" type="xs:string" />
			<xs:attribute name="Phone" type="xs:string" />
			<xs:attribute name="MobilePhone" type="xs:string" />
			<xs:attribute name="HomePhone" type="xs:string" />
			<xs:attribute name="IPPhone" type="xs:string" />
			<xs:attribute name="Fax" type="xs:string" />
			<xs:attribute name="Email" type="xs:string" />
			<xs:attribute name="PersonalFolder" type="xs:string" />
			<xs:attribute name="RoutingType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="IDNumber" type="xs:string" />
			<xs:attribute name="IDIssuedBy" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
			<xs:attribute name="CalendarID" type="xs:string" />
			<xs:attribute name="Status">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="NotAvailable" type="xs:boolean" />
			<xs:attribute name="Gender">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="SyncTag" type="xs:string" />
			<xs:attribute name="ActiveEmployee" type="xs:string" />
			<xs:attribute name="ADsNotSynchronize" type="xs:boolean" />
			<xs:attribute name="Importance" type="xs:int" />
			<xs:attribute name="AccountSID" type="xs:string" />
			<xs:attribute name="DisplayString" type="xs:string" />
			<xs:attribute name="BirthDate" type="xs:dateTime" />
			<xs:attribute name="ClockNumber" type="xs:string" />
			<xs:attribute name="IDCode" type="xs:string" />
			<xs:attribute name="DuplicateID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="DeputiesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="DeputyID" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="Position" type="xs:string" />
			<xs:attribute name="Status">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
						<xs:enumeration value="6" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="SyncTag" type="xs:string" />
			<xs:attribute name="Performing" type="xs:boolean" />
			<xs:attribute name="Control" type="xs:boolean" />
			<xs:attribute name="Signature" type="xs:boolean" />
			<xs:attribute name="SignatureComment" type="xs:string" />
			<xs:attribute name="PermanentDeputy" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="NameCasesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="NameCase">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
						<xs:enumeration value="4" />
						<xs:enumeration value="5" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="PicturesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Picture" type="xs:base64Binary" />
			<xs:attribute name="ImageFormat">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
		</xs:complexType>
	</xs:element>
	<xs:element name="AddressesRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="AddressType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="ZipCode" type="xs:string" />
			<xs:attribute name="City" type="xs:string" />
			<xs:attribute name="Address" type="xs:string" />
			<xs:attribute name="Country" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="EmployeesFormatRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="FirstLetterOnly" type="xs:boolean" />
			<xs:attribute name="Prefix" type="xs:string" />
			<xs:attribute name="Suffix" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="EmplViewFieldsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="FirstLetterOnly" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="DepViewFieldsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="FirstLetterOnly" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="AlternateHierarchyRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element ref="my:AlternateHierarchyRow" minOccurs="0" maxOccurs="unbounded" />
				<xs:element name="Group" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:GroupRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
			<xs:attribute name="AccountName" type="xs:string" />
			<xs:attribute name="RefreshADsGroup" type="xs:boolean" />
			<xs:attribute name="ADsNotSynchronize" type="xs:boolean" />
			<xs:attribute name="AccountSID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="GroupRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="EmployeeID" type="xs:string" />
			<xs:attribute name="LastName" type="xs:string" />
			<xs:attribute name="FirstName" type="xs:string" />
			<xs:attribute name="MiddleName" type="xs:string" />
			<xs:attribute name="Phone" type="xs:string" />
			<xs:attribute name="Email" type="xs:string" />
			<xs:attribute name="AccountName" type="xs:string" />
			<xs:attribute name="SyncTag" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="RolesRow">
		<xs:complexType>
			<xs:sequence>
				<xs:element name="Contains" minOccurs="0">
					<xs:complexType>
						<xs:sequence>
							<xs:element ref="my:ContainsRow" maxOccurs="unbounded" />
						</xs:sequence>
					</xs:complexType>
				</xs:element>
			</xs:sequence>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
			<xs:attribute name="IsPersonal" type="xs:boolean" />
			<xs:attribute name="AccountName" type="xs:string" />
			<xs:attribute name="RefreshADsGroup" type="xs:boolean" />
			<xs:attribute name="ADsNotSynchronize" type="xs:boolean" />
			<xs:attribute name="AccountSID" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="ContainsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="RefID" type="xs:string" />
			<xs:attribute name="RefType">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
						<xs:enumeration value="2" />
						<xs:enumeration value="3" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
		</xs:complexType>
	</xs:element>
	<xs:element name="PositionsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Name" type="xs:string" />
			<xs:attribute name="Importance" type="xs:int" />
			<xs:attribute name="SyncTag" type="xs:string" />
			<xs:attribute name="Comments" type="xs:string" />
			<xs:attribute name="Genitive" type="xs:string" />
			<xs:attribute name="Dative" type="xs:string" />
			<xs:attribute name="Accusative" type="xs:string" />
			<xs:attribute name="Instrumental" type="xs:string" />
			<xs:attribute name="Prepositional" type="xs:string" />
			<xs:attribute name="ShortName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="UserSettings">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Reserved" type="xs:boolean" />
			<xs:attribute name="IsSearchMode" type="xs:boolean" />
			<xs:attribute name="SearchFor">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
			<xs:attribute name="OpenMode">
				<xs:simpleType>
					<xs:restriction base="xs:int">
						<xs:enumeration value="0" />
						<xs:enumeration value="1" />
					</xs:restriction>
				</xs:simpleType>
			</xs:attribute>
		</xs:complexType>
	</xs:element>
	<xs:element name="ADsMappingRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="ADsName" type="xs:string" />
		</xs:complexType>
	</xs:element>
	<xs:element name="AllEmplViewFieldsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="FirstLetterOnly" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
	<xs:element name="AllDepViewFieldsRow">
		<xs:complexType>
			<xs:attribute name="RowID" type="xs:string" />
			<xs:attribute name="Order" type="xs:int" />
			<xs:attribute name="FieldName" type="xs:string" />
			<xs:attribute name="FirstLetterOnly" type="xs:boolean" />
		</xs:complexType>
	</xs:element>
</xs:schema>', @Icon = 'AAABAAIAEBAAAAEACABoBQAAJgAAACAgAAABAAgAqAgAAI4FAAAoAAAAEAAAACAAAAABAAgAAAAAAEABAAAAAAAAAAAAAAABAAAAAAAAAAAAAP///wCwmIoAr5B+ALKSfwC0mosAwaKPAMCbhADBnIUAu5mEALWbjACjjYAApYJsAP/z5AD/69cA/+TKAP/cvQC0loUAyKOMAP/dvwD/5c0A/+zaAP/05gC3kHkAspyOAJeAcwCfemUA/9ayAK+JdQD/17UA/97CAP/n0AD/7t0A//XoAL2WgACymIkAkn1xAJ56ZAD/1rMArINsAP/ZtwD/4MUA/+nUAP/w4QD/9usAx6SQALafkQCthG0A/9q6AP/jyQDGzMwAZZm7AE6KsgBOiq8AiZeiAH1nYQD/17MAroZwAGeXtgB2utgAjs7mAIjM5QBCh7IA/9e0AK+IcQD/5tAAU4u0AE2YywBXo9MAWKPTACl3rwCwiXMA/97AAP/n0gB3nbsAQJTOAECZ0wBBm9UAS4KsAJx4YwCxinQA/97BAP/o1ADSu7UAUnSYAD1slAA8cJwAr5CNAHtmYACRc2EAnXpkAKJ8ZACriXMA/9/CAM2xnwDJdFwArWVWAKZgVQCmXVMAx2tTAH5uaQCVgnYAl4J2AJN8cACOc2MAk3VjAJp/bgCvk4MAvKaYANN2WQDmmngA6Jx8AOSNbQDSdFcAwGZPAJuMgwCVg3gAmYh9AKSUiQCzpp4A0X1hAOKoigDjqY0A3pl8ANN8YADBWUAAzW9TANmOcwDakHQA1YRoAM5uUwDAX0gAv3NiAMNdRADCYkkAwl5GAL9gSQAAAIAAAIAAAACAgACAAAAAgACAAICAAADAwMAAgICAAAAA/wAA/wAAAP//AP8AAAD/AP8A//8AAAkJCQASEhIAHx8fACwsLAA5OTkARUVFAFJSUgBfX18AbGxsAHh4eACFhYUAkpKSAJ+fnwCrq6sAuLi4AMXFxQDS0tIA3t7eAOvr6wD4+PgA8Pv/AKSgoADA3MAA8MqmAAAAPgAAAF0AAAB8AAAAmwAAALoAAADZAAAA8AAkJP8ASEj/AGxs/wCQkP8AtLT/AAAUPgAAHl0AACh8AAAymwAAPLoAAEbZAABV8AAkbf8ASIX/AGyd/wCQtf8AtM3/AAAqPgAAP10AAFR8AABpmwAAfroAAJPZAACq8AAktv8ASML/AGzO/wCQ2v8AtOb/AAA+PgAAXV0AAHx8AACbmwAAuroAANnZAADw8AAk//8ASP//AGz//wCQ//8AtP//AAA+KgAAXT8AAHxUAACbaQAAun4AANmTAADwqgAk/7YASP/CAGz/zgCQ/9oAtP/mAAA+FAAAXR4AAHwoAACbMgAAujwAANlGAADwVQAk/20ASP+FAGz/nQCQ/7UAtP/NAAA+AAAAXQAAAHwAAACbAAAAugAAANkAAADwAAAk/yQASP9IAAAAAAAAAAAAAACEhYaHiIQAAAAAAAAAAAAAfn+AgYKDAAAAAABzdHV2d3h5ent8fWRlZmZnaGlqa2xtbm9wcXJYWU8lWls/XF1eX2BhYmMiN08NDg8QP1BRUlNUVVZXADclDQ4PED9HSElKS0xNTgA3JQ0ODxA/QBNBQkNERUYANyUNDg8QODkQFDo7PD0+ACQlDQ4PECYvMDEyMzQ1NgAkJQ0ODxAmJygpKissLS4AGRoNDg8QGxwdHh8gISIjAAsMDQ4PEBEAEhMUFRYXGAAAAgMEAwUAAAAGBwgJCgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/wAAA/8AAAPgAAAAAAAAAAAAAAAABAAAAAQAAAAEAAAABAAAAAQAAAAEAAAABAAABAQAAg4MAAP//AAD//wAAKAAAACAAAABAAAAAAQAIAAAAAACABAAAAAAAAAAAAAAAAQAAAAAAAAAAAAD///8AsJiKAK+QfgCykn8AtJqLAMGijwDAm4QAwZyFALuZhAC1m4wAo42AAKWCbAD/8+QA/+vXAP/kygD/3L0AtJaFAMijjAD/3b8A/+XNAP/s2gD/9OYAt5B5ALKcjgCXgHMAn3plAP/WsgCviXUA/9e1AP/ewgD/59AA/+7dAP/16AC9loAAspiJAJJ9cQCeemQA/9azAKyDbAD/2bcA/+DFAP/p1AD/8OEA//brAMekkAC2n5EArYRtAP/augD/48kAxszMAGWZuwBOirIAToqvAImXogB9Z2EA/9ezAK6GcABnl7YAdrrYAI7O5gCIzOUAQoeyAP/XtACviHEA/+bQAFOLtABNmMsAV6PTAFij0wApd68AsIlzAP/ewAD/59IAd527AECUzgBAmdMAQZvVAEuCrACceGMAsYp0AP/ewQD/6NQA0ru1AFJ0mAA9bJQAPHCcAK+QjQB7ZmAAkXNhAJ16ZACifGQAq4lzAP/fwgDNsZ8AyXRcAK1lVgCmYFUApl1TAMdrUwB+bmkAlYJ2AJeCdgCTfHAAjnNjAJN1YwCaf24Ar5ODALymmADTdlkA5pp4AOicfADkjW0A0nRXAMBmTwCbjIMAlYN4AJmIfQCklIkAs6aeANF9YQDiqIoA46mNAN6ZfADTfGAAwVlAAM1vUwDZjnMA2pB0ANWEaADOblMAwF9IAL9zYgDDXUQAwmJJAMJeRgC/YEkAAACAAACAAAAAgIAAgAAAAIAAgACAgAAAwMDAAICAgAAAAP8AAP8AAAD//wD/AAAA/wD/AP//AAAJCQkAEhISAB8fHwAsLCwAOTk5AEVFRQBSUlIAX19fAGxsbAB4eHgAhYWFAJKSkgCfn58Aq6urALi4uADFxcUA0tLSAN7e3gDr6+sA+Pj4APD7/wCkoKAAwNzAAPDKpgAAAD4AAABdAAAAfAAAAJsAAAC6AAAA2QAAAPAAJCT/AEhI/wBsbP8AkJD/ALS0/wAAFD4AAB5dAAAofAAAMpsAADy6AABG2QAAVfAAJG3/AEiF/wBsnf8AkLX/ALTN/wAAKj4AAD9dAABUfAAAaZsAAH66AACT2QAAqvAAJLb/AEjC/wBszv8AkNr/ALTm/wAAPj4AAF1dAAB8fAAAm5sAALq6AADZ2QAA8PAAJP//AEj//wBs//8AkP//ALT//wAAPioAAF0/AAB8VAAAm2kAALp+AADZkwAA8KoAJP+2AEj/wgBs/84AkP/aALT/5gAAPhQAAF0eAAB8KAAAmzIAALo8AADZRgAA8FUAJP9tAEj/hQBs/50AkP+1ALT/zQAAPgAAAF0AAAB8AAAAmwAAALoAAADZAAAA8AAAJP8kAEj/SAAAAAAAAAAAAAAAAAAAAAAAAAAAAISEhYWGhoeHiIiEhAAAAAAAAAAAAAAAAAAAAAAAAAAAhISFhYaGh4eIiISEAAAAAAAAAAAAAAAAAAAAAAAAAAB+fn9/gICBgYKCg4MAAAAAAAAAAAAAAAAAAAAAAAAAAH5+f3+AgIGBgoKDgwAAAAAAAAAAAABzc3R0dXV2dnd3eHh5eXp6e3t8fH19AAAAAAAAAAAAAHNzdHR1dXZ2d3d4eHl5enp7e3x8fX1kZGVlZmZmZmdnaGhpaWpqa2tsbG1tbm5vb3BwcXFycmRkZWVmZmZmZ2doaGlpampra2xsbW1ubm9vcHBxcXJyWFhZWU9PJSVaWltbPz9cXF1dXl5fX2BgYWFiYmNjIiJYWFlZT08lJVpaW1s/P1xcXV1eXl9fYGBhYWJiY2MiIjc3T08NDQ4ODw8QED8/UFBRUVJSU1NUVFVVVlZXVwAANzdPTw0NDg4PDxAQPz9QUFFRUlJTU1RUVVVWVldXAAA3NyUlDQ0ODg8PEBA/P0dHSEhJSUpKS0tMTE1NTk4AADc3JSUNDQ4ODw8QED8/R0dISElJSkpLS0xMTU1OTgAANzclJQ0NDg4PDxAQPz9AQBMTQUFCQkNDRERFRUZGAAA3NyUlDQ0ODg8PEBA/P0BAExNBQUJCQ0NEREVFRkYAADc3JSUNDQ4ODw8QEDg4OTkQEBQUOjo7Ozw8PT0+PgAANzclJQ0NDg4PDxAQODg5ORAQFBQ6Ojs7PDw9PT4+AAAkJCUlDQ0ODg8PEBAmJi8vMDAxMTIyMzM0NDU1NjYAACQkJSUNDQ4ODw8QECYmLy8wMDExMjIzMzQ0NTU2NgAAJCQlJQ0NDg4PDxAQJiYnJygoKSkqKisrLCwtLS4uAAAkJCUlDQ0ODg8PEBAmJicnKCgpKSoqKyssLC0tLi4AABkZGhoNDQ4ODw8QEBsbHBwdHR4eHx8gICEhIiIjIwAAGRkaGg0NDg4PDxAQGxscHB0dHh4fHyAgISEiIiMjAAALCwwMDQ0ODg8PEBAREQAAEhITExQUFRUWFhcXGBgAAAsLDAwNDQ4ODw8QEBERAAASEhMTFBQVFRYWFxcYGAAAAAACAgMDBAQDAwUFAAAAAAAABgYHBwgICQkKCgAAAAAAAAICAwMEBAMDBQUAAAAAAAAGBgcHCAgJCQoKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA///wAP//8AD///AA///wAP/AAAD/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAMAAwADAAPAD8APwA/AD/////////////////////8='

DECLARE @ColumnType nvarchar(128)
DECLARE @ColumnSize int
DECLARE @OldAllowsNull bit

-- Update table column [dbo].[dvtable_{7473F07F-11ED-4762-9F1E-7FF10808DDD1}].[DuplicateID]
SET @ColumnType = NULL
SET @ColumnSize = NULL
  SELECT @OldAllowsNull = ISNULL(COLUMNPROPERTY(OBJECT_ID('[dbo].[dvtable_{7473F07F-11ED-4762-9F1E-7FF10808DDD1}]'), 'DuplicateID', 'AllowsNull'), 1)
  
  SELECT @ColumnType = DATA_TYPE, @ColumnSize = CHARACTER_MAXIMUM_LENGTH
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_NAME = 'dvtable_{7473F07F-11ED-4762-9F1E-7FF10808DDD1}' AND COLUMN_NAME = 'DuplicateID'

IF @ColumnType IS NULL
BEGIN
		ALTER TABLE [dbo].[dvtable_{7473F07F-11ED-4762-9F1E-7FF10808DDD1}] ADD [DuplicateID] nvarchar(256) NULL
  END
ELSE
IF (@ColumnType <> 'nvarchar') OR (@OldAllowsNull <> 1) OR ((@ColumnSize IS NOT NULL) AND (256 <> 0) AND (@ColumnSize <> 256))
BEGIN

	IF (@ColumnType IN ('image', 'money', 'smallmoney', 'timestamp', 'sql_variant', 'text', 'ntext'))
	BEGIN
		ALTER TABLE [dbo].[dvtable_{7473F07F-11ED-4762-9F1E-7FF10808DDD1}] DROP COLUMN [DuplicateID]
		ALTER TABLE [dbo].[dvtable_{7473F07F-11ED-4762-9F1E-7FF10808DDD1}] ADD [DuplicateID] nvarchar(256) NULL
	END ELSE
	BEGIN
		ALTER TABLE [dbo].[dvtable_{7473F07F-11ED-4762-9F1E-7FF10808DDD1}] ALTER COLUMN [DuplicateID] nvarchar(256) NULL			
	END


END

-- Update table column [dbo].[dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}].[DuplicateID]
SET @ColumnType = NULL
SET @ColumnSize = NULL
  SELECT @OldAllowsNull = ISNULL(COLUMNPROPERTY(OBJECT_ID('[dbo].[dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}]'), 'DuplicateID', 'AllowsNull'), 1)
  
  SELECT @ColumnType = DATA_TYPE, @ColumnSize = CHARACTER_MAXIMUM_LENGTH
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_NAME = 'dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}' AND COLUMN_NAME = 'DuplicateID'

IF @ColumnType IS NULL
BEGIN
		ALTER TABLE [dbo].[dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}] ADD [DuplicateID] nvarchar(256) NULL
  END
ELSE
IF (@ColumnType <> 'nvarchar') OR (@OldAllowsNull <> 1) OR ((@ColumnSize IS NOT NULL) AND (256 <> 0) AND (@ColumnSize <> 256))
BEGIN

	IF (@ColumnType IN ('image', 'money', 'smallmoney', 'timestamp', 'sql_variant', 'text', 'ntext'))
	BEGIN
		ALTER TABLE [dbo].[dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}] DROP COLUMN [DuplicateID]
		ALTER TABLE [dbo].[dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}] ADD [DuplicateID] nvarchar(256) NULL
	END ELSE
	BEGIN
		ALTER TABLE [dbo].[dvtable_{DBC8AE9D-C1D2-4D5E-978B-339D22B32482}] ALTER COLUMN [DuplicateID] nvarchar(256) NULL			
	END


END

GO
