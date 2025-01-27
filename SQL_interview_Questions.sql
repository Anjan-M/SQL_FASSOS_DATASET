
-- Top 30 technogeekscs Interview Question 

CREATE TABLE COMPANY (
EMPLOYEE_ID INT PRIMARY KEY,
EMPLOYEE_NAME VARCHAR(10),
DEPARTMENT_NAME VARCHAR(10),
SALARY INT);

-- insert data into table 
INSERT INTO COMPANY VALUES(1,'RAM','HR',10000);
INSERT INTO COMPANY VALUES(2,'AMRIT','MRKT',20000);
INSERT INTO COMPANY VALUES(3,'RAVI','HR',30000);
INSERT INTO COMPANY VALUES(4,'NITIN','MRKT',40000);
INSERT INTO COMPANY VALUES(5,'VARUN','IT',50000);
INSERT INTO COMPANY VALUES(6,'ANJAN','IT',60000);
INSERT INTO COMPANY VALUES(7,'POOJA','IT',80000);


SELECT * FROM COMPANY;
DROP TABLE COMPANY;

-- Find the AVG Salary from COMPANY

SELECT DEPARTMENT_NAME,AVG(SALARY) AS 
AVERAGE_SALARY FROM COMPANY GROUP BY DEPARTMENT_NAME;




--Find the max salary from COMAPNY
SELECT MAX(Salary) 

FROM COMPANY

WHERE SALARY < (SELECT MAX(Salary) FROM COMPANY);

--Specific department

SELECT EMPLOYEE_ID as ID, EMPLOYEE_NAME as name, DEPARTMENT_NAME AS dept, SALARY AS salary FROM COMPANY WHERE SALARY = 30000;
SELECT * FROM COMPANY ORDER BY SALARY ASC;
SELECT * FROM COMPANY ORDER BY SALARY DESC;

--AVERAGE SALARY

SELECT AVG (SALARY) FROM COMPANY;

--COUNT FUNCTION

SELECT COUNT(*) FROM COMPANY;

--Retrieve unique departments and emp names  from the Employees table

SELECT DISTINCT DEPARTMENT_NAME  FROM  COMPANY;


--Retrieve employees with a salary higher than 5000

SELECT EMPLOYEE_NAME, SALARY FROM COMPANY WHERE SALARY > 5000;


--Retrieve employees whose names start with the letter ‘J’

SELECT * FROM COMPANY WHERE EMPLOYEE_NAME LIKE 'R%';

SELECT * FROM COMPANY WHERE EMPLOYEE_NAME LIKE '____a%';


--Retrieve employees from the HR or Finance departments ( OR--OPERATER IS USING HERE )

SELECT * FROM COMPANY
WHERE DEPARTMENT_NAME IN ('HR', 'IT');


--Retrieve employees with a salary between 50000 and 60000
SELECT * FROM COMPANY WHERE SALARY between 50000 and 60000;

--Retrieve names and salaries of the top 3 employees in the Marketing department

SELECT  TOP 3 * FROM COMPANY WHERE DEPARTMENT_NAME = 'mrkt' ORDER BY Salary ASC;

--Calculate the average salary of employees in the HR department
SELECT AVG(SALARY) FROM COMPANY WHERE DEPARTMENT_NAME = 'HR';

--Count the number of distinct departments in the Employees table
SELECT COUNT(DISTINCT DEPARTMENT_NAME) FROM COMPANY;
SELECT DISTINCT DEPARTMENT_NAME FROM COMPANY;

--Retrieve names of employees along with the length of their names
SELECT EMPLOYEE_NAME, LEN(EMPLOYEE_NAME) AS 'Length of Names' FROM COMPANY;


--Retrieve the first three characters of the names of all employees
   SELECT SUBSTRING(EMPLOYEE_NAME, 1, 4) FROM COMPANY;

--Concatenate the Name and Department columns and rename the result as COMPANY
SELECT CONCAT(EMPLOYEE_NAME,'__' ,SALARY) AS EmployeeInfo FROM COMPANY;

--Retrieve employee(s) with the highest salary from the COMPANY
SELECT * FROM COMPANY WHERE SALARY = (SELECT MAX(SALARY) FROM COMPANY);

select max(salary) from company


--Retrieve names and salaries of employees with a salary higher than the average salary of all employees
SELECT EMPLOYEE_NAME,  FROM COMPANY WHERE SALARY > (SELECT AVG(SALARY) FROM COMPANY);

SELECT AVG(SALARY) AS AVERAGE_SALARY FROM COMPANY;
SELECT SALARY FROM COMPANY

--Retrieve names and salaries of employees with a salary higher than all HR department employees
SELECT EMPLOYEE_NAME, SALARY, DEPARTMENT_NAME FROM COMPANY WHERE SALARY > ALL (SELECT SALARY FROM COMPANY WHERE DEPARTMENT_NAME = 'HR');


--Retrieve names and salaries of employees with a salary equal to at least one HR department employee
SELECT EMPLOYEE_NAME, SALARY, DEPARTMENT_NAME FROM COMPANY WHERE SALARY = ANY (SELECT SALARY FROM COMPANY WHERE DEPARTMENT_NAME = 'HR');


--Retrieve names and salaries of employees within a range of +/- 10000 from the average salary of all employees
SELECT EMPLOYEE_NAME, SALARY, DEPARTMENT_NAME FROM COMPANY 
WHERE SALARY BETWEEN (SELECT AVG(SALARY) FROM COMPANY) - 10000 AND (SELECT AVG(SALARY) FROM COMPANY) + 10000;

--Calculate the average salary in each department
SELECT DEPARTMENT_NAME, AVG(Salary) FROM COMPANY GROUP BY DEPARTMENT_NAME;

--Retrieve departments with more than 2 employees and display the department name along with the count of employees
SELECT DEPARTMENT_NAME, COUNT(*) AS NumEmployees FROM COMPANY GROUP BY DEPARTMENT_NAME HAVING COUNT(*) > 1;

--Insert a new employee record into the Employees table
INSERT INTO COMPANY(EMPLOYEE_ID, EMPLOYEE_NAME, DEPARTMENT_NAME, SALARY)
VALUES (8,'JENNY', 'HR', 48000);

SELECT * FROM COMPANY;
--DROP TABLE COMPANY

--Update salaries of all COMPANY in the Marketing department by adding/substract 5000
UPDATE COMPANY SET SALARY = SALARY - 5000 WHERE DEPARTMENT_NAME = 'MRKT';


