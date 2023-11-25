CREATE DATABASE 12_FEB_SQL;
USE 12_FEB_SQL;
CREATE TABLE IF NOT EXISTS 12_FEB_SQL_TABLE(
AGE INT,
JOB VARCHAR(30),
MARITAL VARCHAR(30),
EDUCATION VARCHAR(30),
`DEFAULT` VARCHAR(30),
BALANCE INT,
HOUSING VARCHAR(30),
LOAN VARCHAR(30),
CONTACT VARCHAR(30),
`DAY` INT,
`MONTH` VARCHAR(30),
DURATION INT,
CAMPAIGN INT,
PDAYS INT,
PREVIOUS INT,
POUTCOME VARCHAR(30),
Y VARCHAR(30)
)

INSERT INTO 12_FEB_SQL_TABLE VALUES
(44,"technician","single","secondary","no",29,"yes","no","unknown",5,"may",151,1,-1,0,"unknown","no"),
(33,"entrepreneur","married","secondary","no",2,"yes","yes","unknown",5,"may",76,1,-1,0,"unknown","no"),
(33,"entrepreneur","married","secondary","no",2,"yes","yes","unknown",5,"may",76,1,-1,0,"unknown","no"),
(47,"blue-collar","married","unknown","no",1506,"yes","no","unknown",5,"may",92,1,-1,0,"unknown","no"),
(33,"unknown","single","unknown","no",1,"no","no","unknown",5,"may",198,1,-1,0,"unknown","no"),
(35,"management","married","tertiary","no",231,"yes","no","unknown",5,"may",139,1,-1,0,"unknown","no"),
(28,"management","single","tertiary","no",447,"yes","yes","unknown",5,"may",217,1,-1,0,"unknown","no"),
(42,"entrepreneur","divorced","tertiary","yes",2,"yes","no","unknown",5,"may",380,1,-1,0,"unknown","no"),
(58,"retired","married","primary","no",121,"yes","no","unknown",5,"may",50,1,-1,0,"unknown","no"),
(43,"technician","single","secondary","no",593,"yes","no","unknown",5,"may",55,1,-1,0,"unknown","no"),
(41,"admin.","divorced","secondary","no",270,"yes","no","unknown",5,"may",222,1,-1,0,"unknown","no"),
(29,"admin.","single","secondary","no",390,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",6,"yes","no","unknown",5,"may",517,1,-1,0,"unknown","no"),
(58,"technician","married","unknown","no",71,"yes","no","unknown",5,"may",71,1,-1,0,"unknown","no"),
(57,"services","married","secondary","no",162,"yes","no","unknown",5,"may",174,1,-1,0,"unknown","no"),
(51,"retired","married","primary","no",229,"yes","no","unknown",5,"may",353,1,-1,0,"unknown","no"),
(45,"admin.","single","unknown","no",13,"yes","no","unknown",5,"may",98,1,-1,0,"unknown","no"),
(57,"blue-collar","married","primary","no",52,"yes","no","unknown",5,"may",38,1,-1,0,"unknown","no"),
(60,"retired","married","primary","no",60,"yes","no","unknown",5,"may",219,1,-1,0,"unknown","no"),
(33,"services","married","secondary","no",0,"yes","no","unknown",5,"may",54,1,-1,0,"unknown","no"),
(28,"blue-collar","married","secondary","no",723,"yes","yes","unknown",5,"may",262,1,-1,0,"unknown","no"),
(56,"management","married","tertiary","no",779,"yes","no","unknown",5,"may",164,1,-1,0,"unknown","no"),
(32,"blue-collar","single","primary","no",23,"yes","yes","unknown",5,"may",160,1,-1,0,"unknown","no"),
(25,"services","married","secondary","no",50,"yes","no","unknown",5,"may",342,1,-1,0,"unknown","no"),
(40,"retired","married","primary","no",0,"yes","yes","unknown",5,"may",181,1,-1,0,"unknown","no"),
(44,"admin.","married","secondary","no",-372,"yes","no","unknown",5,"may",172,1,-1,0,"unknown","no"),
(39,"management","single","tertiary","no",255,"yes","no","unknown",5,"may",296,1,-1,0,"unknown","no"),
(52,"entrepreneur","married","secondary","no",113,"yes","yes","unknown",5,"may",127,1,-1,0,"unknown","no"),
(46,"management","singlbank_detailsbank_detailse","secondary","no",-246,"yes","no","unknown",5,"may",255,2,-1,0,"unknown","no"),
(36,"technician","single","secondary","no",265,"yes","yes","unknown",5,"may",348,1,-1,0,"unknown","no"),
(57,"technician","married","secondary","no",839,"no","yes","unknown",5,"may",225,1,-1,0,"unknown","no"),
(49,"management","married","tertiary","no",378,"yes","no","unknown",5,"may",230,1,-1,0,"unknown","no"),
(60,"admin.","married","secondary","no",39,"yes","yes","unknown",5,"may",208,1,-1,0,"unknown","no"),
(59,"blue-collar","married","secondary","no",0,"yes","no","unknown",5,"may",226,1,-1,0,"unknown","no"),
(51,"management","married","tertiary","no",10635,"yes","no","unknown",5,"may",336,1,-1,0,"unknown","no"),
(57,"technician","divorced","secondary","no",63,"yes","no","unknown",5,"may",242,1,-1,0,"unknown","no"),
(25,"blue-collar","married","secondary","no",-7,"yes","no","unknown",5,"may",365,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",-3,"no","no","unknown",5,"may",1666,1,-1,0,"unknown","no"),
(36,"admin.","divorced","secondary","no",506,"yes","no","unknown",5,"may",577,1,-1,0,"unknown","no"),
(37,"admin.","single","secondary","no",0,"yes","no","unknown",5,"may",137,1,-1,0,"unknown","no"),
(44,"services","divorced","secondary","no",2586,"yes","no","unknown",5,"may",160,1,-1,0,"unknown","no"),
(50,"management","married","secondary","no",49,"yes","no","unknown",5,"may",180,2,-1,0,"unknown","no"),
(60,"blue-collar","married","unknown","no",104,"yes","no","unknown",5,"may",22,1,-1,0,"unknown","no"),
(54,"retired","married","secondary","no",529,"yes","no","unknown",5,"may",1492,1,-1,0,"unknown","no"),
(58,"retired","married","unknown","no",96,"yes","no","unknown",5,"may",616,1,-1,0,"unknown","no"),
(36,"admin.","single","primary","no",-171,"yes","no","unknown",5,"may",242,1,-1,0,"unknown","no"),
(58,"self-employed","married","tertiary","no",-364,"yes","no","unknown",5,"may",355,1,-1,0,"unknown","no"),
(44,"technician","married","secondary","no",0,"yes","no","unknown",5,"may",225,2,-1,0,"unknown","no"),
(55,"technician","divorced","secondary","no",0,"no","no","unknown",5,"may",160,1,-1,0,"unknown","no"),
(29,"management","single","tertiary","no",0,"yes","no","unknown",5,"may",363,1,-1,0,"unknown","no"),
(54,"blue-collar","married","secondary","no",1291,"yes","no","unknown",5,"may",266,1,-1,0,"unknown","no"),
(48,"management","divorced","tertiary","no",-244,"yes","no","unknown",5,"may",253,1,-1,0,"unknown","no"),
(32,"management","married","tertiary","no",0,"yes","no","unknown",5,"may",179,1,-1,0,"unknown","no"),
(42,"admin.","single","secondary","no",-76,"yes","no","unknown",5,"may",787,1,-1,0,"unknown","no"),
(24,"technician","single","secondary","no",-103,"yes","yes","unknown",5,"may",145,1,-1,0,"unknown","no"),
(38,"entrepreneur","single","tertiary","no",243,"no","yes","unknown",5,"may",174,1,-1,0,"unknown","no"),
(38,"management","single","tertiary","no",424,"yes","no","unknown",5,"may",104,1,-1,0,"unknown","no"),
(47,"blue-collar","married","unknown","no",306,"yes","no","unknown",5,"may",13,1,-1,0,"unknown","no"),
(40,"blue-collar","single","unknown","no",24,"yes","no","unknown",5,"may",185,1,-1,0,"unknown","no"),
(46,"services","married","primary","no",179,"yes","no","unknown",5,"may",1778,1,-1,0,"unknown","no"),
(32,"admin.","married","tertiary","no",0,"yes","no","unknown",5,"may",138,1,-1,0,"unknown","no"),
(53,"technician","divorced","secondary","no",989,"yes","no","unknown",5,"may",812,1,-1,0,"unknown","no"),
(57,"blue-collar","married","primary","no",249,"yes","no","unknown",5,"may",164,1,-1,0,"unknown","no"),
(33,"services","married","secondary","no",790,"yes","no","unknown",5,"may",391,1,-1,0,"unknown","no"),
(49,"blue-collar","married","unknown","no",154,"yes","no","unknown",5,"may",357,1,-1,0,"unknown","no"),
(51,"management","married","tertiary","no",6530,"yes","no","unknown",5,"may",91,1,-1,0,"unknown","no"),
(60,"retired","married","tertiary","no",100,"no","no","unknown",5,"may",528,1,-1,0,"unknown","no"),
(59,"management","divorced","tertiary","no",59,"yes","no","unknown",5,"may",273,1,-1,0,"unknown","no"),
(55,"technician","married","secondary","no",1205,"yes","no","unknown",5,"may",158,2,-1,0,"unknown","no"),
(35,"blue-collar","single","secondary","no",12223,"yes","yes","unknown",5,"may",177,1,-1,0,"unknown","no"),
(57,"blue-collar","married","secondary","no",5935,"yes","yes","unknown",5,"may",258,1,-1,0,"unknown","no"),
(31,"services","married","secondary","no",25,"yes","yes","unknown",5,"may",172,1,-1,0,"unknown","no"),
(54,"management","married","secondary","no",282,"yes","yes","unknown",5,"may",154,1,-1,0,"unknown","no"),
(55,"blue-collar","married","primary","no",23,"yes","no","unknown",5,"may",291,1,-1,0,"unknown","no"),
(43,"technician","married","secondary","no",1937,"yes","no","unknown",5,"may",181,1,-1,0,"unknown","no"),
(53,"technician","married","secondary","no",384,"yes","no","unknown",5,"may",176,1,-1,0,"unknown","no"),
(44,"blue-collar","married","secondary","no",582,"no","yes","unknown",5,"may",211,1,-1,0,"unknown","no"),
(55,"services","divorced","secondary","no",91,"no","no","unknown",5,"may",349,1,-1,0,"unknown","no"),
(49,"services","divorced","secondary","no",0,"yes","yes","unknown",5,"may",272,1,-1,0,"unknown","no"),
(55,"services","divorced","secondary","yes",1,"yes","no","unknown",5,"may",208,1,-1,0,"unknown","no"),
(45,"admin.","single","secondary","no",206,"yes","no","unknown",5,"may",193,1,-1,0,"unknown","no"),
(47,"services","divorced","secondary","no",164,"no","no","unknown",5,"may",212,1,-1,0,"unknown","no"),
(42,"technician","single","secondary","no",690,"yes","no","unknown",5,"may",20,1,-1,0,"unknown","no"),
(59,"admin.","married","secondary","no",2343,"yes","no","unknown",5,"may",1042,1,-1,0,"unknown","yes"),
(46,"self-employed","married","tertiary","no",137,"yes","yes","unknown",5,"may",246,1,-1,0,"unknown","no"),
(51,"blue-collar","married","primary","no",173,"yes","no","unknown",5,"may",529,2,-1,0,"unknown","no"),
(56,"admin.","married","secondary","no",45,"no","no","unknown",5,"may",1467,1,-1,0,"unknown","yes"),
(41,"technician","married","secondary","no",1270,"yes","no","unknown",5,"may",1389,1,-1,0,"unknown","yes"),
(46,"management","divorced","secondary","no",16,"yes","yes","unknown",5,"may",188,2,-1,0,"unknown","no"),
(57,"retired","married","secondary","no",486,"yes","no","unknown",5,"may",180,2,-1,0,"unknown","no"),
(42,"management","single","secondary","no",50,"no","no","unknown",5,"may",48,1,-1,0,"unknown","no"),
(30,"technician","married","secondary","no",152,"yes","yes","unknown",5,"may",213,2,-1,0,"unknown","no"),
(60,"admin.","married","secondary","no",290,"yes","no","unknown",5,"may",583,1,-1,0,"unknown","no")


SELECT * FROM 12_FEB_SQL_TABLE;

CREATE VIEW VIEW_12_FEB_SQL_TABLE AS SELECT AGE, JOB, EDUCATION, `DEFAULT`, BALANCE LOAN FROM 12_FEB_SQL_TABLE;

SELECT * FROM VIEW_12_FEB_SQL_TABLE;

SET SESSION SQL_MODE = "";

LOAD DATA INFILE
'C:/Users/Public/Documents/iNeuron-Data_Analytics/Workspace/Lecture 2/bank/bank.csv'
INTO TABLE 12_FEB_SQL_TABLE
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'	
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM 12_FEB_SQL_TABLE;

SELECT COUNT(*) FROM 12_FEB_SQL_TABLE;

-- 1) Try to find out average of balance.
SELECT AVG(BALANCE) AS BALANCE FROM 12_FEB_SQL_TABLE;

-- 2) with this data try to find out sum of balance 
SELECT SUM(BALANCE) FROM 12_FEB_SQL_TABLE;

-- 3) try to find out who is having a min balance 
SELECT MIN(BALANCE) AS MIN_BALANCE FROM 12_FEB_SQL_TABLE;
SELECT BALANCE AS MIN_BALANCE FROM 12_FEB_SQL_TABLE ORDER BY BALANCE LIMIT 1;
SELECT * FROM 12_FEB_SQL_TABLE WHERE BALANCE IN (SELECT MIN(BALANCE) FROM 12_FEB_SQL_TABLE);
SELECT * FROM 12_FEB_SQL_TABLE WHERE BALANCE = (SELECT MIN(BALANCE) FROM 12_FEB_SQL_TABLE);

-- 4) try to find out who is having 3rd min balance
SELECT BALANCE AS THIRD_MIN_BALANCE FROM 12_FEB_SQL_TABLE ORDER BY BALANCE LIMIT 2,1;

-- 5) try to find out who is having a maximum balance 
SELECT MAX(BALANCE) AS MAX_BALANCE FROM 12_FEB_SQL_TABLE;
SELECT BALANCE AS MAX_BALANCE FROM 12_FEB_SQL_TABLE ORDER BY BALANCE LIMIT 1;
SELECT * FROM 12_FEB_SQL_TABLE WHERE BALANCE IN (SELECT MAX(BALANCE) AS MAX_BALANCE FROM 12_FEB_SQL_TABLE);
SELECT * FROM 12_FEB_SQL_TABLE WHERE BALANCE = (SELECT MAX(BALANCE) AS MAX_BALANCE FROM 12_FEB_SQL_TABLE);

-- 6) try to prepare a list of all the person who is having loan
SELECT * FROM 12_FEB_SQL_TABLE WHERE LOAN = "YES";
SELECT COUNT(*) FROM 12_FEB_SQL_TABLE WHERE LOAN = "YES";

-- 7) try to find out average balance for all the people whose job role is admin 
SELECT AVG(BALANCE) AS AVG_BALANCE FROM 12_FEB_SQL_TABLE WHERE JOB = "ADMIN.";

-- 8) try to find out a record  without job whose age is below 45 
SELECT * FROM 12_FEB_SQL_TABLE WHERE JOB = "UNEMPLOYED" AND AGE < 45;

-- 9) try to find out a record where education is primary and person is jobless
SELECT * FROM 12_FEB_SQL_TABLE WHERE EDUCATION = "PRIMARY" AND JOB = "UNEMPLOYED";

-- 10) try to find of a record whose bank account is having a negative balance 
SELECT * FROM 12_FEB_SQL_TABLE WHERE BALANCE  < 0;
SELECT * FROM 12_FEB_SQL_TABLE WHERE BALANCE IN (SELECT BALANCE AS NEGATIVE_BALANCE FROM 12_FEB_SQL_TABLE WHERE BALANCE < 0);

-- 11) try to find out a record who is not having house at all along with there balance 
SELECT * FROM 12_FEB_SQL_TABLE WHERE BALANCE = "NO";
SELECT * FROM 12_FEB_SQL_TABLE WHERE HOUSING IN (SELECT HOUSING FROM 12_FEB_SQL_TABLE WHERE HOUSING = "NO");

## WHERE CLAUSES CAN BE FETCHED BY IN KEYWORD AND IT CANNOT BE FETCHED BY = KEYWORD !

-- ****************************************	CONSTRAINTS	*********************************

CREATE TABLE TEST_101(
CUS_ID INT NOT NULL AUTO_INCREMENT,
CUS_NAME VARCHAR(30) NOT NULL,
CUS_EMAILID VARCHAR(30) NOT NULL,
CUS_ADDRESS VARCHAR(30) CHECK(CUS_ADDRESS = 'MUMBAI'),
CUS_SALARY DECIMAL(10,4) CHECK(CUS_SALARY > 10000),
PRIMARY KEY(CUS_ID));


INSERT INTO TEST_101 (CUS_ID, CUS_NAME, CUS_EMAILID, CUS_ADDRESS, CUS_SALARY) VALUES
(101, "STEPHEN","stephen.sebastian@gmail.com","MUMBAI",34000);

-- *****************************************(ALTER_UPDATE_DATES)****************************

CREATE DATABASE IF NOT EXISTS 13_FEB_ALTER;

USE 13_FEB_ALTER;

-- csvsql --dialect mysql  --snifflimit 1000000 sales_data_final.csv > output_sales.sql

CREATE TABLE sales_data_final (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(30) NOT NULL, 
	ship_date VARCHAR(30) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 5) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	year DECIMAL(38, 0) NOT NULL
);

SET SESSION SQL_MODE = "";
SET SESSION SQL_MODE = "ALLOW_INVALID_DATES";

LOAD DATA INFILE
'C:/Users/Public/Documents/iNeuron-Data_Analytics/Workspace/Jul 30/sales_data_final.csv'
INTO TABLE sales_data_final
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM SALES_DATA_FINAL;
SELECT COUNT(*) FROM SALES_DATA_FINAL;

SELECT STR_TO_DATE(ORDER_DATE, "%m/%d/%Y") AS `ORDER DATE` FROM SALES_DATA_FINAL;
 
SELECT STR_TO_DATE(ORDER_DATE, "%m/%d/%Y") AS `SHIP DATE` FROM SALES_DATA_FINAL;

ALTER TABLE SALES_DATA_FINAL 
ADD COLUMN ORDER_DATE_NEW DATE AFTER ORDER_DATE;

UPDATE SALES_DATA_FINAL
SET ORDER_DATE_NEW = STR_TO_DATE(ORDER_DATE, '%m/%d/%Y');

ALTER TABLE SALES_DATA_FINAL
ADD COLUMN SHIP_DATE_NEW DATE AFTER SHIP_DATE;

UPDATE SALES_DATA_FINAL
SET SHIP_DATE_NEW = STR_TO_DATE(ORDER_DATE, '%m/%d/%Y');

SELECT * FROM SALES_DATA_FINAL WHERE SHIP_DATE_NEW = "2011-01-01" AND '2021-010-11';

SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

SELECT COUNTRY, COUNT(COUNTRY) FROM SALES_DATA_FINAL GROUP BY COUNTRY ORDER BY COUNTRY DESC;

--- To fetch record having dates before previous week
SELECT * FROM SALES_DATA_FINAL WHERE SHIP_DATE_NEW < DATE_SUB(NOW(), INTERVAL 1 WEEK);

--- To fetch record having dates before previous month
SELECT * FROM SALES_DATA_FINAL WHERE SHIP_DATE_NEW < DATE_SUB(NOW(), INTERVAL 1 MONTH);

--- To fetch record having dates before previous year
SELECT * FROM SALES_DATA_FINAL WHERE SHIP_DATE_NEW < DATE_SUB(NOW(), INTERVAL 1 YEAR);

SELECT YEAR(NOW());

SELECT DAYNAME(NOW());

SELECT DAYNAME('2022-08-05');

-- To override an existing column
ALTER TABLE SALES_DATA_FINAL
MODIFY COLUMN YEAR DATETIME;

ALTER TABLE SALES_DATA_FINAL
ADD COLUMN MONTH_ORDER_DATE_NEW INT AFTER ORDER_DATE_NEW;

ALTER TABLE SALES_DATA_FINAL
ADD COLUMN DAY_ORDER_DATE_NEW INT AFTER ORDER_DATE_NEW;

ALTER TABLE SALES_DATA_FINAL
ADD COLUMN YEAR_ORDER_DATE_NEW INT AFTER MONTH_ORDER_DATE_NEW;

UPDATE SALES_DATA_FINAL
SET DAY_ORDER_DATE_NEW = DAY(ORDER_DATE_NEW);

UPDATE SALES_DATA_FINAL
SET MONTH_ORDER_DATE_NEW = MONTH(ORDER_DATE_NEW);

UPDATE SALES_DATA_FINAL
SET YEAR_ORDER_DATE_NEW = YEAR(ORDER_DATE_NEW);

SELECT * FROM SALES_DATA_FINAL;

SELECT AVG(SALES) AS AVG_SALES, YEAR_ORDER_DATE_NEW FROM SALES_DATA_FINAL GROUP BY YEAR_ORDER_DATE_NEW ORDER BY AVG_SALES ASC;
SELECT SUM(SALES) AS SUM_SALES, YEAR_ORDER_DATE_NEW FROM SALES_DATA_FINAL GROUP BY YEAR_ORDER_DATE_NEW ORDER BY SUM_SALES ASC;
SELECT MIN(SALES) AS MIN_SALES, YEAR_ORDER_DATE_NEW FROM SALES_DATA_FINAL GROUP BY YEAR_ORDER_DATE_NEW ORDER BY MIN_SALES ASC;
SELECT MAX(SALES) AS MAX_SALES, YEAR_ORDER_DATE_NEW FROM SALES_DATA_FINAL GROUP BY YEAR_ORDER_DATE_NEW ORDER BY MAX_SALES DESC;

SELECT SALES, DISCOUNT, SHIPPING_COST, (SALES*DISCOUNT+SHIPPING_COST) AS CTC FROM SALES_DATA_FINAL;

ALTER TABLE SALES_DATA_FINAL
ADD COLUMN FLAG_DISCOUNT VARCHAR(30) AFTER DISCOUNT;

UPDATE SALES_DATA_FINAL
SET FLAG_DISCOUNT = IF(DISCOUNT > 0,'YES','NO');

SELECT ORDER_ID, FLAG_DISCOUNT FROM SALES_DATA_FINAL;

SELECT FLAG_DISCOUNT, COUNT(*) FROM SALES_DATA_FINAL GROUP BY FLAG_DISCOUNT;

-- ***************************************(SQL FUNCTIONS and PROCEDURES)************************

CREATE DATABASE 14_FEB;

USE 14_FEB;

--  csvsql --dialect mysql --snifflimit 100000 a_input.csv > b_output.sql


CREATE TABLE SALES_OUTPUT (
	order_id VARCHAR(15) NOT NULL, 
	order_date varchar(30) NOT NULL, 
	ship_date varchar(30) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 5) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	year DECIMAL(38, 0) NOT NULL
);

SET SESSION SQL_MODE = "";
SET SESSION SQL_MODE = "ALLOW_INVALID_DATES";

LOAD DATA INFILE
'C:/Users/Public/Documents/iNeuron-Data_Analytics/Workspace/Jul 30/sales_data_final.csv'
INTO TABLE SALES_OUTPUT
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- PROCEDURES
SELECT * FROM SALES_OUTPUT;

DELIMITER &&
CREATE PROCEDURE STR_DATE()
BEGIN
	SELECT STR_TO_DATE(SHIP_DATE, '%m/%d/%Y') AS `SHIPPING DATE` FROM SALES_OUTPUT;
END &&
CALL STR_DATE()

DELIMITER &&
CREATE PROCEDURE STR_ORDER_DATE1()
BEGIN
	SELECT STR_TO_DATE(ORDER_DATE, '%m/%d/%YSTR_ORDER_DATE') AS ORDER_DATE_NEW FROM SALES_OUTPUT;
END &&
CALL STR_ORDER_DATE1()

DELIMITER &&
CREATE PROCEDURE AVG_SALES_COUNTRY(IN VAR VARCHAR(30))
 BEGIN
	SELECT AVG(SALES), COUNTRY FROM SALES_OUTPUT WHERE COUNTRY = VAR;
 END &&
CALL AVG_SALES_COUNTRY('INDIA');

CREATE VIEW AVG_SALES_COUNTRY AS SELECT AVG(SALES) AS `AVERAGE SALES`, COUNTRY FROM SALES_OUTPUT GROUP BY COUNTRY ORDER BY `AVERAGE SALES`;
SELECT * FROM AVG_SALES_COUNTRY;

DELIMITER &&
CREATE PROCEDURE COUNTRY_REGION_MARKET(IN COUNTRY VARCHAR(30))
BEGIN
	SELECT AVG(SALES) AS SALES, STATE, REGION, MARKET FROM SALES_OUTPUT WHERE SALES > 300 ORDER BY COUNTRY;
END &&
CALL COUNTRY_REGION_MARKET('INDIA');

DELIMITER &&
CREATE PROCEDURE AVG_SALES_REGION(IN COUNTRYSALES VARCHAR(30), IN REGIONSALES VARCHAR(30))
BEGIN
	SELECT AVG(SALES) AS SALES, STATE, REGION, MARKET FROM SALES_OUTPUT WHERE COUNTRY = COUNTRYSALES AND REGION = REGIONSALES ORDER BY COUNTRY;
END &&
CALL AVG_SALES_REGION('INDIA','CENTRAL ASIA');

DELIMITER &&
CREATE PROCEDURE SALES_400_PLUS()
BEGIN
	SELECT SALES AS SALES, STATE, REGION, MARKET FROM SALES_OUTPUT WHERE SALES > 400 ORDER BY COUNTRY DESC;
END &&
CALL SALES_400_PLUS   

DELIMITER &&
CREATE PROCEDURE SALES_600_PLUS()
BEGIN
	SELECT SALES, STATE, REGION, MARKET FROM SALES_OUTPUT WHERE SALES > 600 GROUP BY MARKET ORDER BY SALES DESC;
END &&
CALL SALES_600_PLUS();

DELIMITER $$
CREATE FUNCTION AREA_SQUARE(LENGTH FLOAT, BREADTH FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE AREA INT;
    SET AREA = LENGTH * BREADTH;
    RETURN AREA;
END $$
SELECT AREA_SQUARE(19.9, 20.1)
 
-- FUNCTIONS 
 DELIMITER $$
CREATE FUNCTION ADD_FUNC(X INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE B INT;
    SET B = X+10;
    RETURN B;
END $$
SELECT ADD_FUNC(30);

DELIMITER $$
CREATE FUNCTION ADD_FUN(A INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE B INT;
    SET B = A+100;
    RETURN B;
END $$
SELECT ADD_FUN(1000);

DELIMITER $$
CREATE FUNCTION MUL_FUNC(Y FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE X INT;
    SET X = Y * 9.99;
    RETURN X;
END $$
SELECT MUL_FUNC(10.22)

DELIMITER $$
CREATE FUNCTION MUL_DUO(X INT, Y INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE Z INT;
    SET Z = X*Y;
    RETURN Z;
END $$
SELECT MUL_DUO(99,99)

DELIMITER $$
CREATE FUNCTION MUL_DIV(X INT, Y INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE Z INT;
    SET Z = X/Y;
    RETURN Z;
END $$
SELECT MUL_DIV(99,9)

DELIMITER $$
CREATE FUNCTION DISCOUNT_CALC(SELLING_PRICE FLOAT, COST_PRICE FLOAT, DISCOUNT FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE NET_PROFIT FLOAT;
    SET NET_PROFIT = (SELLING_PRICE - COST_PRICE)*DISCOUNT;
    RETURN NET_PROFIT;
END $$
SELECT DISCOUNT_CALC(2100, 1990, 0.1);

DELIMITER $$
CREATE FUNCTION NET_PROFIT_FUNC(SELLING_PRICE FLOAT, COST_PRICE FLOAT, DISCOUNT FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE NET_PROFIT FLOAT;
    SET NET_PROFIT = (SELLING_PRICE - COST_PRICE)*DISCOUNT;
    RETURN NET_PROFIT;
END $$
SELECT NET_PROFIT_FUNC(101,53,0.20);

-- PERIMETER OF A RECTANGLE
DELIMITER $$
CREATE FUNCTION PERIMETER_RECTANGLE(LENGTH FLOAT, BREADTH FLOAT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
	DECLARE PERIMETER FLOAT;
    SET PERIMETER = 2*(LENGTH + BREADTH);
    RETURN PERIMETER;
END $$
SELECT PERIMETER_RECTANGLE(11.2,10.5);

DELIMITER $$
CREATE FUNCTION SALES_MARKER(SALES INT)
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
	DECLARE FLAG_SALES VARCHAR(30);
    IF SALES < 100 THEN
		SET FLAG_SALES = "SUPER AFFORDABLE";
	ELSEIF SALES > 100 AND SALES < 300 THEN
		SET FLAG_SALES = "AFFORDABLE";
	ELSEIF SALES > 300 AND SALES < 600 THEN
		SET FLAG_SALES = "EXPENSIVE";
	ELSE 
		SET FLAG_SALES = "SUPER EXPENSIVE";
	END IF;
    RETURN FLAG_SALES;
END $$
SELECT COUNTRY, SALES, SALES_MARKER(SALES) FROM SALES_OUTPUT;

DELIMITER $$
CREATE FUNCTION MARK_SALES(SALES INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE FLAG_SALES VARCHAR(50);
    IF SALES < 100 THEN
		SET FLAG_SALES = "SUPER AFFORDABLE";
	ELSEIF SALES > 100 AND SALES < 300 THEN
		SET FLAG_SALES = "AFFORDABLE";
	ELSEIF SALES > 300 AND SALES < 600 THEN
		SET FLAG_SALES = "EXPENSIVE";
	ELSE
		SET FLAG_SALES = "SUPER-EXPENSIVE";
	END IF;
    RETURN FLAG_SALES;
END $$

SELECT COUNTRY, SALES, MARK_SALES(SALES) FROM SALES_OUTPUT ORDER BY SALES DESC;

CREATE TABLE INSERT_LOOP(VAL INT);
SELECT * FROM INSERT_LOOP;
DELIMITER &&
CREATE PROCEDURE INSERT_DATA(IN VAL INT)
BEGIN
	SET @VAR = 10;
    GENERATE_LOOP : LOOP
    INSERT INTO INSERT_LOOP VALUES (@VAR);
    SET @VAR = @VAR + 1;
    IF @VAR = 100 THEN
		LEAVE GENERATE_LOOP;
	END IF;
    END LOOP GENERATE_LOOP;
END &&
CREATE TABLE GENERATE_NUM (DAT INT)

DELIMITER &&
CREATE PROCEDURE GENERATE_NUM_LOOP(IN DAX INT)
BEGIN
	SET @DAX = 100;
    GENERATE_LOOP : LOOP
    INSERT INTO GENERATE_NUM VALUES(@DAX);
	SET @DAX = @DAX + 1;
    IF @DAX = 100 THEN
		LEAVE GENERATE_LOOP;
	END IF;
    END LOOP GENERATE_LOOP;
END &&
SELECT GENERATE_NUM_LOOP;
CALL GENERATE_NUM_LOOP(1);

CREATE TABLE INSERT_LOOP_DAX (DAX INT);
SELECT * FROM INSERT_LOOP_DAX;
DELIMITER &&
CREATE PROCEDURE INSERT_LOOP_PROCEDURE(IN DAT INT)
BEGIN
	SET @VAR = 1;
    GENERATE_LOOP : LOOP
    INSERT INTO INSERT_LOOP_DAX VALUES(@VAR);
    SET @VAR = @VAR + 1;
    IF @VAR =100 THEN 
		LEAVE GENERATE_LOOP;
	END IF;
    END LOOP GENERATE_LOOP;
END &&
CALL INSERT_LOOP_PROCEDURE(1);

-- ***********************************************************************************************

CREATE DATABASE KEY_PRIME_NEW;
USE KEY_PRIME_NEW;

CREATE TABLE test1(
COURSE_ID INT NOT NULL,
COURSE_NAME VARCHAR(60),
COURSE_STATUS VARCHAR(60),
NUMBER_OF_ENROL INT,
PRIMARY KEY(COURSE_ID)
)

INSERT INTO test1 VALUES(101, "FSDA", "ACTIVE",100)
INSERT INTO test1 VALUES(102, "FSDA", "NOT-ACTIVE",100)

CREATE TABLE STUDENT_TEST1(
STUDENT_ID INT NOT NULL,
COURSE_NAME VARCHAR(60),
COURSE_MAIL VARCHAR(60),
NUMBER_STATUS VARCHAR(40),
COURSE_ID INT,
FOREIGN KEY(COURSE_ID) REFERENCES TEST1(COURSE_ID)
);  

INSERT INTO student_test1 VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)
INSERT INTO student_test1 VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)
INSERT INTO student_test1 VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)
INSERT INTO student_test1 VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)

SELECT * FROM STUDENT_TEST1;

CREATE TABLE PAYMENT(
COURSE_NAME VARCHAR(60),
COURSE_ID INT,
COURSE_LIVE_STATUS VARCHAR(60),
COURSE_LAUNCH_DATE 	VARCHAR(40),
FOREIGN KEY(COURSE_ID) REFERENCES TEST1(COURSE_ID)
);

INSERT INTO PAYMENT VALUES("FSDA",101,"ACTIVE","Aug 7");
INSERT INTO PAYMENT VALUES("FSDA",101,"ACTIVE","Aug 7");

CREATE TABLE CLASS_UPDATED(
COURSE_ID INT,
CLASS_NAME VARCHAR(60),
CLASS_TOPIC VARCHAR(60),
CLASS_DURATION 	INT,
PRIMARY KEY(COURSE_ID),
FOREIGN KEY(COURSE_ID) REFERENCES TEST1(COURSE_ID)
);

INSERT INTO CLASS_UPDATED VALUES (101,"FSDA","SQL","120");
INSERT INTO CLASS_UPDATED VALUES (102,"FSDA","SQL","120");

ALTER TABLE TEST1  -- CANNOT DROP A PARENT TABLE WITHOUT DROPPING THE REFERENCED TABLE
DROP PRIMARY KEY;

ALTER TABLE CLASS_UPDATED  -- CANNOT DROP A PARENT TABLE WITHOUT DROPPING THE REFERENCED TABLE
DROP PRIMARY KEY;

ALTER TABLE TEST1       -- CANNOT DECLARED TWO FEATURES AS A PRIMARY KEY
ADD CONSTRAINT TEST_PRIM PRIMARY KEY(COURSE_ID, COURSE_NAME);

CREATE TABLE IF NOT EXISTS TEST_MUL_PRIMARY_KEY(
ID INT NOT NULL,
`NAME` VARCHAR(60),
EMAIL_ID VARCHAR(60),
MOBILE_NUMBER INT,
ADDRESS VARCHAR(40)
);

ALTER TABLE TEST_MUL_PRIMARY_KEY 
ADD CONSTRAINT PRIMARY KEY(ID);

ALTER TABLE TEST_MUL_PRIMARY_KEY 
DROP PRIMARY KEY;

CREATE TABLE IF NOT EXISTS PARENT(
ID INT NOT NULL AUTO_INCREMENT,
PRIMARY KEY(ID)
);

CREATE TABLE IF NOT EXISTS CHILD(
ID INT NOT NULL,
PARENT_ID INT,
FOREIGN KEY(PARENT_ID) REFERENCES PARENT(ID)
);

INSERT INTO PARENT VALUES (1);
SELECT * FROM PARENT;

INSERT INTO CHILD VALUES(1,1);

SELECT * FROM CHILD

DELETE FROM PARENT WHERE ID = 1

DELETE FROM CHILD WHERE ID =1 

CREATE TABLE CHILD_CASCADE(
ID INT,
PARENT_ID INT,
FOREIGN KEY(PARENT_ID) REFERENCES PARENT(ID) ON DELETE CASCADE
);
INSERT INTO CHILD_CASCADE VALUES(1,1);
SELECT * FROM CHILD_CASCADE;

-- ON DELETE CASCADE
CREATE TABLE STUDENT_CSCDE (
    sno INT PRIMARY KEY,
    sname VARCHAR(20),
    age INT
);

INSERT INTO STUDENT_CSCDE(sno, sname,age) VALUES(1,'Ankit',17), (2,'Ramya',18), (3,'Ram',16);

SELECT * FROM STUDENT_CSCDE;

CREATE TABLE COURSE_CSCDE (
    cno INT PRIMARY KEY,
    cname VARCHAR(20)
);

INSERT INTO COURSE_CSCDE(cno, cname) VALUES(101,'c'), (102,'c++'), (103,'DBMS');

CREATE TABLE ENROLL_CSCDE(
SNO INT, 
CNO INT,
JOIN_DATE VARCHAR(30),
PRIMARY KEY(SNO, CNO),
FOREIGN KEY(SNO) REFERENCES STUDENT_CSCDE(SNO) ON DELETE CASCADE,
FOREIGN KEY(CNO) REFERENCES COURSE_CSCDE(CNO) ON DELETE CASCADE);

INSERT INTO ENROLL_CSCDE(sno,cno,JOIN_DATE) VALUES(1, 101, '5-jun-2021'), (1, 102, '5-jun-2021'), (2, 103, '6-jun-2021');

SELECT * FROM ENROLL_CSCDE;
SELECT * FROM STUDENT_CSCDE;
SELECT * FROM COURSE_CSCDE;
DELETE FROM STUDENT_CSCDE WHERE SNO = 1;

-- ON UPDATE CASCADE
CREATE TABLE STUDENT_CSCDE_UPDATE (
    sno INT PRIMARY KEY,
    sname VARCHAR(20),
    age INT
);

INSERT INTO STUDENT_CSCDE_UPDATE(sno, sname,age) VALUES(1,'Ankit',17), (2,'Ramya',18), (3,'Ram',16);

SELECT * FROM STUDENT_CSCDE_UPDATE;

CREATE TABLE COURSE_CSCDE_UPDATE (
    cno INT PRIMARY KEY,
    cname VARCHAR(20)
);

INSERT INTO COURSE_CSCDE_UPDATE(cno, cname) VALUES(101,'c'), (102,'c++'), (103,'DBMS');

CREATE TABLE ENROLL_CSCDE_UPDATE(
SNO INT, 
CNO INT,
JOIN_DATE VARCHAR(30),
PRIMARY KEY(SNO, CNO),
FOREIGN KEY(SNO) REFERENCES STUDENT_CSCDE_UPDATE(SNO) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY(CNO) REFERENCES COURSE_CSCDE_UPDATE(CNO) ON DELETE CASCADE ON UPDATE CASCADE);

INSERT INTO ENROLL_CSCDE_UPDATE(sno,cno,JOIN_DATE) VALUES(1, 101, '5-jun-2021'), (1, 102, '5-jun-2021'), (2, 103, '6-jun-2021');

SELECT * FROM ENROLL_CSCDE_UPDATE;
SELECT * FROM STUDENT_CSCDE_UPDATE;
SELECT * FROM COURSE_CSCDE_UPDATE;
DELETE FROM STUDENT_CSCDE WHERE SNO = 1;

INSERT INTO COURSE_CSCDE_UPDATE(cno, cname) VALUES(104,'DSA');
INSERT INTO STUDENT_CSCDE_UPDATE(sno, sname,age) VALUES(4,'Ankit',17);

-- ***************************************************************************************

CREATE DATABASE WINDOW_FUNCTIONS;
USE WINDOW_FUNCTIONS;

CREATE TABLE INEURON_STUDENTS(
student_id int ,
student_batch varchar(40),
student_name varchar(40),
student_stream varchar(30),
students_marks int ,
student_mail_id varchar(50));

INSERT INTO INEURON_STUDENTS VALUES(100 ,'fsda' , 'saurabh','cs',80,'saurabh@gmail.com'),
(102 ,'fsda' , 'sanket','cs',81,'sanket@gmail.com'),
(103 ,'fsda' , 'shyam','cs',80,'shyam@gmail.com'),
(104 ,'fsda' , 'sanket','cs',82,'sanket@gmail.com'),
(105 ,'fsda' , 'shyam','ME',67,'shyam@gmail.com'),
(106 ,'fsds' , 'ajay','ME',45,'ajay@gmail.com'),
(106 ,'fsds' , 'ajay','ME',78,'ajay@gmail.com'),
(108 ,'fsds' , 'snehal','CI',89,'snehal@gmail.com'),
(109 ,'fsds' , 'manisha','CI',34,'manisha@gmail.com'),
(110 ,'fsds' , 'rakesh','CI',45,'rakesh@gmail.com'),
(111 ,'fsde' , 'anuj','CI',43,'anuj@gmail.com'),
(112 ,'fsde' , 'mohit','EE',67,'mohit@gmail.com'),
(113 ,'fsde' , 'vivek','EE',23,'vivek@gmail.com'),
(114 ,'fsde' , 'gaurav','EE',45,'gaurav@gmail.com'),
(115 ,'fsde' , 'prateek','EE',89,'prateek@gmail.com'),
(116 ,'fsde' , 'mithun','ECE',23,'mithun@gmail.com'),
(117 ,'fsbc' , 'chaitra','ECE',23,'chaitra@gmail.com'),
(118 ,'fsbc' , 'pranay','ECE',45,'pranay@gmail.com'),
(119 ,'fsbc' , 'sandeep','ECE',65,'sandeep@gmail.com')
INSERT INTO INEURON_STUDENTS VALUES(100 ,'fsda' , 'saurabh','cs',80,'saurabh@gmail.com');
INSERT INTO INEURON_STUDENTS VALUES(119 ,'fsbc' , 'sandeep','ECE',65,'sandeep@gmail.com');

SELECT * FROM INEURON_STUDENTS;

SELECT STUDENT_BATCH, SUM(STUDENTS_MARKS) FROM INEURON_STUDENTS GROUP BY STUDENT_BATCH;
SELECT STUDENT_BATCH, MIN(STUDENTS_MARKS) FROM INEURON_STUDENTS GROUP BY STUDENT_BATCH;
SELECT STUDENT_BATCH, MAX(STUDENTS_MARKS) FROM INEURON_STUDENTS GROUP BY STUDENT_BATCH;
SELECT STUDENT_BATCH, COUNT(STUDENT_BATCH) FROM INEURON_STUDENTS GROUP BY STUDENT_BATCH ORDER BY STUDENT_BATCH;
SELECT DISTINCT(COUNT(STUDENT_BATCH)) FROM INEURON_STUDENTS;

-- -------------------------------(ANALYTICAL WINDOWING FUNCTIONS)--------------------------------------

-- FUNCTIONS BY CREATING THE FUNCTIONS OF A DATASET. IT TRIES TO CREATE GROUPS AND PERFORMS OPERATIONS ON THAT SPECIFIC GROUP ITSEF..
-- 1) ROW NUMBER 2) RANK 3) DENSE RANK

SELECT * FROM INEURON_STUDENTS;

-- 1) Who has received highest marks in fsda batch
SELECT STUDENT_ID, STUDENT_BATCH, STUDENTS_MARKS FROM INEURON_STUDENTS WHERE STUDENT_BATCH = 'FSDA' ORDER BY STUDENTS_MARKS DESC LIMIT 1;
SELECT * FROM INEURON_STUDENTS WHERE STUDENTS_MARKS IN
(SELECT MAX(STUDENTS_MARKS) FROM INEURON_STUDENTS WHERE STUDENT_BATCH = 'FSDA' ORDER BY STUDENTS_MARKS);

-- 2) Who has second received highest marks in fsda batch
SELECT STUDENT_ID, STUDENT_BATCH, STUDENTS_MARKS FROM INEURON_STUDENTS WHERE STUDENT_BATCH = 'FSDA' ORDER BY STUDENTS_MARKS DESC LIMIT 1,1;

-- 3) Who has third received highest marks in fsda batch
SELECT STUDENT_ID, STUDENT_BATCH, STUDENTS_MARKS FROM INEURON_STUDENTS WHERE STUDENT_BATCH = 'FSDA' ORDER BY STUDENTS_MARKS DESC LIMIT 2,1;

SELECT * FROM INEURON_STUDENTS WHERE STUDENTS_MARKS = (
SELECT MAX(STUDENTS_MARKS) FROM 
(SELECT STUDENTS_MARKS FROM INEURON_STUDENTS WHERE STUDENT_BATCH = "FSDA" ORDER BY STUDENTS_MARKS LIMIT 4) AS TEST);

-- ************************************(WINDOWING FUNCTION)***************************

-- ROW_NUMBER()
SELECT STUDENT_ID, STUDENT_BATCH, STUDENT_NAME, STUDENT_STREAM, STUDENTS_MARKS, ROW_NUMBER() 
OVER (ORDER BY STUDENTS_MARKS DESC) AS `ROW NUMBER` FROM INEURON_STUDENTS;

-- PARTITION BY
SELECT STUDENT_ID, STUDENT_BATCH, STUDENT_NAME, STUDENT_STREAM, STUDENTS_MARKS, ROW_NUMBER()
OVER(PARTITION BY STUDENT_BATCH ORDER BY STUDENTS_MARKS DESC) AS `ROW NUMBER` FROM INEURON_STUDENTS;

-- RANK()
SELECT STUDENT_ID, STUDENT_BATCH, STUDENT_NAME, STUDENT_STREAM, STUDENTS_MARKS, ROW_NUMBER()
OVER(PARTITION BY STUDENT_BATCH ORDER BY STUDENTS_MARKS) AS `ROW NUMBER`,
RANK() OVER(PARTITION BY STUDENT_BATCH ORDER BY STUDENTS_MARKS) AS `RANK` FROM INEURON_STUDENTS;

-- DENSE RANK()
SELECT STUDENT_ID, STUDENT_BATCH, STUDENT_NAME, STUDENT_STREAM, STUDENTS_MARKS, ROW_NUMBER()
OVER(PARTITION BY STUDENT_BATCH ORDER BY STUDENTS_MARKS) AS `ROW NUMBER`,
RANK() OVER(PARTITION BY STUDENT_BATCH ORDER BY STUDENTS_MARKS) AS `RANK`,
DENSE_RANK() OVER(PARTITION BY STUDENT_BATCH ORDER BY STUDENTS_MARKS) AS `DENSE RANK`
FROM INEURON_STUDENTS; 

SELECT * FROM 
(SELECT STUDENT_ID, STUDENT_BATCH, STUDENT_NAME, STUDENT_STREAM, STUDENTS_MARKS, ROW_NUMBER()
OVER(PARTITION BY STUDENT_BATCH ORDER BY STUDENTS_MARKS) AS `ROW NUMBER`,
RANK() OVER(PARTITION BY STUDENT_BATCH ORDER BY STUDENTS_MARKS) AS `RANK`,
DENSE_RANK() OVER(PARTITION BY STUDENT_BATCH ORDER BY STUDENTS_MARKS) AS `DENSE RANK`
FROM INEURON_STUDENTS) AS TEST WHERE `DENSE RANK`=1;

-- ************************(PARTITION)**********************
CREATE DATABASE TEST_FEB15_PARTITION;
USE TEST_FEB15_PARTITION;

-- CREATE THE PARTITION BY RANGE
CREATE TABLE INEURON_COURSE_UPDATED(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
PARTITION BY RANGE (COURSE_LAUCH_YEAR)(
PARTITION P0 VALUES LESS THAN (2019),
PARTITION P1 VALUES LESS THAN (2020),
PARTITION P2 VALUES LESS THAN (2021),
PARTITION P3 VALUES LESS THAN (2022),
PARTITION P4 VALUES LESS THAN (2023));

insert into ineuron_course_updated values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 101 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) 

SELECT * FROM INEURON_COURSE_UPDATED WHERE COURSE_LAUCH_YEAR = "2020";
SELECT PARTITION_NAME, TABLE_NAME, TABLE_ROWS FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME = "INEURON_COURSE_UPDATED";

-- HASH PARTITIONG
CREATE TABLE COURSE_INEURON_UPDATED1(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
PARTITION BY HASH(COURSE_LAUCH_YEAR)
PARTITIONS 5;

INSERT INTO COURSE_INEURON_UPDATED1 VALUES('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 101 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 101 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 101 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 101 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) 

SELECT PARTITION_NAME, TABLE_NAME, TABLE_ROWS FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME = "COURSE_INEURON_UPDATED1";

-- KEY PARTITIONING
CREATE TABLE COURSE_INEURON_UPDATED2(
course_name varchar(50) ,
course_id int(10) primary key, 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
PARTITION BY KEY()
PARTITIONS 10;

INSERT INTO COURSE_INEURON_UPDATED2 VALUES('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 111 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 112 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 113 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 114 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 115 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) 

SELECT PARTITION_NAME, TABLE_NAME, TABLE_ROWS FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME = "COURSE_INEURON_UPDATED2";

SELECT MD5(114);

-- LIST PARTITIONG
CREATE TABLE COURSE_INEURON_UPDATED3(
course_name varchar(50) ,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
PARTITION BY LIST(COURSE_LAUCH_YEAR) (
PARTITION P0 VALUES IN (2019, 2020),
PARTITION P1 VALUES IN (2021, 2022));

INSERT INTO COURSE_INEURON_UPDATED3 VALUES('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 111 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 112 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 113 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 114 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 115 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019); 

SELECT PARTITION_NAME, TABLE_NAME, TABLE_ROWS FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME = "COURSE_INEURON_UPDATED3";

-- PARTITION BY RANGE COLUMNS
CREATE TABLE COURSE_INEURON_UPDATED4 (
course_name varchar(50) ,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
PARTITION BY RANGE COLUMNS (COURSE_NAME, COURSE_ID, COURSE_LAUCH_YEAR)(
PARTITION P0 VALUES LESS THAN ('aiops',105, 2019),
PARTITION P1 VALUES LESS THAN ('fsds', 110, 2021),
PARTITION P2 VALUES LESS THAN ('MERN', 114, 2023));

INSERT IGNORE INTO COURSE_INEURON_UPDATED4 VALUES('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 111 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 112 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 113 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 114 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 115 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

SELECT PARTITION_NAME, TABLE_NAME, TABLE_ROWS FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME = "COURSE_INEURON_UPDATED4";

-- PARITION BY LIST COLUMNS
CREATE TABLE IF NOT EXISTS COURSE_INEURON_UPDATED4(
course_name varchar(50),
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
PARTITION BY LIST COLUMNS(COURSE_NAME)(
PARTITION P0 VALUES IN ('aiops','data analytics','Dl','RL'),
PARTITION P1 VALUES IN ('fsds' ,'big data','blockchain'),
PARTITION P2 VALUES IN ('MERN','java','interview prep','fsda'));

INSERT IGNORE INTO COURSE_INEURON_UPDATED4 VALUES('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 111 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 112 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 113 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 114 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 115 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

SELECT PARTITION_NAME, TABLE_NAME, TABLE_ROWS FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME = "COURSE_INEURON_UPDATED4";

-- SUB-PARTITIONING
CREATE TABLE IF NOT EXISTS COURSE_INEURON_UPDATED5(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int) 
PARTITION BY RANGE(COURSE_LAUCH_YEAR)
SUBPARTITION BY HASH(COURSE_LAUCH_YEAR)
SUBPARTITIONS 5(
PARTITION P0 VALUES LESS THAN (2019),
PARTITION P1 VALUES LESS THAN (2020),
PARTITION P2 VALUES LESS THAN (2021),
PARTITION P3 VALUES LESS THAN (2022)
);

INSERT IGNORE INTO COURSE_INEURON_UPDATED5 VALUES('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 111 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 112 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 113 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 114 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 115 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

SELECT PARTITION_NAME, TABLE_NAME, TABLE_ROWS FROM INFORMATION_SCHEMA.PARTITIONS WHERE TABLE_NAME = "COURSE_INEURON_UPDATED5";

-- ----------------------------JOINS AND COMMON TABLE EXPRESSIONS)--------------------------------------

CREATE DATABASE JOIN_CTE_OPERATION;
USE JOIN_CTE_OPERATION;

create table if not exists course (
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50))

create table if not exists student (
student_id int,
student_name varchar(50),
student_mobile int,
student_course_enroll varchar(30),
student_course_id int)

insert into course values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language')

insert into student values(301 , "sudhanshu", 3543453,'yes', 101),
(302 , "sudhanshu", 3543453,'yes', 102),
(301 , "sudhanshu", 3543453,'yes', 105),
(302 , "sudhanshu", 3543453,'yes', 106),
(303 , "sudhanshu", 3543453,'yes', 101),
(304 , "sudhanshu", 3543453,'yes', 103),
(305 , "sudhanshu", 3543453,'yes', 105),
(306 , "sudhanshu", 3543453,'yes', 107),
(306 , "sudhanshu", 3543453,'yes', 103)

SELECT * FROM COURSE

SELECT * FROM STUDENT

-- WHO HAS ENROLLED FOR A PARTICULAR COURSE
SELECT C.COURSE_ID, C.COURSE_NAME, C.COURSE_DESC, C.COURSE_TAG, S.STUDENT_ID, S.STUDENT_NAME, S.STUDENT_COURSE_ID
FROM COURSE C INNER JOIN STUDENT S ON (C.COURSE_ID = S.STUDENT_COURSE_ID);

-- THE COURSE IN WHICH NONE OF THE STUDENTS WERE ENROLLED
SELECT C.COURSE_ID, C.COURSE_NAME, C.COURSE_DESC, C.COURSE_TAG, S.STUDENT_ID, S.STUDENT_NAME, S.STUDENT_COURSE_ID
FROM COURSE C LEFT OUTER JOIN STUDENT S ON (C.COURSE_ID = S.STUDENT_COURSE_ID) WHERE S.STUDENT_COURSE_ID IS NULL;

SELECT * FROM (
SELECT C.COURSE_ID, C.COURSE_NAME, C.COURSE_DESC, C.COURSE_TAG, S.STUDENT_ID, S.STUDENT_NAME, S.STUDENT_COURSE_ID
FROM COURSE C LEFT OUTER JOIN STUDENT S ON (C.COURSE_ID = S.STUDENT_COURSE_ID)) AS TEST WHERE STUDENT_COURSE_ID IS NULL;

-- STUDENTS WHO ARE NOT ENROLLED TO ANY COURSES
SELECT * FROM (
SELECT C.COURSE_ID, C.COURSE_NAME, C.COURSE_DESC, C.COURSE_TAG, S.STUDENT_ID, S.STUDENT_NAME, S.STUDENT_COURSE_ID
FROM COURSE C RIGHT OUTER JOIN STUDENT S ON (C.COURSE_ID = S.STUDENT_COURSE_ID)) AS TEST WHERE COURSE_ID IS NULL;

-- CROSS JOIN - similar to inner join when we perform it by applying a condition (where clause). 
-- But the difference is that it tries to find out all the permutation and combination which is 
-- available on both left and right table.(does one to many mapping)

SELECT C.COURSE_ID, C.COURSE_NAME, C.COURSE_DESC, C.COURSE_TAG, S.STUDENT_ID, S.STUDENT_NAME, S.STUDENT_COURSE_ID FROM 
COURSE C CROSS JOIN STUDENT S ON (C.COURSE_ID = S.STUDENT_COURSE_ID)

-- INDEXING - USED FOR OPTIMIZING SEARCH OPERATION QUERY

create table if not exists course1(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
index(course_id))

insert into course1 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language')

SHOW INDEX FROM COURSE1;

-- MULTI-COLUMN INDEXING
create table if not exists course2(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
INDEX(COURSE_ID, COURSE_NAME));

create table if not exists course4(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
INDEX(COURSE_ID, COURSE_NAME, COURSE_DESC));

insert into course4 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language')

select * from course4 where course_id = 106; -- EXECUTION TIME - 25810

create table if not exists course3(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50));

insert into course3 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');

select * from course3 where course_id = 106;  -- EXECUTION TIME - 20700

-- UNION - COMBINE THE RESULTS OF TWO TABLES. IT PERFORMS VERTICAL JOIN OPERATIONS
SELECT * FROM COURSE;
SELECT * FROM STUDENT;
SELECT COURSE_ID, COURSE_NAME FROM COURSE UNION SELECT STUDENT_ID, STUDENT_NAME FROM STUDENT;
SELECT COURSE_ID, COURSE_NAME FROM COURSE UNION ALL SELECT STUDENT_ID, STUDENT_NAME FROM STUDENT;

-- CTE (COMMON TABLE EXPRESSIONS)
WITH SAMPLE_COURSE AS(
SELECT * FROM COURSE WHERE COURSE_ID IN (101,102,103))
SELECT * FROM SAMPLE_COURSE WHERE COURSE_TAG = "JAVA";

WITH SAMPLE_COURSE AS (
SELECT * FROM COURSE WHERE COURSE_ID IN (101,102,103))
SELECT * FROM SAMPLE_COURSE WHERE COURSE_TAG = "ANALYTICS";

WITH COURSE_SAMPLE AS (
SELECT C.COURSE_ID, C.COURSE_NAME, C.COURSE_DESC, C.COURSE_TAG, S.STUDENT_ID, S.STUDENT_NAME, S.STUDENT_COURSE_ID 
FROM COURSE C INNER JOIN STUDENT S ON (C.COURSE_ID = S.STUDENT_ID))
SELECT * FROM COURSE_SAMPLE WHERE COURSE_NAME = "BIG DATA";

WITH CTE_TEST AS (
SELECT 1 AS COL1, 2 AS COL2
UNION ALL SELECT 3,4)
SELECT * FROM CTE_TEST;

-- RECURSIVE CTE

WITH RECURSIVE CTE_TEST AS (
SELECT 1 AS N UNION ALL SELECT N+1 FROM CTE_TEST WHERE N<10)
SELECT * FROM CTE_TEST;

WITH RECURSIVE CTE_TEST AS(
SELECT 1 AS N, 2 AS P, 3 AS R UNION ALL SELECT N+1, P+1, R+1 FROM CTE_TEST WHERE N<=10)
SELECT * FROM CTE_TEST;

-- ------------------------------DATE FUNCTIONS----------------------------------
CREATE DATABASE FEB_17;
USE FEB_17;

CREATE TABLE sales_data_final (
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(30) NOT NULL, 
	ship_date VARCHAR(30) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 5) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	year DECIMAL(38, 0) NOT NULL
);

SET SESSION SQL_MODE = "";
SET SESSION SQL_MODE = "ALLOW_INVALID_DATES";

LOAD DATA INFILE
'C:/Users/Public/Documents/iNeuron-Data_Analytics/Workspace/Jul 30/sales_data_final.csv'
INTO TABLE sales_data_final
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM SALES_DATA_FINAL;

ALTER TABLE SALES_DATA_FINAL
ADD COLUMN SHIP_DATE_UPDATED INT AFTER SHIP_DATE;

UPDATE SALES_DATA_FINAL 
SET SHIP_DATE_UPDATED = STR_TO_DATE(SHIP_DATE, "%m/%d/%Y");

ALTER TABLE SALES_DATA_FINAL
ADD COLUMN ORDER_DATE_UPDATED INT AFTER ORDER_DATE;

UPDATE SALES_DATA_FINAL 
SET ORDER_DATE_UPDATED = STR_TO_DATE(ORDER_DATE, "%m/%d/%Y");

ALTER TABLE SALES_DATA_FINAL
ADD COLUMN YEAR_SHIP_DATE_UPDATED INT AFTER SHIP_DATE_UPDATED;

UPDATE SALES_DATA_FINAL
SET YEAR_SHIP_DATE_UPDATED = YEAR(SHIP_DATE_UPDATED);


ALTER TABLE SALES_DATA_FINAL
ADD COLUMN MONTH_SHIP_DATE_UPDATED INT AFTER YEAR_SHIP_DATE_UPDATED;

UPDATE SALES_DATA_FINAL
SET MONTH_SHIP_DATE_UPDATED = MONTH(SHIP_DATE_UPDATED);


ALTER TABLE SALES_DATA_FINAL
ADD COLUMN DAY_SHIP_DATE_UPDATED INT AFTER MONTH_SHIP_DATE_UPDATED;

UPDATE SALES_DATA_FINAL
SET DAY_SHIP_DATE_UPDATED = DAY(SHIP_DATE_UPDATED);

DELIMITER $$
CREATE FUNCTION SALES_MARKER_FEB(SALES INT)
RETURNS VARCHAR(30)
DETERMINISTIC
BEGIN
	DECLARE SALES_FLAG VARCHAR(30);
    IF SALES < 100 THEN
		SET SALES_FLAG = "SUPER AFFORDABLE";
	ELSEIF SALES > 100 AND SALES < 300 THEN
		SET SALES_FLAG = "AFFORDABLE";
	ELSEIF SALES > 300 AND SALES < 600 THEN
		SET SALES_FLAG = "EXPENSIVE";
	ELSE
		SET SALES_FLAG = "SUPER-EXPENSIVE";
	END IF;
    RETURN SALES_FLAG;
END $$

UPDATE SALES_DATA_FINAL
SET DISCOUNT = IF(DISCOUNT > 0,"YES","NO");

SELECT ORDER_ID, CUSTOMER_NAME, STATE, COUNTRY, CATEGORY, PRODUCT_NAME, SALES, SALES_MARKER_FEB(SALES) FROM SALES_DATA_FINAL;

-- ---------------------------------(CASE STATEMENTS)-----------------------------------------------

SELECT *,
CASE
	WHEN COURSE_NAME = "FSDA" THEN "FULL STACK DATA ANALYTICS"
    WHEN COURSE_NAME = "FSDS" THEN "FULL STACK DATA SCIENCE"
    WHEN COURSE_NAME = "MERN" THEN "MONGO EXPRESS REACT NATIVE"
    END AS BATCH_SEGREGATION
FROM OPERATON.FEB_14;

SELECT *,
CASE
	WHEN PRODUCT_NAME IN ('CONSUMER_LOAN', 'STUDENT_LOAN', 'PAYDAY_LOAN') THEN "CSP LOAN"
    ELSE "FINANCIAL SERVICES"
    END AS LOAN_TYPES
FROM OPERATION_LOAN_DATABASE.LOAN_TYPE_AVAILABILITY;

SELECT DISTINCT(EXTRACT(YEAR FROM(TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')))) FROM "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."SS1_CONSUMER_COMPLAINTS";

SELECT DISTINCT(EXTRACT(MONTH FROM(TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')))) FROM "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."SS1_CONSUMER_COMPLAINTS";

SELECT DISTINCT(EXTRACT(DAY FROM(TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')))) FROM "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."SS1_CONSUMER_COMPLAINTS";

SELECT *,
CASE
	WHEN (TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')) >= '2013-01-01' AND (TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')) <= '2013-12-31' THEN "PPR12"
    WHEN (TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')) >= '2014-01-01' AND (TO_DATE(DATE_REECEIVED, 'DD-MM-YYYY')) <= '2014-12-31' THEN "PR21"
    WHEN (TO_DATE(DATE_RECEIVED, 'DD-MM-YYYY')) >= '2015-01-01' AND (TO_DATE(DATE_REECEIVED, 'DD-MM-YYYY')) <= '2015-12-31' THEN "R12"
    ELSE 'INVALID DATE'
    END AS TXN_PERIOD
FROM "SS_SQL_DEMO_DATABASE_NEW"."PUBLIC"."SS1_CONSUMER_COMPLAINTS";

-- SQL DATE FUNCTION

-- GET CURRENT DATE
SELECT CURRENT_DATE;

-- GET CURRENT TIME
SELECT CURRENT_TIMESTAMP;

-- GET CURRENT DATE
SELECT CURRENT_DATE;

-- CONVERT TIMEZONE
SELECT CONVERT_TIMEZONE ('UTC',CURRENT_TIMESTAMP) AS CURRENT_TIMEZONE

-- ----------------------------------------------------------------------------------------

-- PROJECT 1
CREATE DATABASE TRANSACTION_DATABASE_SUMMARY;		

USE TRANSACTION_DATABASE_SUMMARY;

-- SHOPPING TRANSACTIONS
CREATE TABLE SHOPPING_HISTORY (
PRODUCT VARCHAR(50) NOT NULL,
QUANTITY INTEGER NOT NULL,
UNIT_PRICE INTEGER NOT NULL
);

INSERT INTO SHOPPING_HISTORY VALUES ('MILK', 3, 10);
INSERT INTO SHOPPING_HISTORY VALUES ('MILK', 3, 10);
INSERT INTO SHOPPING_HISTORY VALUES ('MILK',3,10);
INSERT INTO SHOPPING_HISTORY VALUES ('MILK',3,10);
INSERT INTO SHOPPING_HISTORY VALUES ('BREAD',5,7);
INSERT INTO SHOPPING_HISTORY VALUES ('JAM',2,20);
INSERT INTO SHOPPING_HISTORY VALUES ('BUTTER',4,12);
INSERT INTO SHOPPING_HISTORY VALUES ('APPLE',10,24);
INSERT INTO SHOPPING_HISTORY VALUES ('MILK',6,8);
INSERT INTO SHOPPING_HISTORY VALUES ('VEGETABLES',2,18);
INSERT INTO SHOPPING_HISTORY VALUES ('BUTTER',1,13);
INSERT INTO SHOPPING_HISTORY VALUES ('APPLE',10,14);
INSERT INTO SHOPPING_HISTORY VALUES ('BANANA',12,15);
INSERT INTO SHOPPING_HISTORY VALUES ('MILK',10,17);
INSERT INTO SHOPPING_HISTORY VALUES ('BANANA',7,13);

SELECT * FROM SHOPPING_HISTORY;

-- CALCULATE TOTAL AMOUNT SPENT ON EACH PRODUCT
SELECT PRODUCT, SUM(QUANTITY*UNIT_PRICE) AS 'TOTAL_PRICE' FROM SHOPPING_HISTORY GROUP BY PRODUCT ORDER BY TOTAL_PRICE DESC;

-- TELECOMMUNICATIONS COMPANY
CREATE TABLE PHONES ( 
`NAME` VARCHAR(20) NOT NULL UNIQUE,
PHONE_NUMBER INT NOT NULL UNIQUE
);

CREATE TABLE CALLS (
ID INT NOT NULL,
CALLER INT NOT NULL,
CALLEE  INT NOT NULL,
DURATION INT NOT NULL,
UNIQUE(ID)
);

INSERT INTO PHONES VALUES ('Jack',1234);
INSERT INTO PHONES VALUES ('Lena',3333);
INSERT INTO PHONES VALUES ('Mark',9999);
INSERT INTO PHONES VALUES ('Anna',7582);
INSERT INTO PHONES VALUES ('John',6356);
INSERT INTO PHONES VALUES ('Addison',4315);
INSERT INTO PHONES VALUES ('Kate',8003);
INSERT INTO PHONES VALUES ('Ginny',9831);

SELECT * FROM PHONES;

INSERT INTO CALLS VALUES (25,1234,7582,8);
INSERT INTO CALLS VALUES (7,9999,7582,1);
INSERT INTO CALLS VALUES (18,9999,3333,4);
INSERT INTO CALLS VALUES (2,7582,3333,3);
INSERT INTO CALLS VALUES (3,3333,1234,1);
INSERT INTO CALLS VALUES (21,3333,1234,1);
INSERT INTO CALLS VALUES (65,8003,9831,7);
INSERT INTO CALLS VALUES (100,9831,8003,3);
INSERT INTO CALLS VALUES (145,4315,9831,18);

SELECT * FROM CALLS;

WITH CALL_DURATION AS(
SELECT CALLER AS PHONE_NUMBER, SUM(DURATION) AS DURATION FROM CALLS GROUP BY CALLER
UNION ALL
SELECT CALLEE AS PHONE_NUMBER, SUM(DURATION) AS DURATION FROM CALLS GROUP BY CALLEE)
SELECT `NAME` FROM PHONES P
INNER JOIN
CALL_DURATION CD
ON (P.PHONE_NUMBER = CD.PHONE_NUMBER)
GROUP BY `NAME`
HAVING SUM(DURATION) >= 10
ORDER BY `NAME`
ASC;

-- BANK ACCOUNT TRANSACTION

CREATE TABLE TRANSACTIONS (
AMOUNT INTEGER NOT NULL,
TRANSACTION_DATE DATE NOT NULL
);

INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(1000, '2020-01-06');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(-10, '2020-01-14');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(-75, '2020-01-20');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(-5, '2020-01-25');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(-4, '2020-01-29');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(2000, '2020-03-10');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(-75, '2020-03-12');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(-20, '2020-03-15');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(40, '2020-03-15');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(-50, '2020-03-17');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(200, '2020-10-10');
INSERT INTO TRANSACTIONS (AMOUNT, TRANSACTION_DATE) VALUES(-200, '2020-10-10');

SELECT * FROM TRANSACTIONS;

SELECT (SUM(AMOUNT) - (12 - COUNT)*5) AS BALANCE FROM TRANSACTIONS
CROSS JOIN (
SELECT COUNT(*) AS COUNT FROM (
SELECT SUM(AMOUNT), EXTRACT(MONTH FROM TRANSACTION_DATE) AS MONTH_NO, COUNT(*)
FROM TRANSACTIONS
WHERE AMOUNT < 0
HAVING COUNT(*) >= 3 AND SUM(AMOUNT) <= -100
ORDER BY AMOUNT ASC) AS TEST) AS TEST;

-- ***********************************************************************************************
CREATE DATABASE IF NOT EXISTS SQL_QUESTION_SETS;
USE SQL_QUESTION_SETS;

-- DATASET - 1
CREATE TABLE IF NOT EXISTS CITY (
ID INT,
`NAME` VARCHAR(17),
COUNTRYCODE VARCHAR(3),
DISTRICT VARCHAR(30),
POPULATION INT);

INSERT IGNORE INTO CITY VALUES (1661, "ROTTERDAM", "NLD", "ZUID-HOLLAND", 593321),
(3878, "SCOTSDALLE","USA","ARIZONA",202705),
(3965,"CORONA","USA","CALIFORNIA",124966),
(3973,"CONCORD","USA","CALIFORNIA",1212780),
(3977,"CAEDAR RAPIDS","USA","LOWA",120758),
(5054,"FAIRFIELD","USA","CALIFORNIA",92256),
(4058,"BOULDER","USA","COLORADO",91238),
(4061,"FALLRIVER","USA","MassachusettS",90555);
INSERT INTO CITY VALUES (7634,"OSAKA","JPN","TOSHIBA",232346)

SELECT * FROM CITY;

-- 1) Query all columns for all American cities in the CITY table with populations larger than 100000.
SELECT * FROM CITY WHERE COUNTRYCODE = "USA" AND POPULATION > 100000;

-- 2) Query the NAME field for all American cities in the CITY table with populations larger than 120000.
SELECT `NAME` FROM CITY WHERE COUNTRYCODE = "USA" AND POPULATION > 120000;

-- 3) Query all columns (attributes) for every row in the CITY table.
SELECT ID, NAME, COUNTRYCODE, DISTRICT, POPULATION FROM CITY;

-- 4) Query all columns for a city in CITY with the ID 1661.
SELECT * FROM CITY WHERE ID = 1661;

-- 5) Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN
SELECT * FROM CITY WHERE COUNTRYCODE = "JPN";

-- 6) Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN
SELECT `NAME` FROM CITY WHERE COUNTRYCODE = "JPN";

-- DATASET 2
CREATE TABLE IF NOT EXISTS STATION (
ID INT,
CITY VARCHAR(21),
STATE VARCHAR(2),
LAT_N INT,
LONG_W INT
);

INSERT IGNORE INTO STATION VALUES (794, "KISSEE MILLS", "MO", 139, 73),
(824, "LOMA MAR", "CA", 48, 130),
(603, "SANDY HOOK", "CT", 72, 148),
(478, "TIPTON", "IN",33,97),
(619,"ARLINGTON","CO",75,92),
(711, "TURNER","AR",50,101),
(839,"SLIDELL","LA",85,151),
(411,"NIGREET","LA",98,105),
(588,"GLENCOE","KY",46,136),
(665,"CHELSEA","IA",98,59);
INSERT IGNORE INTO STATION VALUES (794, "KISSEE MILLS", "MO", 139, 73);
SELECT * FROM STATION;

--  7) Query a list of CITY and STATE from the STATION table.
SELECT CITY, STATE FROM STATION;

--  8) Query a list of CITY names from STATION for cities that have an even ID number. 
-- Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT(CITY) FROM STATION WHERE ID % 2 = 0;

-- 9) Find the difference between the total number of CITY entries in the table and the number of
-- distinct CITY entries in the table.
SELECT (COUNT(CITY) - COUNT_DISTINCT_CITY) AS NETT_CITY_COUNT FROM STATION
CROSS JOIN (
SELECT COUNT(DISTINCT_CITY) AS COUNT_DISTINCT_CITY FROM (
SELECT DISTINCT(CITY) AS DISTINCT_CITY FROM STATION)   AS TEST) AS TEST;

-- 10) Query the two cities in STATION with the shortest and longest CITY names, as well as their
-- respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
-- largest city, choose the one that comes first when ordered alphabetically.
SELECT * FROM STATION;

WITH CTE AS (
SELECT CITY, LENGTH(CITY) AS CITY_LENGTH,
ROW_NUMBER() OVER(ORDER BY LENGTH(CITY) ASC, CITY ASC) AS MIN_LENGTH, 
ROW_NUMBER() OVER(ORDER BY LENGTH(CITY) DESC, CITY DESC) AS MAX_LENGTH
FROM STATION
)
SELECT CITY, CITY_LENGTH FROM CTE WHERE MIN_LENGTH = 1
UNION ALL
SELECT CITY, CITY_LENGTH FROM CTE WHERE MAX_LENGTH = 1;

-- 11) Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result
-- cannot contain duplicates.
SELECT DISTINCT(CITY) AS CITY FROM STATION WHERE SUBSTR(CITY,1,1) IN ('A','E','I','O','U');

-- 12) Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot
-- contain duplicates.
SELECT DISTINCT(CITY) AS CITY FROM STATION WHERE SUBSTR(CITY,-1,1) IN ('A','E','I','O','U');

-- 13)  Query the list of CITY names from STATION that do not start with vowels. Your result cannot
-- contain duplicates.
SELECT DISTINCT(CITY) AS CITY FROM STATION WHERE SUBSTR(CITY,1,1) NOT IN ('A','E','I','O','U');

-- 14) Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) AS CITY FROM STATION WHERE SUBSTR(CITY,-1,1) NOT IN ('A','E','I','O','U');

-- 15) Query the list of CITY names from STATION that either do not start with vowels or do not end
-- with vowels. Your result cannot contain duplicates.
SELECT DISTINCT(CITY) AS CITY FROM STATION WHERE LEFT(CITY,1) NOT REGEXP 'A|E|I|O|U' OR
RIGHT(CITY,1) NOT REGEXP 'A|E|I|O|U';

SELECT DISTINCT(CITY) AS CITY FROM STATION WHERE CITY NOT REGEXP '^[AEIOU]' OR CITY NOT REGEXP '[AEIOU]$';

-- 16. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. 
-- Your result cannot contain duplicates
SELECT DISTINCT(CITY) AS CITY FROM STATION WHERE CITY NOT REGEXP '^[AEIOU]' AND CITY NOT REGEXP '[AEIOU]$';

-- DATASET 3
CREATE TABLE IF NOT EXISTS PRODUCT (
PRODUCT_ID INT,
PRODUCT_NAME VARCHAR(30),
UNIT_PRICE INT,
PRIMARY KEY(PRODUCT_ID)
);

CREATE TABLE IF NOT EXISTS SALES (
SALES_ID INT,
PRODUCT_ID INT,
BUYER_ID INT,
SALES_DATE DATE,
QUANTITY INT,
PRICE INT,
FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCT(PRODUCT_ID)
);

INSERT IGNORE INTO PRODUCT VALUES (1,"S8",1000),
(2,"G4",800),
(3,"IPHONE",1400);

INSERT IGNORE INTO SALES VALUES (1,1,1,"2019-01-21",2,2000),
(1,2,2,"2019-02-17",1,800),
(2,2,3,"2019-06-02",1,800),
(3,3,4,"2019-05-13",2,2800);

SELECT * FROM SALES;
SELECT * FROM PRODUCT;

-- 17) Write a SQL query that reports the products that were only sold in the first quarter of 2019. That is,
-- between 2019-01-01 and 2019-03-31 inclusive.
SELECT P.PRODUCT_ID AS `PRODUCT ID`, P.PRODUCT_NAME AS `PRODUCT NAME` FROM PRODUCT P LEFT OUTER JOIN SALES S
ON (P.PRODUCT_ID = S.PRODUCT_ID)
GROUP BY P.PRODUCT_ID
HAVING SUM(S.SALES_ID BETWEEN '2019-01-01' AND '2019-03-31') = COUNT(S.SALES_ID)

-- DATASET 4
CREATE TABLE IF NOT EXISTS VIEWS (
ARTICLE_ID INT,
AUTHOR_ID INT,
VIEWER_ID INT,
VIEW_DATE DATE
);

INSERT IGNORE INTO VIEWS VALUES (1,3,5,'2019-08-01'),
(1,3,6,'2019-08-02'),
(2,7,7,'2019-08-01'),
(2,7,6,'2019-08-02'),
(4,7,1,'2019-07-22'),
(3,4,4,'2019-07-21'),
(3,4,4,'2019-07-21');

SELECT * FROM VIEWS;

-- 18) Write an SQL query to find all the authors that viewed at least one of their own articles
-- Return the result table sorted by id in ascending order.
SELECT AUTHOR_ID AS `AUTHOR ID` FROM VIEWS WHERE (AUTHOR_ID = VIEWER_ID) >= 1 AND VIEW_DATE GROUP BY AUTHOR_ID
ORDER BY AUTHOR_ID ASC;

--  DATASET 5
CREATE TABLE IF NOT EXISTS DELIVERY (
DELIVERY_ID INT,
CUSTOMER_ID INT,
ORDER_DATE DATE,
CUSTOMER_PREF_DELIVERY_DATE DATE,
PRIMARY KEY(DELIVERY_ID)
);

INSERT IGNORE INTO DELIVERY VALUES (1,1,"2019-08-01","2019-08-02"),
(2,5,"2019-08-02","2019-08-02"),
(3,1,"2019-08-11","2019-08-11"),
(4,3,"2019-08-24","2019-08-26"),
(5,4,"2019-08-21","2019-08-22"),
(6,2,"2019-08-11","2019-08-13");

SELECT * FROM DELIVERY;

-- 19) Write an SQL query to find the percentage of immediate orders in the table, rounded to 2 decimal places

SELECT ROUND(100*D2.IMMEDIATE_ORDER / COUNT(DELIVERY_ID),2) FROM DELIVERY D1,(
SELECT COUNT(ORDER_DATE) AS IMMEDIATE_ORDER FROM DELIVERY WHERE (ORDER_DATE = CUSTOMER_PREF_DELIVERY_DATE)) AS D2;

-- DATASET 6
CREATE TABLE IF NOT EXISTS ADS (
AD_ID INT,
USER_ID INT,
`ACTION` VARCHAR(20),
PRIMARY KEY (AD_ID, USER_ID)
);

INSERT IGNORE INTO ADS VALUES (1,1,"CLICKED"),
(2,2,"CLICKED"),
(3,3,"VIEWED"),
(5,5,"IGNORED"),
(1,7,"IGNORED"),
(2,7,"VIEWED"),
(3,5,"CLICKED"),
(1,4,"VIEWED"),
(2,11,"VIEWED"),
(1,2,"CLICKED");

SELECT * FROM ADS;

-- 20) Write an SQL query to find the ctr of each Ad. Round ctr to two decimal points.
-- Return the result table ordered by ctr in descending order and by ad_id in ascending order in case of a tie.

SELECT AD_ID, 
IFNULL(ROUND(SUM(ACTION = "CLICKED")/SUM(ACTION != "IGNORED")*100, 2), 0) AS CTR FROM ADS
GROUP BY AD_ID ORDER BY CTR DESC, AD_ID;

-- DATASET 7
CREATE TABLE IF NOT EXISTS EMPLOYEE (
EMPLOYEE_ID INT,
TEAM_ID INT,
PRIMARY KEY(EMPLOYEE_ID)
);

INSERT IGNORE INTO EMPLOYEE VALUES (1,8),
(2,8),
(3,8),
(4,7),
(5,9),
(6,9);

SELECT * FROM EMPLOYEE;

-- 21) Write an SQL query to find the team size of each of the employees.
SELECT EMPLOYEE_ID, COUNT(TEAM_ID) OVER (PARTITION BY TEAM_ID) AS TEAM_SIZE FROM EMPLOYEE ORDER BY EMPLOYEE_ID;

-- DATASET 8
CREATE TABLE IF NOT EXISTS COUNTRIES (
COUNTRY_ID INT,
COUNTRY_NAME VARCHAR(30),
PRIMARY KEY(COUNTRY_ID)
);

CREATE TABLE IF NOT EXISTS WEATHER (
COUNTRY_ID INT,
WEATHER_STATE INT,
`DAY` DATE,
PRIMARY KEY(COUNTRY_ID, `DAY`)
);

INSERT IGNORE INTO COUNTRIES VALUES (2, "USA"),
(3,"AUSTRALIA"),
(7,"PERU"),
(5,"CHINA"),
(8,"MOROCCO"),
(9,"SPAIN");	

INSERT IGNORE INTO WEATHER VALUES (2,15,"2019-11-01"),
(2,12,"2019-10-28"),
(2,12,"2019-10-27"),
(3,-2,"2019-11-10"),
(3,0,"2019-11-11"),
(3,3,"2019-11-12"),
(5,16,"2019-11-07"),
(5,18,"2019-11-09"),
(5,21,"2019-11-23"),
(7,25,"2019-11-28"),
(7,22,"2019-12-01"),
(7,20,"2019-12-02"),
(8,25,"2019-11-05"),
(8,27,"2019-11-15"),
(8,31,"2019-11-25"),
(9,7,"2019-10-23"),
(9,3,"2019-12-23");

SELECT * FROM COUNTRIES;
SELECT * FROM WEATHER;

-- 22) Write an SQL query to find the type of weather in each country for November 2019.
-- The type of weather is:
-- ● Cold if the average weather_state is less than or equal 15,
-- ● Hot if the average weather_state is greater than or equal to 25, and
-- ● Warm otherwise.
-- Return result table in any order.

-- SOLUTION 1
SELECT C.COUNTRY_NAME, 
CASE
	WHEN W.WEATHER_STATE <=15 THEN "COLD"
    WHEN W.WEATHER_STATE >= 25 THEN "HOT"
    ELSE "WARM"
    END AS WEATHER_TYPE
FROM WEATHER W
INNER JOIN
COUNTRIES C
ON (C.COUNTRY_ID = W.COUNTRY_ID)
WHERE LEFT(W.`DAY`, 7) = "2019-11"
GROUP BY COUNTRY_NAME;

-- TO AUTO-POPULATE TABLE USING CSVKIT PYTHON
csvsql --dialect mysql --snifflimit 10000 sales_data_final.csv > sales_output.sql

  
