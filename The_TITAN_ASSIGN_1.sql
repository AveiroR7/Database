-- 1.
select Location_id, Street_Address, City, State_Province, COUNTRY_NAME from countries join locations where
countries.country_id = locations.country_id; 

--2. 
select FIRST_NAME, LAST_NAME, DEPARTMENT_ID from  employees;

--3. 
select concat(first_name,' ', last_name) as NAME,Jobs.job_title, employees.department_id from employees,jobs,departments,locations where employees.job_id = jobs.job_id
and employees.department_id = departments.department_id and departments.location_id = locations.location_id and locations.city = 'London';

--4.
select Employee_id,Last_name,departments.Manager_id  from departments join employees where departments.department_id = employees.department_id;

--5.
select FIRST_NAME,LAST_NAME, HIRE_DATE from employees where HIRE_DATE > '1987-09-20'; 

--6. 
select DEPARTMENT_NAME, count(EMPLOYEE_ID) from departments join employees on departments.department_id = employees.DEPARTMENT_ID group by department_name;

--7.


--8.
select departments.DEPARTMENT_ID, DEPARTMENT_NAME, FIRST_NAME  from departments join employees where departments.MANAGER_ID = employees.MANAGER_ID;

--9.
select DEPARTMENT_NAME, FIRST_NAME , CITY from departments join locations on departments.location_id = locations.location_id join employees on employees.manager_id = departments.manager_id ;


--10.
select DISTINCT JOB_TITLE, SALARY from employees join jobs on employees.job_id = jobs.job_id;

--11.
select JOB_TITLE, concat(FIRST_NAME,' ',LAST_NAME) as EMPLOYEE_NAME , SALARY-MIN_SALARY as DIFFERENCE_SALARY from employees join jobs on employees.job_id = jobs.job_id;

--12. 
select * from employees join job_history on employees.employee_id = job_history.employee_id where salary > 10000;

--13.
select DEPARTMENT_NAME,FIRST_NAME, LAST_NAME, HIRE_DATE , SALARY ,datediff(curdate(),hire_date)/365>15 as experience 
from employees,departments where departments.department_id = employees.department_id and employees.department_id=20 and datediff(curdate(),hire_date)/365>15;
