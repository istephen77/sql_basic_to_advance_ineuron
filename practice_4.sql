create database trigger_practice_new
use trigger_practice_new

create table test_trigger101 (
course_id int, 
course_desc varchar(50),
course_mentor varchar(60),
course_price int,
course_discount int,
create_date date)

create table test_trigger102 (
course_id int, 
course_desc varchar(50),
course_mentor varchar(60),
course_price int,
course_discount int,
create_date date, 
user_info varchar(50))


create table test_trigger103_new (
course_id int, 
course_desc varchar(50),
course_mentor varchar(60),
course_price int,
course_discount int,
create_date date, 
user_info varchar(50))

create table course_update (
course_mentor_update varchar(50),
course_price_update int,
course_discount_update int)

create table ref_course (
record_insert_date date,
record_insert_user varchar(50))

CREATE TABLE TEST1 (
C1 VARCHAR(50),
C2 DATE,
C3 INT

CREATE TABLE TEST2 (
C1 VARCHAR(50),
C2 DATE,
C3 INT)

CREATE TABLE TEST3 (
C1 VARCHAR(50),
C2 DATE,
C3 INT)


CREATE TABLE TEST11 (
C1 VARCHAR(50),
C2 DATE,
C3 INT)

CREATE TABLE TEST12 (
C1 VARCHAR(50),
C2 DATE,
C3 INT)

CREATE TABLE TEST13 (
C1 VARCHAR(50),
C2 DATE,
C3 INT)

insert into test3 value ("Aya", sysdate(), 324652);
insert into test11 value ("Kendall", sysdate(), 324652);
insert into test11 value ("Steffi", sysdate(), 324652);
insert into test11 value ("Aya", sysdate(), 324652);
insert into test11 value ("Stephin", sysdate(), 324652);
insert into test3 value ("Steffi", sysdate(), 324652);
insert into test11 value ("Es Rosario", sysdate(), 324652);

#BEFORE INSERT - TYPE 1
DELIMITER $$
CREATE TRIGGER BEFORE_INSERT_TRIGGER901
BEFORE INSERT
ON TEST_TRIGGER101 FOR EACH ROW
BEGIN
	SET NEW.CREATE_DATE = SYSDATE();
END;

DELIMITER $$
CREATE TRIGGER BEFORE_INSERT_TRIGGER902
BEFORE INSERT
ON TEST_TRIGGER102 FOR EACH ROW
BEGIN
	DECLARE USER_VAL VARCHAR(30);
	SET NEW.CREATE_DATE = SYSDATE();
    SELECT USER() INTO USER_VAL;
    SET NEW.USER_INFO = USER_VAL;
END;

DELIMITER $$
CREATE TRIGGER BEFORE_INSERT_TRIGGER903
BEFORE INSERT
ON TEST_TRIGGER103_NEW FOR EACH ROW
BEGIN
	DECLARE USER_VAL VARCHAR(30);
	SET NEW.CREATE_DATE = SYSDATE();
    SELECT USER() INTO USER_VAL;
    SET NEW.USER_INFO = USER_VAL;
    INSERT INTO REF_COURSE VALUES (SYSDATE(), USER_VAL);
END;

DELIMITER $$
CREATE TRIGGER TO_UPDATE_OTHERS
BEFORE INSERT
ON TEST1 FOR EACH ROW
BEGIN
	INSERT INTO TEST2 VALUES ("SAMMY", sysdate(), 22323);
    INSERT INTO TEST2 VALUES ("SAMSON", sysdate(), 22323);
END;

#AFTER INSERT - TYPE 2
DELIMITER $$
CREATE TRIGGER AFTER_INSERT_TRIGGER
AFTER INSERT
ON TEST1 FOR EACH ROW
BEGIN
	UPDATE TEST2 SET C1="ES ROSARIO" WHERE C1 = "SAMSON";
    DELETE FROM TEST3 WHERE C1 = "Aya";
END;

#AFTER DELETE - TYPE 3
delimiter $$
create trigger after_delete_trigger
after delete
on test1 for each row
begin
	update test2 set c1 = "xyz" where c1 = "abc";
    insert into test3 value ("Aya", sysdate(), 324652);
	insert into test3 value ("Aya Merimi", sysdate(), 324652);
end; $$

#BEFORE DELETE - TYPE 4
delimiter $$
create trigger before_delete_trigger
before delete
on test2 for each row
begin
	update test1 set c1 = "Kylie" where c1 = "Kendall";
    insert into test3 value ("Stephin S", sysdate(), 324652);
end; $$

delimiter $$
create trigger before_delete_trigger_obs11
before delete
on test11 for each row
begin
	insert into test12 value (old.c1, old.c2, old.c3);
end; $$

delimiter $$
create trigger before_delete_trigger_obs12
after delete
on test11 for each row
begin
	insert into test12 value (old.c1, old.c2, old.c3);
end; $$


#AFTER UPDATE - TYPE 5
delimiter $$
create trigger after_update11
after update
on test102 for each row
begin
    insert into test103 value (old.c1, old.c2, old.c3);
end; $$
update test102 set c1 = 'Aya' where c1 ='Es Rosario';

#BEFORE UPDATE - TYPE 6
delimiter $$
create trigger before_update_trigger1
before update
on test102 for each row
begin
	insert into test103 values (new.c1, new.c2, new.c3);
end; $$

update test102 set c1 = "Katie" where c1 = "Elena";

delete from test11 where c1 = "Es Rosario";

delete from test2 where c1="SAMMY";

SELECT * FROM TEST_TRIGGER101
SELECT * FROM TEST_TRIGGER102
SELECT * FROM TEST_TRIGGER103_NEW
SELECT * FROM TEST1
SELECT * FROM TEST2
SELECT * FROM TEST3	
SELECT * FROM TEST11
SELECT * FROM TEST12
SELECT * FROM TEST13	

insert into test_trigger101 (course_id, course_desc, course_mentor, course_price, course_discount )values (101,"FSDA", "Stephin S", 3500, 10)
insert into test_trigger102 (course_id, course_desc, course_mentor, course_price, course_discount )values (102,"FSDS", "Aya Merimi", 4500, 05)

insert into test_trigger102 (course_id, course_desc, course_mentor, course_price, course_discount )values (101,"FSDA", "Stephin S", 3500, 10)
insert into test_trigger103_new (course_id, course_desc, course_mentor, course_price, course_discount )values (102,"FSDS", "Aya Merimi", 4500, 05)
insert into test_trigger103_new (course_id, course_desc, course_mentor, course_price, course_discount )values (103,"FSDS", "Steffi", 4500, 05)

________________________________________________(PIVOTING)__________________________________________________________

#PIVOTING - CONVERTING COLUMNS TO ROWS AND ROWS TO COLUMNS IS CALLED PIVOTING
create database pivote
use pivote

create table order_table1 (
orderid int ,
employeeid int ,
vendorid int );

insert into order_table1 values (1, 258, 1580),
(2, 254, 1496),
(3, 257, 1494),
(4, 261, 1650),
(5, 251, 1654),
(6, 253, 1664);

select * from order_table1 ;

select orderid,
if(employeeid = 254,1,NULL) as emp254 ,
if(employeeid = 257,1,NULL) as emp257 ,
if(employeeid = 261,1,NULL) as emp261 ,
if(employeeid = 251,1,NULL) as emp251 ,
if(employeeid = 253,1,NULL) as emp253 from 
order_table1 ;
