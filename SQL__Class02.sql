-- SQL : Structured Query Language
-- Each database has same objects such as 
-- Tables: to store data,
--  Views:virtual table, we can combine data from multiple tables and put them in a view, this is good for reports
-- Stored Procedures: small programs we built in our database
-- RELATIONAL DATABASES:Multiple tables are related or linked to each other using internally linked system
-- *** parent table and child table,1-many relationship
-- FRONT END:GUI→Graphical User InterfaceGUI→ everything users can see and interact with,user inputs
-- BACKEND:is where all the data is stored
-- PRIMARY KEY:Unique identifieer,it's an attribute that identifies all values in a given row, can't be null
-- FOREIGN KEY:Is existence of PK in another table
-- COLUMNS-->fields/attributes
-- ROWS--> records
-- Shift Command Enter --->for executing code
-- DISTINCT-->Eliminates all duplicate records in the resultUsed right after the Select Statement 
-- WHERE-->Conditional statment for restrict or Filter Data.We have to use comparison operators with 
-- Where Statement in order to limit the rows returned in the results.  






-- how to choose the database?
use syntaxhrm_mysql;

-- select all the employees
select * from syntaxhrm_mysql.hs_hr_employees;

-- i want to select all firstname and lastname with alphabetical order
select emp_firstname, emp_lastname
from hs_hr_employees
order by emp_firstname desc;

-- if we want to no duplicate
select distinct  emp_firstname, emp_lastname
from hs_hr_employees
order by  emp_firstname desc;


-- if we want to search special name
select distinct  emp_firstname, emp_lastname
from hs_hr_employees
where emp_firstname="yunus"
order by  emp_firstname asc;

-- if we want to null value from birthday
select emp_firstname
from hs_hr_employees
where  emp_birthday is null
order by emp_firstname asc;


-- How to display information about employees who do not have assign job titles?
select emp_lastname, emp_firstname, job_title_code
from hs_hr_employees
where job_title_code is null;


-- How to find employees first name, last name that do not have home phone number and display first names in alphabetical order.
select emp_firstname, emp_lastname
from hs_hr_employees
where emp_hm_telephone is null
order by emp_firstname asc;


-- How to display about all employees whose DOB has been entered. We want to see employees sorted by last name from Z-A?

select *   -- or we do not want to messy we can write  emp_lastname, emp_firstname, emp_birthday
from hs_hr_employees
where emp_birthday is not null
order by emp_lastname desc;


-- displayed all the info whose firstname John and lastname is Doe
select * from hs_hr_employees
where emp_firstname="John" and emp_lastname="Doe";  -- emp_lastname="Yakut";  it is give us a null

-- displayed all the info from employees whose emp_ids are 13288 13292 13290
select * from hs_hr_employees
where employee_id=13288  or  employee_id=13290  or employee_id=13292;  

select * from hs_hr_employees
where employee_id=13288  and  emp_firstname="Mars"  and  emp_lastname="Red";  


-- not logical operator
select * from ohrm_job_title
where not job_title="Bakery Chef";

-- in logical operator
select * from hs_hr_employees
where employee_id in (13288,13290 ,13292);  

-- in logical operator for string
select * from hs_hr_employees
where emp_firstname in ('john', 'yunus');  

-- in logical operator for string with and 
select * from hs_hr_employees
where emp_firstname in ('john', 'yunus') and emp_lastname='yakut' ;

-- in logical operator for string with and for two different word
select * from hs_hr_employees
where emp_firstname in ('john', 'yunus') and emp_lastname in ('yakut', 'doe') ;

-- in logical operator for string with and for two different word connection and 
select * from hs_hr_employees
where( emp_firstname in ('john', 'yunus')) and (emp_lastname in ('yakut', 'doe')) ;


-- between logical operator--> give us a a range between two numbers
-- displayed employees first and last names and employees id who  have employees ids from 11123 until 12388
select emp_firstname,emp_lastname,employee_id
from hs_hr_employees
where employee_id between 11123 and 13288
order by employee_id asc;


-- like logical operator 

-- start with a letter
select *  from hs_hr_employees
where emp_firstname like 'a%';

-- start with a and n letter, this % sign means  continue the pattern 
select *  from hs_hr_employees
where emp_firstname like 'an%';

-- ends  with a letter
select *  from hs_hr_employees
where emp_firstname like '%a';

-- ends  with a letter with out %
select *  from hs_hr_employees
where emp_firstname like 'a';

-- ends  with a letter and statr with j letter
select *  from hs_hr_employees
where emp_firstname like 'j%a';


-- display firstname , lastname and bitrhday for those employees who were born after 2000
select emp_firstname, emp_lastname, emp_birthday
from hs_hr_employees
where emp_birthday >  '2000%';


-- give us a only 2020
select emp_firstname, emp_lastname, emp_birthday
from hs_hr_employees
where emp_birthday like  '2000%';


-- display all the nationalies which start with a
select *
from ohrm_nationality
where name like 'a%';


-- display all employees who were born in february
select emp_firstname , emp_lastname , emp_birthday
from hs_hr_employees
where emp_birthday like '%02-__';  -- we use (-) after 02 because inside the table it defined like that
                             -- like '____-02-__';  --> for year and day
						     -- like '%-02-%';-->it works too
                                   
select emp_firstname , emp_lastname , emp_birthday
from hs_hr_employees
where emp_birthday like '____-02-__'; 
         
select emp_firstname , emp_lastname , emp_birthday
from hs_hr_employees
where emp_birthday like '%-02-%';        
         
         
         
-- homework                                  
-- Display all employees whose last name ends with ‘a’.

select *
from hs_hr_employees
where emp_lastname like '%a';

-- Display all HRMS offices except those located in US, Canada and Brazil.
select *
from ohrm_location
where country_code='US' or country_code='CA' or country_code='BR';


-- Verify all employees who was born from January 1st of 1980 until December 31st of 2000.
select emp_lastname,emp_firstname,emp_birthday,employee_id
from hs_hr_employees
where emp_birthday between '1980-01-Jan'  and  '2000-31-Dec';

-- Display all nationalities that start with ‘C’?

select *
from ohrm_nationality
where ohrm_nationality.name like 'C%';

-- Display all employees’ whose birthday is in August and do not forget to sort employee’s last name from A-Z.

select *
from hs_hr_employees
where emp_birthday like  '____%08-__' -- '%_08_%'
order by emp_lastname asc;

-- Verify all the employees who are managers.
select *
from hs_hr_employees, ohrm_job_title
where job_title like '%manager%';

-- How to display first name, last name, dob of employees who is a Freelancer or developer.                                   
   select emp_firstname, emp_lastname, emp_birthday  ,job_title
   from hs_hr_employees, ohrm_job_title
   where job_title in ('Freelancer','developer');
   
   
   
   
   
   
   
   
   
   
   
  -- Class 2 Notes:                                                                                                                                        -- Order by-->used to sort the data result
-- tools we use in  SQl?--><mysql workbench
-- why devs use backend data ? to link app to database, 
-- do frontent devs use sql? no, maybe sometimes, not neccessarily
-- why we need sql? to check the frontend and backend info connection 
-- in order to see database what we need to click? database schema
-- LOGICAL OPERATORs_-----------------MUST BE USED WITH --> WHERE clause
--  Is Null operator--> we can use with WHERE clause to choose the column with null value
-- AND : All conditions must be true, use different columns good practice
-- OR:any condition should be true, at least 1 
-- Not: excludes specified info, display all the info from job title except Bakery Chef;
-- 1.way select *from ohrm_job_title where job_title !='Bakery Chef';
-- or
-- 2.way select * from ohrm_job_title where not job_title ='Bakery Chef';  
-- NOT Operator – reverse condition
-- % creates a pattern 
-- 'a%' starts with a, 
-- '%a' ends with a, 
-- 'ja%'starts with ja and ends with a
-- IN OperatorPicks a range of multiple options from the same column
-- Allows you to specify multiple values in a Where Clause.It is a shorthand for OR operator








