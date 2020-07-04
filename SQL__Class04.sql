USE syntaxhrm_mysql;

select * from hs_hr_employees;

-- avarage of salary
select avg(ebsal_basic_salary)
from hs_hr_emp_basicsalary;

-- avarage of salary with payperiod
select avg(ebsal_basic_salary), payperiod_code
from hs_hr_emp_basicsalary;


-- display average salary per opay period
select avg(ebsal_basic_salary), payperiod_code
from hs_hr_emp_basicsalary
group by payperiod_code;


-- display avarage salary per pay period less than 90000
select avg(ebsal_basic_salary), payperiod_code
from hs_hr_emp_basicsalary
group by payperiod_code
having avg(ebsal_basic_salary)<90000;


--  SUB query --
-- inner query and outer query

-- display all info about  employees who are develeoper
select id from ohrm_job_title;

SELECT emp_firstname, emp_lastname, job_title_code 
from hs_hr_employees 
where job_title_code=
(
select id 
from ohrm_job_title 
where job_title='Developer');  -- > returns id from job title table =10


-- display the first name , last name of the employees who are Turkish nationality
select * 
from ohrm_nationality;

select id  from  ohrm_nationality
where name= 'Turkish';

select emp_firstname, emp_lastname
from hs_hr_employees
where nation_code=(
                                    select id 
									from ohrm_nationality
									where name='Turkish');


-- display  the second largest salary from salary table
select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary; -- > 90000

select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary
where ebsal_basic_salary<(
                                               select max(ebsal_basic_salary)
                                               from hs_hr_emp_basicsalary
                                                ); -- >89000
 -- > this one is   first max
-- > this one is second max


-- display  the second largest salary from salary table
select max(ebsal_basic_salary)
from hs_hr_emp_basicsalary
where ebsal_basic_salary<(
                                               select max(ebsal_basic_salary)
                                               from hs_hr_emp_basicsalary
                                               where ebsal_basic_salary < 
                                               (
                                               select max(ebsal_basic_salary)
                                               from hs_hr_emp_basicsalary)
                                               );  -- >88000



-- display all the info about employee who get  the lowest salary
select min(ebsal_basic_salary)
from hs_hr_emp_basicsalary;  -- >80000


select * from hs_hr_emp_basicsalary;
select * from hs_hr_employees;

select emp_number
from hs_hr_emp_basicsalary
where ebsal_basic_salary=(
                                      select min(ebsal_basic_salary)
									  from hs_hr_emp_basicsalary
                                      ); -- >14253
								
                                
select emp_firstname, emp_lastname
from hs_hr_employees
where emp_number=( select emp_number
                                        from hs_hr_emp_basicsalary
                                        where ebsal_basic_salary=(
                                                                                        select min(ebsal_basic_salary)
                                                                                        from hs_hr_emp_basicsalary)
                                                                                                                                            );  -- > Sameer Azimi                              
							

-- inner join --
-- display first , last name and the nationality for each employee
select emp_firstname, emp_lastname, name
from hs_hr_employees inner join ohrm_nationality
on hs_hr_employees.nation_code=ohrm_nationality.id;

-- left  join --
-- display first , last name and the nationality for each employee
select emp_firstname, emp_lastname, name
from hs_hr_employees left join ohrm_nationality
on hs_hr_employees.nation_code=ohrm_nationality.id;
-- it can be null from rigth side because we can join from left side

-- right join --
-- display first , last name and the nationality for each employee
select emp_firstname, emp_lastname, name
from hs_hr_employees right join ohrm_nationality
on hs_hr_employees.nation_code=ohrm_nationality.id;
-- it can be null from lesf side because we can join from right side

-- full join --
-- display first , last name and the nationality for each employee
select emp_firstname, emp_lastname, name
from hs_hr_employees full join ohrm_nationality
on hs_hr_employees.nation_code=ohrm_nationality.id;
-- it can  not be give a any result 


-- display firstname , lastname and job title of the employees
select emp_firstname, emp_lastname , job_title
from hs_hr_employees inner join ohrm_job_title
on hs_hr_employees.job_title_code= ohrm_job_title.id ;

-- we can assign the name our tables
-- same query with alias
select emp_firstname, emp_lastname , job_title
from hs_hr_employees emp  inner join ohrm_job_title title
on emp.job_title_code= title.id ;

-- we can assign the name our colums
select emp_firstname as FirstName, emp_lastname as LastName , job_title as JobTitle
from hs_hr_employees emp  inner join ohrm_job_title title
on hs_hr_employees.job_title_code= ohrm_job_title.id;



-- self join --
select * from hr.employees;

select emp.first_name as employee, man.first_name as manager 
from hr.employees emp join hr.employees man
on emp.employee_id=man.employee_id
order by emp.first_name asc;

-- display first name,first_name and city of the  employees who work in our company
select first_name, last_name , city
from hr.employees emp join hr.departent dep
on emp.department_id=dep.department_id
join hr.locations loc
on dep.location_id=loc.location_id;




-- homework
-- List all employees who are Cloud Architects?
-- How to retrieve information of  the employee who earns the lowest  salary?
-- List all employees who are Self Employed?
-- Display emergency contact name and phone number of Adam Adams
-- How can you display the third highest salary? 


-- Display employees number, first name and lastname and their employment status name. Sort results based on the last name.
-- Display employees number, first name and lastname and job title only for Developers and Application Developers.
-- Display employees number, first name and nationality only for employees whose nationality starts with A.




