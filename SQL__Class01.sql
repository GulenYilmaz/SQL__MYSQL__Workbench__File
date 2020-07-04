-- use database name --
use syntaxhrm_mysql; 

-- select column name from table name --
select * from hs_hr_emp_dependents;

select emp_lastname from hs_hr_employees;

select job_title from ohrm_job_title;

select employee_id , emp_firstname , emp_lastname from hs_hr_employees;

select * from hs_hr_emp_language;

select emp_lastname , emp_firstname from hs_hr_employees;

select distinct emp_firstname from hs_hr_employees; 

-- display all the information about employee who has emp id 13473

select emp_firstname, emp_lastname
from hs_hr_employees
where emp_firstname='john';

-- homework 1 How can we first name and last name of employee id 8335 --
select employee_firstname, employee_lastname from hs_hr_employees
where employee_id=8335;

-- homework 2 How can you display unique relationship of employees from emergency contact table --
select  * from hs_hr_emp_emergency_contacts ;

select emp_number from hs_hr_emp_emergency_contacts
where emp_number=11265;  --  husband --

-- homework 3 How to display ex employer and ex job title for employee 9451 --
select  eexp_employer, eexp_jobtit from hs_hr_emp_work_experience
where emp_number=9451;

-- homework 4 How to display all the information of employee who was born after January 1 of 1980 --
select *  from hs_hr_employees
where emp_birthday>1980-01-01;

select *
from hs_hr_employees
where emp_number='null';





