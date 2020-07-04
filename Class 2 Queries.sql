use syntaxhrm_mysql; 

select * from syntaxhrm_mysql.hs_hr_employees; 

select emp_firstname, emp_lastname
from hs_hr_employees
order by emp_firstname desc;

-- display first name and lastname in a descending order
select distinct emp_firstname, emp_lastname
from hs_hr_employees
order by emp_firstname desc;

-- display first name and last name with name "Yunus" only in an ascending order
select emp_firstname, emp_lastname
from hs_hr_employees
where emp_firstname = 'yunus'
order by emp_lastname asc;

-- display first name with null birthday and in a descending name order 
select emp_firstname
from hs_hr_employees
where emp_birthday is null 
order by emp_firstname desc;

-- display dirst name, last name and birthday wthout null values
select emp_firstname, emp_lastname, emp_birthday
from hs_hr_employees
where emp_birthday is not null;

-- How to display information about employees who do not have assign job titles?
select emp_firstname, emp_lastname, job_title_code from hs_hr_employees
where job_title_code is null;

-- How to find employees first name, last name that 
-- do not have home phone number and display first names 
-- in alphabetical order.
select emp_firstname, emp_lastname
from hs_hr_employees
where emp_hm_telephone is null
order by emp_firstname asc;

-- How to display about all employees whose DOB has been entered. 
-- We want to see employees sorted by last name from Z-A?
select emp_firstname, emp_lastname, emp_birthday
from hs_hr_employees
where emp_birthday is not null
order by emp_firstname desc;

-- display all the info whose first name is John and lastname is Doe
select * from hs_hr_employees
where emp_firstname = 'John' and emp_lastname = 'Doe';

-- display all the info from employees whose emp_ids are 13288 13290 13292
select * from hs_hr_employees 
where employee_id = 13288 or employee_id = 13290 or employee_id = 13292 or employee_id = 11123;

select * from hs_hr_employees
where employee_id in (13288, 13290, 12, 11123);

select * from hs_hr_employees
where (emp_firstname in ('John', 'Yunus')) and (emp_lastname in ('Yakut', 'Doe'));

-- display all the info from job title except Bakery Chef
select * from ohrm_job_title
where not job_title = 'Bakery Chef'; 

-- display employees first and last names and employee id who have employee ids from 11123 until 13288
select emp_firstname, emp_lastname, employee_id
from hs_hr_employees
where employee_id between 11123 and 13288
order by employee_id asc;

-- display first names which start with an
select emp_firstname from hs_hr_employees
where emp_firstname like 'an%';

-- display first name which start with j and end with a
select emp_firstname from hs_hr_employees
where emp_firstname like 'j%a';

-- display first name last name and birthday fro those employees who were born after 2000
select emp_firstname, emp_lastname, emp_birthday 
from hs_hr_employees
where emp_birthday > '2000';

-- display all the nationalities which start with a
select * from ohrm_nationality
where name like 'a%';

-- display all employees who were born in february 
select emp_firstname, emp_lastname, emp_birthday
from hs_hr_employees
where emp_birthday like '%-02-%';



















