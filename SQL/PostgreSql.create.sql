




CREATE TABLE ПередачаКарточки (

 primaryKey UUID NOT NULL,

 ДатаПередачи TIMESTAMP(3) NULL,

 Сотрудник VARCHAR(255) NULL,

 КарточкаГражданина_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Личность (

 primaryKey UUID NOT NULL,

 ФИО VARCHAR(255) NULL,

 Возраст INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE КарточкаГражданина (

 primaryKey UUID NOT NULL,

 ДатаОбращения TIMESTAMP(3) NULL,

 Личность_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ОсобенностиЛичности (

 primaryKey UUID NOT NULL,

 ОсобенностиЛица VARCHAR(255) NULL,

 ОсобенностиФигуры VARCHAR(255) NULL,

 ОсобенностиХарактера VARCHAR(255) NULL,

 Личность_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE ПередачаКарточки ADD CONSTRAINT FKeb5251f485f74b719c31cfa9298ec126 FOREIGN KEY (КарточкаГражданина_m0) REFERENCES КарточкаГражданина; 
CREATE INDEX Index6597c3d5856c005a307c75324dad2b86e4fb2d53 on ПередачаКарточки (КарточкаГражданина_m0); 

 ALTER TABLE КарточкаГражданина ADD CONSTRAINT FK7863d138fe2f4120a3b3739ad747531d FOREIGN KEY (Личность_m0) REFERENCES Личность; 
CREATE INDEX Index0158da9b7a8a88e5102ab1374e7bf97ad78e31b5 on КарточкаГражданина (Личность_m0); 

 ALTER TABLE ОсобенностиЛичности ADD CONSTRAINT FK07d47a135b544154860724182cf40250 FOREIGN KEY (Личность_m0) REFERENCES Личность; 
CREATE INDEX Index71e6417510409dcf3ba2668472b809f0999de217 on ОсобенностиЛичности (Личность_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK22851f86c2834b8d84f6533bde55cfee FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKbb138158b0594e4e9b4905825e67e5a7 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FK388d5fbcee624f72b65f76ec547c842a FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

