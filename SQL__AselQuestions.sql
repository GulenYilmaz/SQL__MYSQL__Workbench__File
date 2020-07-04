-- Asel s Q


-- @here dear all students. 
-- We suggest to all of you who wants additionally practice SQL please use Oracle Live.
-- Just search for oracle live in google and once you logging to your account it will take to the SqlWorksheet where you can practice writing sql queries.
-- This way you will get experience using different Databases and you will learn that SQL syntax is same across all RDMBS.

-- The only difference you will see here that with table name you will have to specify database name, which is hr


--  Script: homework__asel
--   homework from asel






-- How can you display all the data in Departments table?
select * from hr.departments;

-- How can you display department id from Employees table?
select departmen_id from hr.employees;


-- How can you display all the phone numbers from Employees?
select phone_number from hr.employees;


-- How can you display last name and hire date for all Employees?
select phone_number from hr.employees;
select last_name, hire_date 
from hr.employees;


-- How can you select All the records from Jobs table?
select  * from hr.jobs;


-- I need to see all  first names, last names and salary of employees?
select first_name, last_name,salary from hr.employees;


-- Please display department id and department name
select department_id, department_name from hr.departmets;

-- How can you display job id, max and min salary
select job_id, min_salary, max_salary from hr.jobs;

-- How can we find the salary of employee 120?
select salary from hr.employees;
select salary from hr.employees where salary=12000;


-- How can you display unique job ids in the company from employees table.
select salary, first_name, last_name from hr.employees;
select job_id from hr.employees;
select distinct job_id from hr.employees;

-- How to display first name, job id, salary for all employees who earn less than or equal to 10000 monthly?
select job_id from hr.employees;
select job_id, first_name, last_name from hr.employees;
select first_name, job_id, salary from hr.employees 
where salary<=10000;


-- How to display all the information for  Stock Clerks.
select * from hr.jobs 
where job_title='Stock Clerks';


select * from hr.jobs;
select job_title,job_id, min_salary, max_salary from hr.jobs
where job_title='Stock Clerks';


-- How to display information about employees who report to the manager 114?
select job_title,job_id, min_salary, max_salary from hr.jobs
where job_title='Stock Clerks';





-- How can you display unique manager ids in departments table?
select distinct manager_id from hr.departments;


-- How to display information about employees who report to the manager 114?
select * from hr.employees;
select first_name. last_name from hr.employees 
where manager_id=114;

-- How to display all the information for  IT Programmers showing highest paying employee on top?

select * from hr.employees;


-- How to display all employees who was hired on June 17th 1987

select * from hr.employees;
select first_name , last_name from hr.employees 
where hire_date='June 17th 1987';


select * from hr.jobs;
select first_name , last_name from hr.employees 
where hire_date like '17-JUN-%';


-- How to display first name, Salary, and job id of employees who earn more than or equal to 4000 or working as IT programmers.
select * from hr.employees;
select first_, last_name, salary, job_id from hr.employees 
where salary>=40000;
select * from hr.employees;


select * from hr.employees;
select * from hr.jobs;
select first_name, salary, job_id  from hr.employees,hr.jobs 
where salary >='40000' or job_id='IT_PROG';


-- How can we see first name, Salary, and job id of employees who earn more than 3000 and they work as stock clerks. Also need to see returned data sorted by name.
select * from hr.employees;
select first_name, salary, job_id  from hr.employees  
where salary  >='3000' and  job_id='ST_CLERK';

-- How can we find all employees who do not work in Department 50 and are not stock clerks.
select * from hr.employees;
select first_name from hr.employees where not department_id=50 and not  job_id='ST_CLERK';


-- How can we see all people whose job id belongs to Sales?
select * from hr.employees;
select first_name from hr.employees where job_id='SA_MAN';

-- We need to find out employees who don’t get commission and yet their salary is higher than 4500. I want to see the highest paying employees on top.
select * from hr.employees;
select first_name from hr.employees where not commission_pct='-' and salary>=4500;





-- How can we display all employees who work for Departments 50, 60, 80. 
select * from hr.employees;
select first_name from hr.employees where department_id in(50, 60, 80);


-- Verify everyone who was hired on February of 1997. Please display in ascending order by name.
select * from hr.employees;
select first_name from hr.employees where hire_date like '%-02-1997' 
order by hire_date asc;
select first_name from hr.employees where hire_date like '%-02-%';


-- Please show me all employees whose last name ends with ‘a’.
select last_name from hr.employees where last_name like 'a%';


-- Verify all employees who work for department 100 through 150.
select * from hr.employees where department_id between 100 and 150;


-- Verify all employees who got hired from 1 July 1997 to 1 June 2005.
select * from hr.employees where hire_date between '1 July 1997'  and '1 June 2005';


-- Verify all the employees who are programmers, clerks and hr. 
select * from hr.jobs where job_title in ('programmers', 'clerks', 'hr');

-- How can I display all countries except Germany, Italy and Kuwait.
select country_id  from hr.locations where distinct (country_id ='Germany',country_id ='Italy',country_id ='Kuwait');


-- Display all department names that start with ‘C’ and don’t forget to sort results by department id in descending order.
select department_name from hr.departments where department_name like 'C%' order by department_name desc;

-- Display all employees’ last names in which the third letter of the name is “u”.
select * from hr.employees where last_name like '___u%';


-- How to figure out first name, last name, department id of employees that do not get commission and display last names in alphabetical order.
select first_name , last_name , department_id from hr.employees where commission_pct is null
order by last_name asc;


-- How to provide employees information who don’t have a manager.  
select * from hr.employees where manager_id is null;



