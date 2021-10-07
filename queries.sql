// INTERVIEW QUESTIONS 

// 2nd highest salary

select * from customers where points < (select max(points) from customers) order by points desc;

select * from customers order by points  desc limit 1,4;

select max(points) from customers where points not in (select max(points) from customers);



// JOINS

SELF JOIN---
select a.FIRST_NAME, b.EMPLOYEE_ID
from employees a, employees b
where a.EMPLOYEE_ID < b.EMPLOYEE_ID;


