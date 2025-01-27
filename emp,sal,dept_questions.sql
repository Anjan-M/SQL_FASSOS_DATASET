 

 --Ankit Bansal interview Questions
 --SELF-JOIN
 --employee salary morethan manager salary
create table emp
(emp_id int,
emp_name varchar(50),
salary int,
manager_id int,
department varchar(50)
);

insert into emp values(	1	,'Ankit',	10000	,4,  'HR'	);
insert into emp values(	2	,'Mohit',	15000	,5,  'HR'	);
insert into emp values(	3	,'Vikas',	11000	,4,  'IT'	);
insert into emp values(	4	,'Rohit',	13000	,2,  'IT'	);
insert into emp values(	5	,'Mudit',	14000	,6,  'ACCOUNTS');
insert into emp values(	6	,'Agam',	16000	,2,  'ACCOUNTS');
insert into emp values(	7	,'Sanjay',	9000	,2,  'MRKT'	);
insert into emp values(	8	,'Ashish',	5000	,2,  'MRKT'	);

SELECT * FROM emp;

select e.emp_id, e.emp_name, m.emp_name as manager_name, e.salary, m.salary as manager_salary 
from emp e
inner join emp m on e.manager_id = m.emp_id
where e.salary = m.salary

drop table emp;

-- Salaries by Desc order
select * from emp
order by salary asc;

--Find the 2nd 3rd highest salaries from emp table by using CTE and Distinct methods 

--method 1
 WITH RESULT AS
(
    SELECT SALARY,
           DENSE_RANK() OVER (ORDER BY SALARY DESC) AS DENSERANK
    FROM emp
)
SELECT  TOP 3 SALARY
FROM RESULT
WHERE DENSERANK = 2 -- Replace N with 2, 3 ...

--method 2 by using Distinct  keyword


    SELECT TOP 1 Salary 
FROM 
(
    SELECT DISTINCT TOP 2 Salary -- replace N with required number like 2nd highest, 3rd highest etc..
    FROM emp
    ORDER BY Salary DESC
) emp
ORDER BY Salary ASC



	