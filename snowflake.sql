CREATE DATABASE "SS_SQL_DEMO_DATABASE_NEW";
USE DATABASE "SS_SQL_DEMO_DATABASE_NEW";

DROP TABLE "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."CONSUMER_COMPLAINTS";

CREATE OR REPLACE TABLE  "INEURON_CONSUMER_COMPLAINTS" 
   (	
      DATE_RECEIVED STRING ,
      PRODUCT_NAME VARCHAR2(100) , 
	  SUB_PRODUCT VARCHAR2(100) , 
	  ISSUE VARCHAR2(100), 
      SUB_ISSUE VARCHAR2(100),
      CONSUMER_COMPLAINT_NARRATIVE VARCHAR2(100),
      Company_Public_Response STRING,
      Company VARCHAR(100),
      State_Name CHAR(100),
      Zip_Code INTEGER,
      Tags VARCHAR(100),
      Consumer_Consent_Provided CHAR(100),
       Submitted_via STRING,
      Date_Sent_to_Company STRING,
     Company_Response_to_Consumer VARCHAR(100),
     Timely_Response CHAR(100),
     CONSUMER_DISPUTED CHAR(100),
     COMPLAINT_ID NUMBER(12,0) NOT NULL PRIMARY KEY
);

SELECT * FROM "INEURON_CONSUMER_COMPLAINTS";

SHOW COLUMNS IN "INEURON_CONSUMER_COMPLAINTS";

create or replace file format TESTING_FORMAT
  type = csv
  record_delimiter = '\n'
  field_delimiter = ','
  skip_header = 1
  null_if = ('NULL', 'null')
  empty_field_as_null = true;
  
  USE "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC";
  
  CREATE OR REPLACE TABLE OWNER
(
   "OwnerID" INTEGER NOT NULL PRIMARY KEY ,
   "Name" VARCHAR2(20),
   "Surname" STRING,
   "StreetAddress" VARCHAR2(50),
   "City" STRING,
   "State" CHAR(4),
   "StateFull" STRING,
   "ZipCode" INTEGER
);

CREATE OR REPLACE TABLE PETS
(
    "PetID" VARCHAR(10) NOT NULL PRIMARY KEY,
    "Name" VARCHAR(20),
    "Kind" STRING,
    "Gender" CHAR(7),
    "Age" INTEGER,
    "OwnerID" INTEGER NOT NULL REFERENCES OWNER 
);

SELECT * FROM "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."OWNER";
SELECT * FROM "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."PETS";

SELECT * FROM OWNER WHERE OWNERID IN (SELECT DISTINCT OWNERID FROM PETS);
SELECT NAME,SURNAME FROM OWNER WHERE OWNERID NOT IN (SELECT DISTINCT OWNERID FROM PETS WHERE KIND='Dog');

select ownerid, name from "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."OWNER";
except
select ownerid, name from "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."PETS";

SELECT * FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF10"."LINEITEM";


SELECT *, ROW_NUMBER() OVER(ORDER BY L_COMMITDATE) AS ROW_NUM FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF10"."LINEITEM";

CREATE or replace table SS1_CONSUMER_COMPLAINTS(
DATE_RECEIVED STRING,
PRODUCT_NAME VARCHAR2(100),
SUB_PRODUCT VARCHAR2(100),
ISSUE VARCHAR2(100),
SUB_ISSUE VARCHAR2(100),
CONSUMER_COMPLAINT_NARRATIVE string,
Company_Public_Response STRING,
Company VARCHAR(100),
State_Name CHAR(4),
Zip_Code string,
Tags VARCHAR(100),
Consumer_Consent_Provided CHAR(125),
Submitted_via STRING,
Date_Sent_to_Company STRING,
Company_Response_to_Consumer VARCHAR(140),
Timely_Response CHAR(100),
CONSUMER_DISPUTED CHAR(100),
COMPLAINT_ID NUMBER(12,0) NOT NULL PRIMARY KEY
);

USE "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC";
SELECT * FROM "SS1_CONSUMER_COMPLAINTS";
SELECT COUNT(DISTINCT ) FROM "SS1_CONSUMER_COMPLAINTS";
SELECT DISTINCT(PRODUCT_NAME) FROM "SS1_CONSUMER_COMPLAINTS";

SELECT *,
    CASE
        WHEN PRODUCT_NAME IN ('CONSUMER_LOAN', 'STUDENT_LOAN', 'PAYDAY_LOAN') THEN 'CSP_LOAN'
        ELSE 'OTHER_FINANCIAL_SERVICES'
        END AS LOAN_TYPE
FROM "SS1_CONSUMER_COMPLAINTS";


SELECT DISTINCT(DATE_RECEIVED) FROM  "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."SS1_CONSUMER_COMPLAINTS";

SELECT SUBSTRING(DATE_RECEIVED, 7, 12) FROM  "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."SS1_CONSUMER_COMPLAINTS";

select distinct (extract(year from (to_date(date_received, 'dd-mm-yyyy'))))from "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."SS1_CONSUMER_COMPLAINTS";

select distinct (extract(month from (to_date(date_received, 'dd-mm-yyyy'))))from "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."SS1_CONSUMER_COMPLAINTS";

SELECT *,
    CASE
        WHEN (TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')) >= '2013-01-01' AND (TO_DATE (DATE_RECEIVED, 'DD-MM-YYYY')) <= '2013-12-31' THEN 'PPR12_PERIOD'
        WHEN (TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')) >= '2014-01-01' AND (TO_DATE (DATE_RECEIVED, 'DD-MM-YYYY')) <= '2014-12-31' THEN 'PR12_PERIOD'
        WHEN (TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')) >= '2015-01-01' AND (TO_DATE (DATE_RECEIVED, 'DD-MM-YYYY')) <= '2015-12-31' THEN 'R12_PERIOD'
        ELSE 'INVALID_RANGE'
        END AS TXN_PERIOD
FROM "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."SS1_CONSUMER_COMPLAINTS";

 
 -- sql date functions

-- GET CURRENT DATE
SELECT CURRENT_DATE;

-- GET CURRENT TIME
SELECT CURRENT_TIMESTAMP;

-- GET CURRENT DATE
SELECT CURRENT_TIME;

-- CONVERT TIMEZONE
SELECT CONVERT_TIMEZONE('UTC',CURRENT_TIMESTAMP) AS UTC_TIMEZONE;

-- CONVERT DATE TO SUBSEQUENT 4 MONTHS AHEAD
SELECT TO_CHAR(ADD_MONTHS(CURRENT_DATE,4),'DD-MM-YYYY') as DATE_AFTER_4_MONTHS;

-- 3 MONTHS BACK DATE
SELECT TO_CHAR(ADD_MONTHS(CURRENT_DATE,-3),'DD-MM-YYYY') as DATE_BEFORE_3_MONTHS;

-- GET YR FROM DATE
SELECT DATE_TRUNC('YEAR',CURRENT_DATE) AS YR_FROM_DATE;

-- GET MTH FROM DATE
SELECT DATE_TRUNC('MONTH',CURRENT_DATE) AS MTH_FROM_DATE;

-- GET DAY FROM DATE
SELECT DATE_TRUNC('DAY',CURRENT_DATE) AS DAY_FROM_DATE;

-- GET LAST DAY OF current MONTH
select last_day(current_date) as last_day_curr_month;

-- GET LAST DAY OF PREVIOUS MONTH
SELECT LAST_DAY(CURRENT_DATE - INTERVAL '1 MONTH') AS LAST_DAY_PREV_MNTH;

SELECT LAST_DAY(CURRENT_DATE - INTERVAL '2 MONTH') + INTERVAL '1 DAY' AS FIRST_DAY;

SELECT QUARTER(CURRENT_DATE) AS QTR;

SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS YR;
SELECT EXTRACT(MONTH FROM CURRENT_DATE) AS MTH;
SELECT EXTRACT(DAY FROM CURRENT_DATE) AS DAY;

select QUARTER(to_date('1993-08-17'));
select QUARTER(to_date('11-09-2022','DD-MM-YYYY'));
select to_date('11-09-2022','DD-MM-YYYY');


SELECT TO_DATE('1993-08-17') AS DATE;
SELECT TO_CHAR(TO_DATE('1993-08-17'), 'DD-MM-YYYY') AS DATE;
SELECT TO_CHAR(TO_DATE('1993-08-17'), 'MM-YYYY') AS DATE;
SELECT TO_CHAR(TO_DATE('1993-08-17'), 'DD-YYYY') AS DATE;
SELECT TO_CHAR(TO_DATE('1993-08-17'), 'MMMM-YYYY') AS DATE;
SELECT TO_CHAR(TO_DATE('1993-08-17'), 'MON-YYYY') AS DATE;
SELECT TO_CHAR(TO_DATE('1993-08-17'), 'DY') AS DATE;

SELECT ADD_MONTHS(CURRENT_DATE,-3) AS DATE_3_MNTHS_BACK;
SELECT ADD_MONTHS(CURRENT_DATE,5) AS DATE_5_MNTHS_AHEAD;

select datediff('day', '2022-06-01',CURRENT_DATE);
select datediff('MONTH', '2022-06-01',CURRENT_DATE);
select datediff('YEAR', '2014-06-01',CURRENT_DATE);

select dateadd('day',-23,'2022-06-01');
select dateadd('month',-2,'2022-06-01');
select dateadd('year',-5,'2022-06-01');

select WEEK(CURRENT_DATE);  -- FROM 1ST JAN 2022 HOW MANY WEEKS HAVE SURPASSED
select MONTH(CURRENT_DATE);  -- FROM 1ST JAN 2022 HOW MANY MONTHS HAVE SURPASSED
select YEAR(CURRENT_DATE);   -- FROM 1ST JAN 2022 HOW MANY YEAR HAVE SURPASSED



select datediff('MONTH', '2022-06-01',CURRENT_DATE);
select datediff('YEAR', '2014-06-01',CURRENT_DATE);


SELECT DATE_TRUNC('DAY',CURRENT_DATE) AS DAY_FROM_DATE;


---------------------------------------------------------------------------------------------

-- sql date functions

-- GET CURRENT DATE
SELECT CURRENT_DATE;

-- GET CURRENT TIME
SELECT CURRENT_TIMESTAMP;

-- GET CURRENT DATE
SELECT CURRENT_TIME;



-- CONVERT TIMEZONE
SELECT CONVERT_TIMEZONE('UTC',CURRENT_TIMESTAMP) AS UTC_TIMEZONE;

-- CONVERT DATE TO SUBSEQUENT 4 MONTHS AHEAD
SELECT ADD_MONTHS(CURRENT_DATE,4) as DATE_AFTER_4_MONTHS;

-- 3 MONTHS BACK DATE
SELECT TO_CHAR(ADD_MONTHS(CURRENT_DATE,-3),'DD-MM-YYYY') as DATE_BEFORE_3_MONTHS;

-- GET YR FROM DATE
SELECT DATE_TRUNC('YEAR',CURRENT_DATE) AS YR_FROM_DATE;

-- GET MTH FROM DATE
SELECT DATE_TRUNC('MONTH',CURRENTA_DATE) AS MTH_FROM_DATE;

-- GET DAY FROM DATE
SELECT DATE_TRUNC('DAY',CURRENT_DATE) AS DAY_FROM_DATE;

-- GET LAST DAY OF current MONTH
select last_day(current_date) as last_day_curr_month;

-- GET LAST DAY OF PREVIOUS MONTH
SELECT LAST_DAY(CURRENT_DATE - INTERVAL '1 MONTH') AS LAST_DAY_PREV_MNTH;

SELECT LAST_DAY(CURRENT_DATE - INTERVAL '2 MONTH') + INTERVAL '1 DAY' AS FIRST_DAY;

SELECT QUARTER(CURRENT_DATE) AS QTR;

SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS YR;
SELECT EXTRACT(MONTH FROM CURRENT_DATE) AS MTH;
SELECT EXTRACT(DAY FROM CURRENT_DATE) AS DAY;

select QUARTER(to_date('2022-08-24'));

SELECT to_date('08-23-2022','mm-dd-yyyy');

SELECT TO_CHAR('08-23-2022','MM-DD-YYYY');

SELECT TO_DATE('1993-08-17') AS DATE;

SELECT TO_CHAR(TO_DATE('1993-08-17'),'DD-MM-YYYY') AS DATE_DD_MM_YYYY;

SELECT TO_CHAR(TO_DATE('1993-08-17'),'MM-YYYY') AS DATE_MM_YYYY;

SELECT TO_CHAR(TO_DATE('1993-08-17'),'MON-YYYY') AS DATE_MON_YYYY;

SELECT TO_CHAR(TO_DATE('1993-08-17'),'MON-YY') AS DATE_MON_YY;

SELECT TO_CHAR(TO_DATE('1993-08-17'),'DY') AS DATE_DAY;

SELECT DAYNAME ('1993-08-23');

SELECT TO_CHAR(TO_DATE('1993-08-17'),'YYYY-DD') AS DATE;

SELECT TO_CHAR(TO_DATE('1993-08-17'),'DD-MM') AS DATE;

select MONTH(CURRENT_DATE);
SELECT EXTRACT(MONTH FROM CURRENT_DATE) AS MTH;


SELECT ADD_MONTHS(CURRENT_DATE,-3) AS DATE_3_MNTHS_BACK;
SELECT ADD_MONTHS(CURRENT_DATE,5) AS DATE_5_MNTHS_AHEAD;

select datediff('day', '2022-06-01',CURRENT_DATE);
select datediff('day', '2022-07-23','2023-07-19');

select datediff('MONTH', '2021-06-01',CURRENT_DATE);
select datediff('YEAR', '2014-06-01',CURRENT_DATE);

select dateadd('day',-23,'2022-06-01');
select dateadd('month',-2,'2022-06-01');
select dateadd('year',-5,'2022-06-01');

select WEEK(CURRENT_DATE); -- FROM 1ST JAN 2022 HOW MNAY EEKS HAVE SURPASSED
select MONTH(CURRENT_DATE); -- -- FROM 1ST JAN 2022 HOW MNAY MONTHS HAVE SURPASSED
select YEAR(AJSHBJCASbcsasb,); ---- 

select datediff('MONTH', '2022-06-01',CURRENT_DATE);
select datediff('YEAR', '2014-06-01',CURRENT_DATE);


SELECT DATE_TRUNC('DAY',CURRENT_DATE) AS DAY_FROM_DATE;


--------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE TABLE EMPLOYEE
(
   EMPID INTEGER NOT NULL PRIMARY KEY,
   EMP_NAME VARCHAR2(20),
   JOB_ROLE STRING,
   SALARY NUMBER(10,2)
);

INSERT INTO EMPLOYEE
VALUES('101','ANAND JHA','Analyst',50000);

INSERT INTO EMPLOYEE
VALUES(102,'ALex', 'Data Enginner',60000);

INSERT INTO EMPLOYEE
VALUES(103,'Ravi', 'Data Scientist',48000);

INSERT INTO EMPLOYEE
VALUES(104,'Peter', 'Analyst',98000);

INSERT INTO EMPLOYEE
VALUES(105,'Pulkit', 'Data Scientist',72000);

INSERT INTO EMPLOYEE
VALUES(106,'Robert','Analyst',100000);

INSERT INTO EMPLOYEE
VALUES(107,'Rishabh','Data Engineer',67000);

INSERT INTO EMPLOYEE
VALUES(108,'Subhash','Manager',148000);

INSERT INTO EMPLOYEE
VALUES(109,'Michaeal','Manager',213000);

INSERT INTO EMPLOYEE
VALUES(110,'Dhruv','Data Scientist',89000);

INSERT INTO EMPLOYEE
VALUES(111,'Amit Sharma','Analyst',72000);

SELECT * FROM EMPLOYEE;

UPDATE EMPLOYEE SET JOB_ROLE = 'DATA ENGINEER' WHERE EMPID=110;

UPDATE EMPLOYEE SET SALARY = 5000 WHERE EMPID=104;

--- WHAT IS THE DIFFERENCE BETWEEN WHERE AND HAVING
--- WHERE IS THE FILTER OF SELECT STATEMENT (NON-AGGREGATE) 
--- HAVING IS THE FILTER ON GROUPBY (AGGREGATE);
    
   
  
CREATE OR REPLACE TABLE COSUM_COMPLAINTS_COPY AS
SELECT * FROM CONSUM_COMPLAINTS;

CREATE OR REPLACE TABLE COSUM_COMPLAINTS LIKE CONSUM_COMPLAINTS;
SELECT * FROM CONSUM_COMPLAINTS_AWS;



