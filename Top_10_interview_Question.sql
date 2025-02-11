
create table emp1 (
emp1_id int,
emp1_name varchar(20),
department_id int,
salary int,
manager_id int,
emp1_age int);

insert into emp1
values (1, 'Ankit', 100,10000, 4, 39)
insert into emp1
values (1, 'Mohit', 100, 15000, 5, 48);
insert into emp1
values (3, 'Vikas', 100, 10000,4,37);
insert into emp1
values (4, 'Rohit', 100, 5000, 2, 16);
insert into emp1
values (5, 'Mudit', 200, 12000, 6,55);
insert into emp1
values (6, 'Agam', 200, 12000,2, 14);
insert into emp1
values (7, 'Sanjay', 200, 9000, 2,13);
insert into emp1
values (8, 'Ashish', 200,5000,2,12);
insert into emp1
values (9, 'Mukesh',300,6000,6,51);
insert into emp1
values (10, 'Rakesh',300,7000,6,50);

select * from emp1
--Top 10  interview questions--

--Q1) How to find duplicates in the given table--
select emp1_id, count(1) from emp1 group by emp1_id having count(1)>1

--Q2) Hpw to delete duplicates
select * from emp1
with cte as
(select * , ROW_NUMBER() over (partition by emp1_id order by emp1_id) as rn from emp1)
delete from cte where rn>1
--Q3) difference between union and union all]

select manager_id from emp
union 
select manager_id from emp1

--Q4) difference between rank, row_number and dense rank 

