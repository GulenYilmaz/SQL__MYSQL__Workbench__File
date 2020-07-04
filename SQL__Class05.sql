USE syntaxhrm_mysql;


-- display all the info about the employee whose emp id is 14688
select * from hs_hr_employees
where employee_id=14688;

-- inner join --
-- display firstname lastnama and employment status
select  emp_firstname, emp_lastname, name
from hs_hr_employees emp join ohrm_employment_status st 
on emp.emp_status=st.id;


-- display emp number , firstname lastname who works Awesome office
select * from ohrm_location;

select locs.emp_number, emp_firstname, emp_lastname, name
from hs_hr_employees emp join hs_hr_emp_locations locs
on emp.emp_number= locs.emp_number
join ohrm_location loc
on locs.location_id= loc.id
where name='Awesome Office';


-- display info (fist and last name ) about the employees and their job titles 
-- even if there is job titles assigned to them
select emp_firstname, emp_lastname,  job_title
from hs_hr_employees emp join ohrm_job_title jt
on emp.job_title_code=jt.id;


-- left join --
select emp_firstname, emp_lastname,  job_title
from hs_hr_employees emp left join ohrm_job_title jt
on emp.job_title_code=jt.id;

-- right join --
select emp_firstname, emp_lastname,  job_title
from hs_hr_employees emp right join ohrm_job_title jt
on emp.job_title_code=jt.id;

-- left join  with order by--
select emp_firstname, emp_lastname,  job_title
from hs_hr_employees emp left join ohrm_job_title jt
on emp.job_title_code=jt.id
order by emp_lastname;

-- right join  with order by--
select emp_firstname, emp_lastname,  job_title
from hs_hr_employees emp right join ohrm_job_title jt
on emp.job_title_code=jt.id
order by job_title;


-- dispaly emp number, fname , lname and nationality 
-- even though there is no nationality specified for the employee

select emp_number, emp_firstname, emp_lastname, name
from hs_hr_employees emp join ohrm_nationality nat
on emp.nation_code = nat.id
order by emp_lastname;


select emp_number, emp_firstname, emp_lastname, name
from hs_hr_employees emp left join ohrm_nationality nat
on emp.nation_code = nat.id
order by emp_lastname;


select emp_number, emp_firstname, emp_lastname, name
from hs_hr_employees emp right join ohrm_nationality nat
on emp.nation_code = nat.id
order by name;

--  display name as a nationality , change  or assign the colums name with as 
select emp_number, emp_firstname, emp_lastname, name as nationality
from hs_hr_employees emp right join ohrm_nationality nat
on emp.nation_code = nat.id
order by name;


--  display employees who got hired on the same date
select e1.emp_firstname, e1.emp_lastname, e1.joined_date, e2.emp_firstname, e2.emp_lastname
from hs_hr_employees e1 join hs_hr_employees e2
on e1.joined_date= e2.joined_date
where e1.emp_firstname =e2.emp_firstname;


--  display employees who got hired on the not  same date
select e1.emp_firstname, e1.emp_lastname, e1.joined_date, e2.emp_firstname, e2.emp_lastname
from hs_hr_employees e1 join  hs_hr_employees e2
on e1.joined_date= e2.joined_date
where e1.emp_firstname !=e2.emp_firstname;


-- Task-- display employees and their supervisers fname , supervisor number  and supervisor fname
select emp.emp_number, emp.emp_firstname, emp.erep_sup_emp_number, supervisor.emp_firstname, supervisor.emp_firstname 
from hs_hr_employees emp join hs_hr_employees supervisor
on emp.erep_sup_emp_number = supervisor.erep_sup_emp_number;





-- Set Operators--
-- from oracle
-- display the common data from id and department


select department_id from hr.employees;

select department_id from hr.employees
intersect
select department_id from hr.departments;





-- display all the lastnames and firstnames
select first_name from hr.employees
union all
select last_name from hr.employees;    


-- display all the lastnames and firstnames without duplicate
select first_name from hr.employees
union 
select last_name from hr.employees;    


-- display all the lastnames and firstnames without duplicate with as new name , changed the column name
select first_name as names from hr.employees
union 
select last_name from hr.employees;    


-- display all the lastnames and firstnames without duplicate with as new name , 
-- changed the column name with two different statements
select first_name as names , first_name from hr.employees
union 
select last_name, first_name from hr.employees;    




-- display the common data from id and department
select department_id , first_name from hr.employees
union
select department_id , department_name from hr.departments;


-- task--
-- display commmon manager id from employees and departments 
-- then combine with departmnet ids from employees but remove the duplicates

select manager_id from hr.employees

intersect 
select manager_id from hr.departments
union 
select department_id from hr.employees;


-- SET Operators:
-- Work with two independent queries======> return 1 result
-- Union: retrieve the entire information from both queries but no duplicates and it will sort  out the data in ascending order
-- Union All : retrieve the entire information with duplicates and it will not do any sorting. 
 -- Intersect: it will return you the matching data from both queries and it will do the sorting as well .
-- Minus:
-- Minus: it will go and compare the first query you mentioned to the second query and it will return you only unique data from the first query.  It is more like a subtraction .   let says you have first query < ABCDE>  and second query < ADGEF>
-- MINUS will return you a unique set of data from query one < BCD>
-- know the difference between the DDL,TCL, DML.

















