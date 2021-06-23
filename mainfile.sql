create database edac;
show databases;
use edac;

create table SEMP (
EMPNO CHAR(4), 
EMPNAME CHAR(20), 
BASIC FLOAT(9,2), 
DEPTNO CHAR(2), 
DEPTHEAD CHAR(4)
);

insert into SEMP (EMPNO,EMPNAME,BASIC,DEPTNO) values ( (0001, 'SUNIL', 6000, 10), (0002, 'HIREN', 8000, 20) );

insert into SEMP values ( 
0003,'ALI',4000,10,0001
);

insert into SEMP (EMPNO,EMPNAME,BASIC,DEPTHEAD) values( 0004,'GEORGE',6000,0002 );
 
select * from SEMP;


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
use edac;

create table SDEPT (
DEPTNO CHAR(2),
DEPTNAME CHAR(15)
);

insert into SDEPT values (
(10, 'Development'), 
(20, 'Training')
);

select * from SDEPT;

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



