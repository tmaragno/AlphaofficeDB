create database alphaoffice;
use alphaoffice;

  CREATE TABLE PRODUCTS
   (	PRODUCT_ID NUMERIC(15,0),
	PARENT_CATEGORY_ID NUMERIC(15,0),
	CATEGORY_ID NUMERIC(15,0),
	PRODUCT_NAME VARCHAR(150),
	PRODUCT_STATUS VARCHAR(30),
	COST_PRICE NUMERIC(8,2),
	LIST_PRICE NUMERIC(8,2),
	MIN_PRICE NUMERIC(8,2),
	WARRANTY_PERIOD_MONTHS NUMERIC(2,0),
	EXTERNAL_URL VARCHAR(200),
	ATTRIBUTE_CATEGORY VARCHAR(30),
	ATTRIBUTE1 VARCHAR(150),
	ATTRIBUTE2 VARCHAR(150),
	ATTRIBUTE3 VARCHAR(150),
	ATTRIBUTE4 VARCHAR(150),
	ATTRIBUTE5 VARCHAR(150),
	CREATED_BY VARCHAR(60),
	CREATION_DATE DATE,
	LAST_UPDATED_BY VARCHAR(60),
	LAST_UPDATE_DATE DATE,
	OBJECT_VERSION_ID NUMERIC(15,0)
   );