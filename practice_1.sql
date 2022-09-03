create database if not exists test103
use test103
create table if not exists table_test103(
age int,
job varchar(30),
marital varchar(30),
education varchar(30),
`default` varchar(30),
balance int,
housing varchar(30),
loan varchar(30),
contact varchar(30),
`day` int, 
`month` varchar(30),
duration int, 
campaign int,
pdays int,
previous int,
poutcome varchar(30),
y varchar(30)
)
select * from bank_details
insert into table_test103 values
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

select * from table_test103

create view cu_view as select age, job, education, balance from test103.table_test103
select * from test103.cu_view

SET SESSION sql_mode = ''

LOAD DATA INFILE 
'C:/Users/Public/Documents/iNeuron-Data_Analytics/SQL/Lecture 2/bank/bank.csv'
into table table_test103
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select count(*) from table_test103
1) Try to find out average of balance
select avg(balance) as avg_balance from test103.table_test103 
select avg(balance) from table_test103

2) with this data try to find out sum of balance 
select sum(balance) as sum_bal from test103.table_test103

3) try to find out who is having a min balance 
select min(balance) as min_balalnce from test103.table_test103 
select min(balance) from table_test103 order by balance limit 1
select * from test103.table_test103 where balance in (select min(balance) from test103.table_test103)
select * from test103.table_test103 where balance = (select min(balance) from test103.table_test103)

4) try to find out who is having 3rd min balance
select balance from table_test103 order by balance limit 2,1

5) try to find out who is having a mazxmim balance 
select max(balance) as max_bal from test103.table_test103
select max(balance) from table_test103

6) try to prepare a list of all the person who is having loan
select * from test103.table_test103 as loan_cus where loan='yes'

7) try to find out average balance for all the people whose job role is admin 
select avg(balance) from test103.table_test103 where job='admin.'
select avg(balance) from test103.table_test103  as avg_bal where job='admin.'

8) try to find out a record  without job whose age is below 45 
select * from test103.table_test103 where age<=45 and job='unknown'

9) try to find out a record where education is primary and person is jobless
select * from test103.table_test103 where job='unknown' and education='primary'

10) try to find of a record whose bank account is having a negative balance 
select * from test103.table_test103 where balance in (select balance from test103.table_test103 where balance < 0)
select * from test103.table_test103 where balance < 0

11) try to find our a record who is not having house at all along with there balance 
select balance, housing from test103.table_test103 where housing='no'
select * from test103.table_test103 where housing in (select housing from test103.table_test103 where housing='no')
select * from test103.table_test103 where housing = (select housing from test103.table_test103 where housing='no')


******************************************************	CONSTRAINTS	*****************************************************************

create table test_104(
cus_id int NOT NULL AUTO_INCREMENT,
cus_name varchar(30) NOT NULL,
cus_mailID varchar(30) NOT NULL,
cus_address varchar(30) check(cus_address='Mumbai'),
cus_salary decimal(10,4) check(cus_salary>10000),
primary key(cus_id)
)

insert into test_104(cus_name, cus_mailID, cus_address, cus_salary) values
("Stephin","stephin.sebastian96@gmail.com","Mumbai","30000"),
("Aya","aya.merimi02@gmail.com","Mumbai","40000")

***************************************************(ALTER_UPDATE_DATES)***********************************************************************

create database if not exists test105
use test105
CREATE TABLE table_test104 (
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

SET SESSION sql_mode='';
SET SESSION sql_mode = 'ALLOW_INVALID_DATES';
LOAD DATA INFILE
'C:/Users/Public/Documents/iNeuron-Data_Analytics/SQL/Jul 30/sales_data_final.csv'
INTO TABLE table_test104
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from table_test104
select count(*) from table_test104

select str_to_date(order_date, '%m/%d/%Y') from table_test104

select str_to_date(ship_date, '%d/%m/%Y') as ship_date from test105.table_test104


ALTER TABLE table_test104
ADD COLUMN order_date_new DATE AFTER order_date

UPDATE table_test104
SET order_date_new = str_to_date(order_date, '%m/%d/%Y')

ALTER TABLE table_test104
ADD COLUMN ship_date_new DATE AFTER ship_date

UPDATE table_test104
SET ship_date_new = str_to_date(ship_date, '%m/%d/%Y')

select * from test105.table_test104 where ship_date_new = '2011-01-11'
select * from test105.table_test104 where ship_date_new > '2011-01-11'
select * from test105.table_test104 where ship_date_new < '2011-01-11'
select * from test105.table_test104 where ship_date_new between '2011-01-11' and '2021-010=-11'

select now()
select curdate()
select curtime()

select country, count(country) from test105.table_test104 group by country order by country desc
select country, count(country) from test105.table_test104 group by country order by country 

--- To fetch record having dates before previous week 
select * from table_test104 where ship_date_new < date_sub(now(), interval 1 week)
select date_sub(now(), interval 1 week)

--- To fetch record having dates before previous month
select * from table_test104 where ship_date_new < date_sub(now(), interval 1 month) 
select date_sub(now(), interval 1 month)

--- To fetch record having dates before previous year
select * from table_test104 where ship_date_new < date_sub(now(), interval 1 year)
select date_sub(now(), interval 1 year)

select year(now())
select dayname(now())
select dayname('2022-08-05')

// To override an existing column

UPDATE table_test104
SET year = str_to_date(order_date, '%m/%d/%Y')

ALTER TABLE table_test104
MODIFY COLUMN year datetime;

ALTER TABLE table_test104
ADD COLUMN o_date_month int after order_date_new 

ALTER TABLE table_test104
ADD COLUMN o_date_day int after o_date_month 

ALTER TABLE table_test104
ADD COLUMN o_date_year int after o_date_day 

UPDATE table_test104
SET o_date_month = month(order_date_new)

UPDATE table_test104
SET o_date_day = day(order_date_new)

UPDATE table_test104
SET o_date_year = year(order_date_new)

select * from table_test104

select avg(sales), o_date_year from test105.table_test104 group by o_date_year order by avg(sales) desc
select sum(sales), o_date_year from test105.table_test104 group by o_date_year order by sum(sales) desc
select max(sales), o_date_year from test105.table_test104 group by o_date_year order by max(sales) desc
select min(sales), o_date_year from test105.table_test104 group by o_date_year order by min(sales) desc

select o_date_year, sum(quantity) from test105.table_test104 group by o_date_year order by sum(quantity)

select sales, discount, shipping_cost, (sales*discount+shipping_cost) as CTC from test105.table_test104

ALTER TABLE table_test104
ADD COLUMN flag_discount varchar(30) after discount

UPDATE table_test104 
SET flag_discount = if(discount>0, 'Yes','No')

select * from table_test104

select order_id, flag_discount from table_test104

select flag_discount, count(*) from table_test104 group by flag_discount 


************************************************(SQL FUNCTIONS and PROCEDURES)*******************************************************************************

PROCEDURES

DELIMITER &&
CREATE PROCEDURE str_date()
BEGIN
	select str_to_date(ship_date, '%d/%m/%Y') as ship_date from test105.table_test104;
END &&
call str_date()

select * from test105.table_test104;

DELIMITER &&
CREATE PROCEDURE avg_sales_country(IN var varchar(30))
BEGIN
	select avg(sales), country from test105.table_test104 where country = var;
END &&

call avg_sales_country('India')

create view avg_sales_country_view1 as select avg(sales), country from test105.table_test104 group by country
select * from avg_sales_country_view1

DELIMITER $$
CREATE FUNCTION add_num(var INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE b int;
    SET b = var+10;
    RETURN b;
END $$
select 	add_num(15)

DELIMITER $$
CREATE FUNCTION add_num1(x INT)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE y INT;
    SET y = x+10;
    RETURN y;
END $$

select add_num1(100)

select quantity, add_num1(quantity)  from table_test104

DELIMITER $$
CREATE FUNCTION total_profit(profit int, discount int)
RETURNS int
deterministic
BEGIN
		DECLARE total_profit decimal(10,4);
        SET total_profit = profit - discount;
        RETURN total_profit;
END $$

select total_profit(100,20)

select profit, discount, total_profit(profit, discount) from test105.table_test104

DELIMITER $$
CREATE FUNCTION total_profit_real(profit decimal(10,4), sales decimal(10,4), discount decimal(10,4))
RETURNS DECIMAL
DETERMINISTIC	
BEGIN
	DECLARE total_profit DECIMAL(10,4);
    SET total_profit = profit - (sales*discount);
    RETURN total_profit;
END $$

select profit, discount, sales, total_profit_real(profit, discount, sales) from test105.table_test104

select * from test105.table_test104

DELIMITER && 
CREATE PROCEDURE avg_profit_country()
BEGIN
	select avg(profit), country, count(country) as country from test105.table_test104 group by country order by country;
END &&

call avg_profit_country()


DELIMITER $$
create function mark_sales(sales int)
returns varchar(30)
Deterministic
begin
declare flag_sales varchar(30);
if sales < 100 then 
	set flag_sales = "super affordable product";
elseif sales > 100 and sales < 300 then
	set flag_sales = "affordable product";
elseif sales > 300 and sales < 600 then
	set flag_sales = "moderate product";
else
	set flag_sales = "expensive product";
end if ;	
return flag_sales;
end $$
    
DELIMITER $$
CREATE FUNCTION mark_sales_new(sales int)
returns varchar(30)
deterministic
begin
declare flag_sales varchar(30);
if sales < 100 then
	set flag_sales = "super affordable item";
elseif sales > 100 and sales < 300 then
	set flag_sales = "affordable item";
elseif sales > 300 and sales < 600 then
	set flag_sales = "moderate priced item";
elseif sales > 600 and sales < 900 then
	set flag_sales = "expensive item";
else	
	set flag_sales = "super expensive item";
end if;
return flag_sales;
end $$

select sales, mark_sales_new(sales) from test105.table_test104
    
create table insert_data(val int)

delimiter &&
create procedure insert_loop(val int)
begin
set @var = 10;
generate_data : loop
insert into insert_data values(@var);
set @var = @var + 1;
if @var =100 then
	leave generate_data;
end if;
end loop generate_data;
end &&

call insert_loop(10)

select * from insert_data

create table square_num(val int, val1 int)

DELIMITER &&
create procedure square_num()
begin
set @var=1;
set @var1=1;
generate_data : loop
insert into square_num values(@var, @var1);
set @var = @var+1;
set @var1 = @var*@var;
if @var = 100 and @var1=10000 then
	leave generate_data;
end if;
end loop generate_data;
end &&

call square_num()

select * from square_num

create database key_prim
use key_prim

create table test(
COURSE_ID INT NOT NULL,
COURSE_NAME VARCHAR(60),
COURSE_STATUS VARCHAR(60),
NUMBER_OF_ENROL INT,
PRIMARY KEY(COURSE_ID)
);

INSERT INTO test VALUES(101, "FSDA", "ACTIVE",100)
INSERT INTO test VALUES(102, "FSDA", "NOT-ACTIVE",100)

# ONE TO MANY RELATION

create table student_test(
STUDENT_ID INT NOT NULL,
COURSE_NAME VARCHAR(60),
COURSE_MAIL VARCHAR(60),
NUMBER_STATUS VARCHAR(40),
COURSE_ID INT
FOREIGN	 KEY(COURSE_ID) REFERENCES test(COURSE_ID)
);

INSERT INTO student_test VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)
INSERT INTO student_test VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)
INSERT INTO student_test VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)
INSERT INTO student_test VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)

SELECT * FROM student_test

create table payment(
COURSE_NAME VARCHAR(60),
COURSE_ID INT,
COURSE_LIVE_STATUS VARCHAR(60),
COURSE_LAUNCH_DATE 	VARCHAR(40),
FOREIGN	 KEY(COURSE_ID) REFERENCES test(COURSE_ID)
);

INSERT INTO payment VALUES("FSDA",101,"ACTIVE","Aug 7")
INSERT INTO payment VALUES("FSDA",101,"ACTIVE","Aug 7")

create table class(
COURSE_ID INT,
CLASS_NAME VARCHAR(60),
CLASS_TOPIC VARCHAR(60),
CLASS_DURATION 	INT,
PRIMARY KEY(COURSE_ID),	
FOREIGN	 KEY(COURSE_ID) REFERENCES test(COURSE_ID)
);

INSERT INTO CLASS VALUES (101,"FSDA","SQL","120")
INSERT INTO CLASS VALUES (102,"FSDA","SQL","120")

ALTER TABLE test
DROP PRIMARY KEY

ALTER TABLE class
DROP PRIMARY KEY

ALTER TABLE test 
ADD CONSTRAINT test_prim PRIMARY KEY(COURSE_ID, COURSE_NAME)	
 
 DROP TABLE test
 
create table test_mul_prim_key(
ID INT NOT NULL,
`NAME` VARCHAR(60),
EMAIL_ID VARCHAR(60),
MOBILE_NUMBER INT,
ADDRESS VARCHAR(40)
)

ALTER TABLE test_mul_prim_key ADD PRIMARY KEY(ID)

alter table test_mul_prim_key drop primary key

alter table test_mul_prim_key add constraint test_prim primary key(id , email_id)

create table parent(
id int not null ,
primary key(id))

create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id))

insert into parent values(1)
select * from parent 
insert into child values(1,1)
select * from child
insert into child values(2,2)
delete from parent where id =1
delete from child where id =1

drop table child


create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id) on delete cascade )

insert into child values(1,1),(1,2),(3,2),(2,2)

select * from child

select * from parent

delete from parent where id  = 1

update parent set id = 3 where id = 2

drop table child

create table child (
id int ,
parent_id int ,
foreign key (parent_id) references parent(id) on update cascade )

insert into child values(1,1),(1,2),(3,2),(2,2)

select * from child ; 
select * from parent;

update parent set id = 3 where id = 2