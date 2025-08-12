BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES('Account-1','Sample Account for Entitlements','');
INSERT INTO "Account" VALUES('Account-2','Test Acc 1','');
INSERT INTO "Account" VALUES('Account-3','Test Acc 3','');
INSERT INTO "Account" VALUES('Account-4','Test Acc 2','');
CREATE TABLE "Delivery_Item__c" (
	id VARCHAR(255) NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-1','2035-08-31','Non-refrigerated','Groundnut','Delivery__c-1');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-2','2032-08-31','Frozen','Burger','Delivery__c-3');
INSERT INTO "Delivery_Item__c" VALUES('Delivery_Item__c-3','','Frozen','Pizza','Delivery__c-2');
CREATE TABLE "Delivery__c" (
	id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES('Delivery__c-1','','Scheduled','Account-3');
INSERT INTO "Delivery__c" VALUES('Delivery__c-2','','Scheduled','Account-4');
INSERT INTO "Delivery__c" VALUES('Delivery__c-3','','Scheduled','Account-2');
CREATE TABLE "Test__c" (
	id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	PRIMARY KEY (id)
);
COMMIT;
