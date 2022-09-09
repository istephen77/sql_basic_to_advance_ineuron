# Triggers - When we perform any insert, update or delete operation (DML Statements) we have to perform some action before insert, before update or before delete.
# May be we try to update any column from other table, in such conditions we creare trigger

create database trigger_practice
use trigger_practice

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

create table test_trigger103 (
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

#BEFORE INSERT - TYPE 1
delimiter $$
create trigger before_insert_trigger
before insert
on test_trigger101 for each row
begin
	set new.create_date = sysdate();
end; $$

delimiter $$
create trigger create_trigger102
before insert
on test_trigger102 for each row
begin
	declare user_val varchar(50);
	set new.create_date = sysdate();
    select user() into user_val;
    set new.user_info = user_val;
end

delimiter $$
create trigger inert_before_trigger_new111
before insert 
on test_trigger103 for each row
begin
	declare user_val varchar(50);
    set new.create_date = sysdate();
	select user() into user_val;
    set new.user_info = user_val;
    insert into ref_course values (sysdate(), user_val);
end $$

insert into test_trigger101 (course_id, course_desc, course_mentor, course_price, course_discount )values (101,"FSDA", "Stephin S", 3500, 10)
insert into test_trigger101 (course_id, course_desc, course_mentor, course_price, course_discount )values (102,"FSDS", "Aya Merimi", 4500, 05)


insert into test_trigger102 (course_id, course_desc, course_mentor, course_price, course_discount )values (101,"FSDA", "Stephin S", 3500, 10)
insert into test_trigger103 (course_id, course_desc, course_mentor, course_price, course_discount )values (102,"FSDS", "Aya Merimi", 4500, 05)
insert into test_trigger103 (course_id, course_desc, course_mentor, course_price, course_discount )values (103,"FSDS", "Steffi", 4500, 05)

#AFTER INSERT - TYPE 2
delimiter $$
create trigger after_insert_trigger
after insert
on test1 for each row
begin
	update test2 set c1 = "abc" where c1 = "xyz";
    delete from test3 where c1="xyz";
end; $$

#AFTER DELETE - TYPE 3
delimiter $$
create trigger after_delete_trigger
after delete
on test1 for each row
begin
	update test2 set c1 = "xyz" where c1 = "abc";
    insert into test3 value ("Stephin", sysdate(), 324652);
end; $$

#BEFORE DELETE - TYPE 4
delimiter $$
create trigger before_delete_trigger
before delete
on test2 for each row
begin
	update test1 set c1 = "Steffi Draganova" where c1 = "Steffi";
    insert into test3 value ("Aya", sysdate(), 324652);
end; $$

delete from test2 where c1 = "Steffi"

select * from test_trigger101
select * from test_trigger102
select * from test_trigger103
select * from ref_course

select * from test1
select * from test2
select * from test3

create table test11(
c1 varchar(20),
c2 date, 
c3 int)

create table test12(
c1 varchar(20),
c2 date, 
c3 int)

create table test13(
c1 varchar(20),
c2 date, 
c3 int)

insert into test11 value ("Aya", sysdate(), 324652);
insert into test12 value ("Stephin", sysdate(), 324652);
insert into test12 value ("Steffi", sysdate(), 324652);

select * from test11
select * from test12
select * from test13

delimiter $$
create trigger before_delete_observation_n
before delete
on test11 for each row
begin
    insert into test12 value (old.c1, old.c2, old.c3);
end; $$
insert into test1 value ("Stephin", sysdate(), 324652);
delete from test11 where c1 = "Aya"

delimiter $$
create trigger after_delete_observation
after delete
on test12 for each row
begin
    insert into test3 value (old.c1, old.c2, old.c3);
end; $$
delete from test12 where c1 = "Aya"
select * from test3

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

update test102 set c1 = "Katie" where c1 = "Elena"
_______________________________________________________________

create table test1(
c1 varchar(20),
c2 date, 
c3 int)

create table test2(
c1 varchar(20),
c2 date, 
c3 int)

create table test3(
c1 varchar(20),
c2 date, 
c3 int)
	
delimiter $$
create trigger test_trigger
before insert 
on test1 for each row
begin
	insert into test2 values("xyz", sysdate(), 12123);
    insert into test3 values("xyz", sysdate(), 12123);
end; $$
insert into test1 values("Stephin S", sysdate(), 12123);
insert into test1 values("Steffi", sysdate(), 12123);
select * from test1
select * from test2
select * from test3


create table test101(
c1 varchar(20),
c2 date, 
c3 int)

create table test102(
c1 varchar(20),
c2 date, 
c3 int)

create table test103(
c1 varchar(20),
c2 date, 
c3 int)

insert into test101 values("Stephin S", sysdate(), 1212);
insert into test101 values("Steffi", sysdate(), 1212);
insert into test101 values("Es Rosario", sysdate(), 1212);
insert into test101 values("Elena", sysdate(), 1212);

insert into test102 values("Stephin S", sysdate(), 1212);
insert into test102 values("Steffi", sysdate(), 1212);
insert into test102 values("Es Rosario", sysdate(), 1212);
insert into test102 values("Elena", sysdate(), 1212);

insert into test103 values("Stephin S", sysdate(), 1212);
insert into test103 values("Steffi", sysdate(), 1212);
insert into test103 values("Es Rosario", sysdate(), 1212);
insert into test103 values("Elena", sysdate(), 1212);

select * from test101
select * from test102
select * from test103

__________________________________CASE STATEMENTS)__________________________________________

use test_partition

select * from test_partition.ineuron_course

select *, 
case
	when course_name="fsda" then "This is your batch"
    when course_name="fsds" then "This is my second batch"
    else "This is not your batch"
end as Batch_Segregation
from ineuron_course

________________________________WINDOW_FUNCTION__________________________________________________

create database window_func

use window_func

create table ineuron_students(
student_id int,
student_batch varchar(50),
student_name varchar(50),
student_stream varchar(50),
student_marks int,
student_mail_id varchar(50)
)

insert into ineuron_students values(100 ,'fsda' , 'Stephin S','cs',80,'stephin@gmail.com'),
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

#Aggregated windowing functions
select * from window_func.ineuron_students
select student_batch, avg(student_marks) from window_func.ineuron_students group by student_batch order by student_marks desc
select student_batch, sum(student_marks) from window_func.ineuron_students group by student_batch order by student_marks desc
select student_batch, min(student_marks) from window_func.ineuron_students group by student_batch order by student_marks desc
select student_batch, max(student_marks) from window_func.ineuron_students group by student_batch order by student_marks desc
select student_batch, count(student_batch) from window_func.ineuron_students group by student_batch
select student_batch, count(distinct(student_batch)) from window_func.ineuron_students group by student_batch order by count(student_id)
select count(student_id), student_batch from window_func.ineuron_students group by student_batch order by count(student_id)

# Analytical Windowing Functions - works on the subset of a dataset. It tries to create specific groups and performing operations on that particular group itself.
# 1) Row number 2) Rank 3) Dense Rank

1) Who has received highest marks in fsda batch
select * from ineuron_students where student_marks in (select max(student_marks) from ineuron_students group by student_batch order by student_marks desc)
select * from ineuron_students where student_marks in (select max(student_marks) from ineuron_students where student_batch="fsda")
select * from ineuron_students where student_marks = (select max(student_marks) from ineuron_students where student_batch="fsda")

2) Who has second received highest marks in fsda batch
select * from ineuron_students where student_marks = (select student_marks from ineuron_students where student_batch='fsda' limit 1,1)
select * from ineuron_students where student_batch = 'fsda' order by student_marks desc limit 1,1

3) Who has third received highest marks in fsda batch
select * from ineuron_students where student_batch = 'fsda' order by student_marks desc limit 2,2

 select * from ineuron_students where student_marks in 
 (select min(student_marks) from (select student_marks from ineuron_students where student_batch = "fsda" 
 order by student_marks desc limit 3) as top 
 
 select * from ineuron_students where student_marks =
 (select min(student_marks) from (select student_marks from ineuron_students where student_batch = "fsda"
 order by student_marks desc limit 3) as top)
 
 ______________________(ANALYTICAL WINDOW FUNCTION)_____________________________________
 
select * from window_func.ineuron_students
 
select student_id, student_batch, student_stream, student_marks, row_number() over(order by student_marks) as 'row_number' from ineuron_students
 
#Partition by - It is trying to create chunks of data. Similar to group by operation
 
select student_id, student_batch, student_stream, student_marks, row_number() over(partition by student_batch order by student_marks) as 'row_number' from ineuron_students
 
#From every batch find the name of students with highest marks
select * from (select student_id, student_batch, student_stream, student_marks,
row_number() over(partition by student_batch order by student_marks desc) as 'row_num' from ineuron_students)
as test where row_num = 1

#RANK
select * from (select student_id, student_batch, student_stream, student_marks,
row_number() over(partition by student_batch order by student_marks) as 'row_num',
rank() over(partition by student_batch order by student_marks) as 'num_rank' from ineuron_students)
as test where num_rank=3

#DENSE - RANK
select * from (select student_id, student_batch, student_stream, student_marks, 
row_number() over(partition by student_batch order by student_marks desc) as 'row_num',
rank() over(partition by student_batch order by student_marks desc) as 'row_rank',
dense_rank() over(partition by student_batch order by student_marks desc) as 'dense_rank' from ineuron_students)
as test where `dense_rank`=2


___________________________________________(PARTITIONS)____________________________________________________


create database test_partition_new
use test_partition_new

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

select * from test_partition_new.ineuron_course

#Created the partititon by range: 

drop table ineuron_course


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

select * from test_partition_new.ineuron_course1
select * from test_partition_new.ineuron_course1 where course_lauch_year="2020"

#To find what kind of partition it has created
select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course1"

#HASH PARTITIONING
create table ineuron_course2(
course_name varchar(50) ,
course_id int(10) , 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by hash (course_lauch_year)
partitions 5;

insert into ineuron_course2 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

select * from ineuron_course2

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course2"

#KEY PARTITIONING

create table ineuron_course3(
course_name varchar(50) ,
course_id int(10) primary key, 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by key()
partitions 10

insert into ineuron_course3 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course3"

select MD5(114)  
#Based on the encrypted string obtained as output through the MD5 algorithm, 
#the partition is performed on the allocated key.

#Cannot use primary key with uique key
create table ineuron_course4(
course_name varchar(50) unique key not null,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by key(course_name)
partitions 10

#LIST PARTITIONING
create table ineuron_course7(
course_name varchar(50) ,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by list(course_lauch_year)(
partition p0 values in (2019, 2020),
partition p1 values in(2021,2022))

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course7"

insert into ineuron_course7 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

#PARTITION BY RANGE COLUMNS
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


#PARITION BY LIST COLUMNS

create table ineuron_course9(
course_name varchar(50) ,
course_id int(10), 
course_title varchar(60),
corse_desc varchar(60),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_lauch_year int)
partition by list columns (course_name)(
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

#SUBPARTITIONING
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

create table ineuron_course11(
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
partition p0 values less than(2019),
partition p1 values less than(2020),
partition p2 values less than(2021),
partition p3 values less than(2022))

insert ignore into ineuron_course11 values('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
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

select partition_name, table_name, table_rows from information_schema.partitions where table_name = "ineuron_course11"

_________________________________________________(JOINS - UNION - INDEXING - CTE)__________________________________________

create database test_joins
use test_joins

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
select c.course_id, c.course_name, c.course_desc, s.student_id, s.student_name, s.student_course_id from course c 
inner join student s on c.course_id = s.student_course_id

select c.course_id, c.course_name, c.course_desc, s.student_id, s.student_name, s.student_course_id from course c 
left join student s on c.course_id = s.student_course_id

#The course in which none of students were enrolled
select c.course_id, c.course_name, c.course_desc, s.student_id, s.student_name, s.student_course_id from course c 
left join student s on c.course_id = s.student_course_id where student_course_id is null

select * from (select c.course_id, c.course_name, c.course_desc, s.student_id, s.student_name, s.student_course_id from course c 
left join student s on c.course_id = s.student_course_id) as test where student_course_id is null

#Students who are not enrolled to any courses
select * from (select c.course_id, c.course_name, c.course_desc, s.student_id, s.student_name, s.student_course_id from course c 
right join student s on c.course_id = s.student_id) as test where course_id is null

#CROSS JOIN - similar to inner join when we perform it by applying a condition (where clause). But the difference is that it tries to find out all the permutation and combination which is available on both left and right table.(does one to many mapping)
select c.course_id, c.course_name, c.course_desc, s.student_course_id, s.student_name from course c 
cross join student s on (s.student_course_id = c.course_id) 

#INDEXING - useful for opetimizing search operation queery.

show index from course
show index from course1
show index from course2
show index from course3

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

select * from course
select * from course1

#MULTI-COLUMN INDEXING
create table if not exists course2(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
index(course_id, course_name))

create table if not exists course3(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
index(course_id, course_name, course_desc))

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
(108 , 'c++' , 'C++ language' , 'language')

select * from course3 where course_id = 106
select * from course where course_id = 106

#UNIQUE INDEX -  TAKE ONLY DISTINCT RECORDS. UNLIKE INDEXES WHICH TAKES DUPLICATE RECORDS
create table if not exists course4(
course_id int,
course_name varchar(50),
course_desc varchar(80),
course_tag varchar(50),
unique index(course_desc))

show index from course4

select * from course

select * from student

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
#UNION WILL REMOVE THE DUPLICATES. UNION ALL WILL INCLUDE THE DUPLICATES
select * from course
select * from student

select course_id, course_name from course
union
select student_id, student_name from student

select course_id, course_name from course
union all
select student_id, student_name from student

#CTE - Common Table Expression 
with sample_student as (
select * from course where course_id in (101,102,103))
select * from sample_student where course_tag = "java"

with record_results as(
select c.course_id, c.course_name, c.course_tag, s.student_id, s.student_name, s.student_course_id from course c
cross join student s on c.course_id = s.student_course_id)
select * from record_results where student_id = 303 and student_course_id = 101

with test_cte as(
select 1 as col1, 2 as col2
union all
select 3,4)
select col1, col2 from test_cte

#RECURSIVE CTE
with recursive test_cte as (
select 1 as n union all select n+1 from test_cte where n<10)
select * from test_cte

with recursive test_cte as (
select 1 as p, 2 as q, 3 as r
union all
select p+1, q+1, r+1 from test_cte where p<=10)
select * from test_cte

_____________________________________________________________________________________________________