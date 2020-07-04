use syntaxhrm_mysql;

-- display firstname as an uppercase and lastname lower case last name

select upper(emp_firstname), emp_lastname , lower(emp_lastname)
from hs_hr_employees;

-- display the count of all the employees from the db
select count(*) from hs_hr_employess;

-- display the  count of all employees  who  has a marital status
select count(*)
from hs_hr_employees
where emp_marital_status is not null;

-- dispaly how many employees have marital status (single married or devorce)
select count(*), emp_marital_status
from hs_hr_employees
where emp_marital_status is not null;

-- dispaly how many employees have marital status (single married or devorce) with out null value
select count(*), emp_marital_status
from hs_hr_employees
where emp_marital_status is not null
group by emp_marital_status;

-- display  the maximum salary
select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary;

select * from hs_hr_emp_basicsalary;

-- display the youngest employee from our db
select max(emp_birthday),emp_firstname
from hs_hr_employees;  -- >'2020-10-14', 'asdf'


-- display the oldest employee from our db
select min(emp_birthday),emp_firstname
from hs_hr_employees;    -- >'1907-01-07', 'asdf'

-- display the oldest and youngest employee from our db
select min(emp_birthday), max(emp_birthday), emp_firstname
from hs_hr_employees; -- >'1907-01-07', '2020-10-14', 'asdf'

-- display the gender of employees (male or female)
select count(*),  emp_gender
from hs_hr_employees
group by emp_gender;

-- display the gender of employees (male or female) with not null
select count(*),  emp_gender
from hs_hr_employees
where emp_gender is not null
group by emp_gender; -- > 


-- display the count of employees who are develeoper and bakery chefs

select * from ohrm_job_title;

select count(*), job_title_code
from hs_hr_employees
where job_title_code in(10,24)
group by job_title_code; 
--  > count    job title code
--      18         10
--       6          24

-- Task class 03
-- Display last name in uppercase, first name in lowercase.
select  upper(emp_lastname), lower(emp_firstname)
from hs_hr_employees;

-- Verify how many employees don’t have any title assigned?
select count(*) ,job_title_code
from hs_hr_employees
where job_title_code is  null;

-- Verify how many employees are married
select  count(*) ,emp_marital_status
from hs_hr_employees
where emp_marital_status='married';

-- Display youngest employee in the company
select max(emp_birthday)
from hs_hr_employees;

select min(emp_birthday)
from hs_hr_employees;


-- Verify how many developers we have ?
select job_title from ohrm_job_title;
select count(*),job_title_code
from hs_hr_employees 
where job_title_code  in (10, 24)
group by  job_title_code;

-- How many employees first name starts with A? 
select  count(*) ,emp_firstname
from hs_hr_employees
where emp_firstname like 'A%';

-- Verify how many Database Administrator, Application Developer, Production Manager
select * from ohrm_job_code;
select  count(*) ,job_title_code
from hs_hr_employees
where job_title_code in ( 8, 9 , 14)
group by job_title_code;

--  ------------Having clause-------------- --

-- display the employee count per job title 
-- but I want to see where the employee count is more than 3
select count(*), job_title_code
from hs_hr_employees
group by job_title_code
having count(*) >3;

-- display the employee count per job title 
-- but I want to see where the employee count is more than 3 with out null
select count(*), job_title_code
from hs_hr_employees
where job_title_code is not null
group by job_title_code
having max(job_title_code) >3;


-- display younget employyees in each job title
-- but display only who were born after 2000
select max(emp_birthday),  job_title_code
from hs_hr_employees
group by job_title_code
having max(emp_birthday) >  '2000';

-- display younget employyees in each job title
-- but display only who were born after 2000 without null
select max(emp_birthday),  job_title_code
from hs_hr_employees
where job_title_code is not null
group by job_title_code
having max(emp_birthday) >  '2000';

-- good night everyone for practice you can refer this sites as well  https://www.hackerrank.com/domains/sql
-- HackerRankHackerRank
-- Solve Programming Questions | HackerRank
-- A special-purpose language designed for managing data held in a relational database.
-- w3resourcew3resource
-- SQL Exercises: Retrieve data from tables - w3resource
-- SQL Exercises, Practice, Solution: Retrieve data from tables, display all columns, specific columns, display string, numbers, sum numbers and more

