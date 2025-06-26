# Human Resource management system database

create database hrms;
use hrms;

# Employees Table 
# Department Table 
# Leave Request Table
# Manager Table
# Job details
 
### Task 3 ###

#retrieve whole data from database table --
use hrms;
select * from employees;

select * from department;

select * from leave_request;

select * from manager;

select * from job;

#retrieve partial data from database table --

select emp_id,first_name,salary from employees;

select dept_id,hire_date from employees;

select dept_id,location from department;

select emp_id,status from leave_request;

select manager_name from manager;

select job_title,max_salary from job;

#retrieve data using Where, And, or, Like and Between condition --

select * from department where location="mumbai";

select * from employees where salary>180000;

select first_name from employees where gender="female";

select manager_name,salary from manager where manager_id="M0099";

select emp_id,status,location from leave_request where location="hyderabad" and status="Approve";

select manager_id,location,salary from manager where location="delhi" or salary>200000;

select *  from manager where manager_name like "r%";

select first_name,salary from employees where first_name like "a%" and salary<100000;

select manager_name,salary,location,join_date from manager where join_date < '2010-01-01'; 

select * from department limit 5;

# Retrieve data from table in Ascending and Descending using order by clause

select first_name,last_name,hire_date from employees order by hire_date asc; 

select * from manager ORDER BY salary DESC LIMIT 3;

select * from department order by dept_id desc;

select job_title,max_salary from job order by max_salary desc limit 5;

select * from leave_request where status="Approve" order by req_id ;