DELIMITER &&
CREATE PROCEDURE avg_sales_country(IN var varchar(30))
BEGIN
	select avg(sales), country from test101.table_test102 where country = var;
END &&

call avg_sales_country()


DELIMITER $$
CREATE FUNCTION final_profits(profit decimal(10,4), sales decimal(10,4), discount decimal(10,4))
RETURNS DECIMAL
DETERMINISTIC
BEGIN
	DECLARE final_profits decimal(10,4);
    SET final_profits = (sales-profit)*discount;
    RETURN final_profits;
END $$

select final_profits()

create database test_function

use test_function

create table test_func_table(
var_a int,
var_b int
)

insert into test_func_table values 
(2,2),
(3,3)
drop table test_func_table
DELIMITER $$
CREATE FUNCTION add_num(var_a int, var_b int)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE var_c int;
    SET var_c = var_a + var_b;
    RETURN var_c;
END $$

select add_num(4,6) as Total;

CREATE FUNCTION add_num(var_a int, var_b int)
RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE var_c int;
    SET var_c = var_a + var_b;
    RETURN var_c;
END $$

CREATE TABLE insert_data(val int)

DELIMITER &&
CREATE PROCEDURE insert_data(val int)	
BEGIN
SET @var = 10;
generate_loop : loop
INSERT INTO insert_data values(@var);
SET @var = @var +1;
IF @var = 100 then
	LEAVE generate_loop;
END IF;
END LOOP generate_loop;
END &&

call insert_data(1)

select * from insert_data

create table insert_data_new(val int)

DELIMITER &&
CREATE PROCEDURE insert_loop(val1 int)
BEGIN
SET @var = 1;
generate_loop : loop
INSERT INTO insert_data_new values(@var);
SET @var = @var + 1;
IF @var = 100 then 
	LEAVE generate_loop;
END IF;
END LOOP generate_loop;
END &&

call insert_loop(2)

select * from insert_data_new

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
COURSE_ID INT,
FOREIGN	 KEY(COURSE_ID) REFERENCES test(COURSE_ID)
)

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

#one to one

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



*************************************************( AUG  14)*****************************************************************


create database win_fun_new
use win_fun_new

create table ineuron_students(
student_id int ,
student_batch varchar(40),
student_name varchar(40),
student_stream varchar(30),
students_marks int ,
student_mail_id varchar(50))

insert into ineuron_students values(100 ,'fsda' , 'saurabh','cs',80,'saurabh@gmail.com'),
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
insert into ineuron_students values(100 ,'fsda' , 'saurabh','cs',80,'saurabh@gmail.com')
insert into ineuron_students values(119 ,'fsbc' , 'sandeep','ECE',65,'sandeep@gmail.com')

#Aggregated windowing functions
select * from ineuron_students

select student_batch, sum(students_marks) from ineuron_students group by student_batch 

select student_batch, min(students_marks) from ineuron_students group by student_batch order by students_marks desc

select student_batch, avg(students_marks) from ineuron_students group by student_batch order by students_marks desc

select count(student_batch) from ineuron_students group by student_batch

select count(distinct student_batch) from ineuron_students 

select count(student_id), student_batch from ineuron_students group by student_batch order by count(student_id)

# Analytical Windowing Functions - works on the subset of a dataset. It tries to create specific groups and performing operatios on that particular group itself.
# 1) Row number 2) Rank 3) Dense Rank


1) Who has received highest marks in fsda batch
select * from ineuron_students where students_marks in (select max(students_marks) from ineuron_students group by student_batch order by students_marks)
select * from ineuron_students where students_marks in (select max(students_marks) from ineuron_students where student_batch = 'fsda')

2) Who has second received highest marks in fsda batch
select * from ineuron_students where student_batch = 'fsda' order by students_marks desc limit 1,1

2) Who has third received highest marks in fsda batch
select * from ineuron_students where student_batch = 'fsda' order by students_marks desc limit 2,3

select * from ineuron_students where students_marks in (
select min(students_marks) from 
(select students_marks from ineuron_students
 where student_batch="fsda"
 order by students_marks desc
 limit 3) as top)
 

*******************************ANALYTICAL WINDOWING FUNCTION************************

 select * from ineuron_students
 
 select student_id, student_batch, student_stream, students_marks, 
 row_number() over(order by students_marks) as 'row_number' from ineuron_students
 
 
#Partition by - It is trying to create chunks of data. Similar to group by operation
select student_id, student_batch, student_stream, students_marks, 
row_number() over(partition by student_batch order by students_marks desc) as 'row_number' from ineuron_students

#From every batch find the name of students with highest marks
select * from (select student_id, student_batch, student_stream, students_marks, 
row_number() over(partition by student_batch order by students_marks desc) as 'row_num' from ineuron_students) 
as test where row_num=1


#RANK 
select * from (select student_id, student_batch, student_stream, students_marks, 
row_number() over(partition by student_batch order by students_marks desc) as 'row_num',
rank() over(partition by student_batch order by students_marks desc) as 'row_rank' from ineuron_students) 
as test where row_rank=1

#DENSE-RANK
select * from (select student_id, student_batch, student_stream, students_marks, 
row_number() over(partition by student_batch order by students_marks desc) as 'row_num',
rank() over(partition by student_batch order by students_marks desc) as 'row_rank',
dense_rank() over(partition by student_batch order by students_marks desc) as 'dense_rank'from ineuron_students) 
as test where `dense_rank`in (1,2,3)


***********************************************(AUGUST 20 - PARTITION)*****************************************************************

create database test_partition
use test_partition

create table ineuron_course(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)

insert into ineuron_course values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,

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

select * from test_partition.ineuron_course

select * from test_partition.ineuron_course where course_lauch_year = '2020'


#Created the partiiton by range: 

drop table test_partition.ineuron_course1

create table ineuron_course1(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by range(course_lauch_year) (
partition p0 values less than (2019),
partition p1 values less than (2020),
partition p2 values less than (2021),
partition p3 values less than (2022),
partition p4 values less than (2023));

insert into ineuron_course1 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

select * from test_partition.ineuron_course where course_lauch_year = '2020'
select * from test_partition.ineuron_course1 where course_lauch_year = '2020'

#To find what kind of partition it has created
select partition_name, table_name, table_rows from information_schema.partitions where table_name = 'ineuron_course1'

#Hash Partioning 

create table ineuron_course2(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by hash(course_lauch_year)
partitions 5;

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course2"

create table ineuron_course3(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by hash(course_lauch_year)
partitions 10;

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course3"

insert into ineuron_course3 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

#KEY PARTITIONING

create table ineuron_course4(
course_name varchar(50) ,
course_id int(10) primary key, 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by key()
partitions 10;

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course4"

insert into ineuron_course4 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

select * from ineuron_course4

select MD5(114)  #Based on the encrypted string obtained as output through the MD5 algorithm, the partition is performed on the allocated key.


#Cannot use primary key with uique key
create table ineuron_course5(
course_name varchar(50) unique key not null,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by key(course_name)
partitions 10;

#LIST PARTITIONING

create table ineuron_course6(
course_name varchar(50) ,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by list(course_lauch_year)(
partition p0 values in (2019,2020),
partition p1 values in (2022,2021)
)
select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course6"

insert into ineuron_course6 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

drop table ineuron_course8
create table ineuron_course8(
course_name varchar(50) ,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by range columns(course_name, course_id, course_lauch_year)(
partition p0 values less than ('aiops',105, 2019),
partition p1 values less than ('fsds', 110, 2021),
partition p2 values less than ('MERN', 114, 2023)
)

select * from ineuron_course8

insert ignore into ineuron_course8 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course8"

select ('aiops',105, 2019) < ('fsds', 110, 2021)

create table ineuron_course9(
course_name varchar(50) ,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by list columns(course_name)(
partition p0 values  in('aiops','data analytics','Dl','RL'),
partition p1 values  in('fsds' ,'big data','blockchain'),
partition p2 values  in('MERN','java','interview prep','fsda')
)

insert ignore into ineuron_course9 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course9"

#SUB-PARTITIONING

create table ineuron_course10(
course_name varchar(50) ,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by list columns(course_name)(
partition p0 values  in('aiops','data analytics','Dl','RL'),
partition p1 values  in('fsds' ,'big data','blockchain'),
partition p2 values  in('MERN','java','interview prep','fsda')
)


create table ineuron_course10(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by range(course_lauch_year) 
subpartition by hash(course_lauch_year)
subpartitions 5(
partition p0 values less than (2019),
partition p1 values less than (2020),
partition p2 values less than (2021),
partition p3 values less than (2022)
)

insert ignore into ineuron_course10 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course10"


**************************************************(JOINS - UNION - INDEXING - CTE)********************************************************************

create database operation
use operation

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

select * from course

select * from student

#Who has enrolled for a particular course

select c.course_id, c.course_name, c.course_desc, s.student_course_id, s.student_name from course c 
inner join student s on (s.student_course_id = c.course_id)

select c.course_id, c.course_name, c.course_desc, s.student_course_id, s.student_name from course c 
left join student s on (s.student_course_id = c.course_id)


#The course in which none of students were enrolled
select c.course_id, c.course_name, c.course_desc, s.student_course_id, s.student_name from course c 
left join student s on (s.student_course_id = c.course_id) where s.student_course_id is null

select * from (select c.course_id, c.course_name, c.course_desc, s.student_course_id, s.student_name from course c 
left join student s on (s.student_course_id = c.course_id)) as test where student_course_id is null

#Students who are not enrolled to any courses	
select c.course_id, c.course_name, c.course_desc, s.student_course_id, s.student_name from course c 
right join student s on (s.student_course_id = c.course_id) where c.course_id is null

select * from (select c.course_id, c.course_name, c.course_desc, s.student_course_id, s.student_name from course c 
right join student s on (s.student_course_id = c.course_id)) as test where course_id is null

#CROSS JOIN - similar to inner join when we perform it by applying a condition (where clause). But the difference is that it tries to find out all the permutation and combination which is available on both left and right table.(does one to many mapping)
select c.course_id, c.course_name, c.course_desc, s.student_course_id, s.student_name from course c 
cross join student s on (s.student_course_id = c.course_id) 

#INDEXING - useful for opetimizing search operation queery.

show index from course1

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

#Multi-column indexing

create table if not exists course2(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
index(course_id, course_name))

show index from course4

create table if not exists course4(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
index(course_id, course_name, course_desc))

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

select * from course4 where course_id = 106

explain analyze select * from course4 where course_id = 106 or course_name = 'fsds'

analyze table course4

create table if not exists course5(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
unique index(course_desc))

show index from course5

create table if not exists course6(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
unique index(course_desc, course_name))

#UNION - to combine the overall result of two tables "IT PERFORMS A VERTICAL JOIN OPERATION"

select * from course
select * from student

select course_id, course_name from course
union
select student_id, student_name from student

select course_id, course_name from course
union all
select student_id, student_name from student

#CTE - Common Table Expression 
with sample_students as (
select * from course where course_id in (101,102,103))
select * from sample_students where course_tag = 'java'

with test_course_data as (
select c.course_id, c.course_name, c.course_desc, s.student_course_id, s.student_name from course c 
cross join student s on (s.student_course_id = c.course_id))
select * from test_course_data where course_id = 102 and course_name = 'testing'

with cte_test1 as 
(select 1 as col1, 2 as col2
union all 
select 3,4)
select col1 from cte_test1

#RECURSIVE CTE 
with recursive cte as (
select 1 as n union all select n + 1 from cte where n < 10)
select * from cte

with recursive cte(n) as (
select 1  union all select n + 1 from cte where n < 10)
select * from cte

with recursive cte_test as (
select 1 as n, 1 as p, -1 as q
union all
select n+1, p+2, q+4 from cte_test where n < 5)
select * from cte_test


*********************************************(PRIMARY AND FOREIGN KEYS PRACTICE*************************************************************

create database test200
use test200

create table table_test200 (
COURSE_ID INT NOT NULL,
COURSE_NAME VARCHAR(60),
COURSE_STATUS VARCHAR(60),
NUMBER_OF_ENROL INT,
PRIMARY KEY(COURSE_ID)
);

INSERT INTO table_test200 VALUES(101, "FSDA", "ACTIVE",100)
INSERT INTO table_test200 VALUES(102, "FSDA", "NOT-ACTIVE",100)

select * from table_test200

create table student_test(
STUDENT_ID INT NOT NULL,
COURSE_NAME VARCHAR(60),
COURSE_MAIL VARCHAR(60),
NUMBER_STATUS VARCHAR(40),
COURSE_ID INT,
FOREIGN KEY (COURSE_ID) REFERENCES table_test200(COURSE_ID))

INSERT INTO student_test VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)
INSERT INTO student_test VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)
INSERT INTO student_test VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)
INSERT INTO student_test VALUES(101,"FSDA","test@gmail.com","ACTIVE",101)


***************************************************(TRIGGERS)*********************************************************************

create database test_trigger
use test_trigger

create table course  (
course_id int,
course_desc varchar(50),
course_mentor varchar(30),
course_price int,
course_discount int,
create_date date)

create table course_update (
course_mentor_update varchar(50),
course_price_update int,
course_discount_update int)

#BEFORE INSERT - TYPE 1
delimiter //
create trigger course_before_insert11
before insert 
on course for each row
begin
    set new.create_date = sysdate();
end; //

select * from course

insert into course (course_id, course_desc, course_mentor, course_price, course_discount) values (101,"FSDA","Stephin S",2500,10)

create table course1 (
course_id int,
course_desc varchar(50),
course_mentor varchar(30),
course_price int,
course_discount int,
create_date date, 
user_info varchar(50))

delimiter //
create trigger course_before_insert1
before insert 
on course1 for each row
begin
	declare user_val varchar(50); 
    set new.create_date = sysdate();
    select user() into user_val;
    set new.user_info = user_val;	
end; //
select * from course1
insert into course1 (course_id, course_desc, course_mentor, course_price, course_discount) values (101,"FSDA","Stephin S",2500,10)
insert into course1 (course_id, course_desc, course_mentor, course_price, course_discount) values (101,"FSDA","Stephin S",2500,10)
insert into course1 (course_id, course_desc, course_mentor, course_price, course_discount) values (101,"FSDA","Stephin S",2500,10)
insert into course1 (course_id, course_desc, course_mentor, course_price, course_discount) values (101,"FSDA","Stephin S",2500,10)
insert into course1 (course_id, course_desc, course_mentor, course_price, course_discount) values (101,"FSDA","Aya M",2500,10)


create table ref_course(
record_insert_date date,
record_inser_user varchar(50)
)

delimiter //
create trigger course_before_insert12
before insert 
on course1 for each row
begin
	declare user_val varchar(50); 
    set new.create_date = sysdate();
    select user() into user_val;
    set new.user_info = user_val;
    insert into ref_course values (sysdate(), user_val);
	
end; //

select * from ref_course

create table test1 (
c1 varchar(50),
c2 date,
c3 int)

insert into test1 values ("Stephin", sysdate(), 23343)
insert into test1 values ("Aya", sysdate(), 23343)

create table test2 (
c1 varchar(50),
c2 date,
c3 int)

create table test3 (
c1 varchar(50),
c2 date,
c3 int)

delimiter //
create trigger to_update_child_triggers
before insert 
on test1 for each row
begin
    insert into test2 values ("xyz", sysdate(), 23345);
	insert into test3 values ("xyz", sysdate(), 23345);
end; //

select * from test1
select * from test2
select * from test3


#AFTER INSERT OPERATION - TYPE 2 
delimiter //
create trigger to_update_child_triggers_table
after insert 
on test1 for each row
begin
	update test2 set c1 = 'abc' where c1='xyz';
    delete from test3 where c1 = 'xyz';
end; //
insert into test1 values ("Stephin S", sysdate(), 23343)
select * from test1
select * from test2
select * from test3

#AFTER DELETE OPERATION - TYPE 3
delimiter //
create trigger to_delete_child_triggers_table
after delete 
on test1 for each row
begin
	insert into test3 values ("After Delete",sysdate(), 21323);
end; //

select * from test1
select * from test3
delete from test1 where c1 = "Stephin"

#BEFORE DELETE - TYPE 4 
delimiter //
create trigger to_before_delete
before delete 
on test1 for each row
begin
	insert into test3 values ("After Delete",sysdate(), 21323);
end; //

delete from test1 where c1 = "Stephin S"
select * from test1
select * from test3

delimiter //
create trigger to_delete_observation_new
before delete on test1 for each row
begin
	insert into test2(c1,c2,c3) values (old.c1, old.c2, old.c3);
end; //

insert into test1 values ("Stephin S", sysdate(), 23343)
insert into test1 values ("Stephin S", sysdate(), 23343)
insert into test1 values ("abc", sysdate(), 23343)
select * from test1
select * from test2
select * from test3

delete from test1 where c1 = 'abc'

create table test11 (
c1 varchar(50),
c2 date,
c3 int)

insert into test11 values ("Stephin", sysdate(), 23343)
insert into test11 values ("Aya", sysdate(), 23343)
insert into test1 values ("abc", sysdate(), 23343)
create table test12 (
c1 varchar(50),
c2 date,
c3 int)

create table test13 (
c1 varchar(50),
c2 date,
c3 int)

delimiter //
create trigger to_delete_observation_new
before delete on test11 for each row
begin
	insert into test12(c1,c2,c3) values (old.c1, old.c2, old.c3);
end; //

select * from test11
select * from test12
select * from test13

delete from test11 where c1 = 'Aya'

delimiter //
create trigger to_delete_observation_new_after
after delete on test11 for each row
begin
	insert into test12(c1,c2,c3) values (old.c1, old.c2, old.c3);
end; //

delete from test11 where c1 = 'Aya'

#AFTER UPDATE - TYPE 5
delimiter //
create trigger to_update_others	
after update on test11 for each row
begin
	insert into test12(c1,c2,c3) values (old.c1, old.c2, old.c3);
end; //
select * from test11
insert into test11 values ("Stephin", sysdate(), 23343)
insert into test11 values ("Aya", sysdate(), 23343)
insert into test1 values ("abc", sysdate(), 23343)
update test11 set c1 = "after update" where c1="Stephin"

select * from test12

#BEFORE UPDATE - TYPE 6 
delimiter //
create trigger to_update_others_before
before update on test11 for each row
begin
	insert into test12(c1,c2,c3) values (old.c1, old.c2, old.c3);
end; //

select * from test11
select * from test12
insert into test11 values ("Stephin", sysdate(), 23343)
update test11 set c1 = "insert new" where c1="Stephin"


select *, 
case
	when course_name = "fsda" then "This is my batch1"
	when course_name = "fsds" then "This is my batch2"
    else "This is not my batch"
end as statememt	
from table_name1

update table_name1 set course_name=case
when course_name = 'RL' then 'reinforcement learning'
when course_name = 'DL' then 'deep learning'
end


************************************************(NORMALISATION AND PIVOT TABLE)************************************************************

