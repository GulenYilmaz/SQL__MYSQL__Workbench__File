use syntaxhrm_mysql;

select * from hs_hr_employees;

-- displaying only first names from the employees table
select emp_firstname from hs_hr_employees;

select emp_firstname, emp_lastname from hs_hr_employees;

SELECT employee_id FROM hs_hr_employees;

select * from hs_hr_emp_dependents;

select job_title from ohrm_job_title;

select employee_id, emp_firstname, emp_lastname from hs_hr_employees;

select *  from ohrm_language;

select distinct emp_firstname from hs_hr_employees;

-- display all the information about employee who has emp id 13473
select * from hs_hr_employees
where employee_id = 14477333;

select emp_firstname, emp_lastname
from hs_hr_employees
where emp_firstname = 'john';










