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

show tables;

create table S(
 `S#` varchar(20),
 Sname varchar(20),
 Status varchar(20),
 City varchar(20)
 );
 
 show tables;
 desc S;
 
 insert into S (`S#`,Sname,Status,City) values ('S1','Steven','20','London');
 select * from S;
 
 insert into S (`S#`, Sname,Status,City) values (`S2`,'Eric','25','Athens');
 insert into S (`S#`, Sname,Status,City) values (`S3`,'Ryan','10','Paris');
 insert into S (`S#`, Sname,Status,City) values (`S4`,'Rob','28','Paris');
 insert into S (`S#`, Sname,Status,City) values (`S5`,'Robbin','8','London');
 insert into S (`S#`, Sname,Status,City) values (`S6`,'Gerrad','8','Athens');
 
 show tables;
 select * from S;
 select `S#`,Sname from S;
 select * from S where City = 'London';
 select * from s where City = 'Paris' or City = 'Athens';
 select * from s where Status <= 20;
 select * from s where Status >= 20;
 select * from s where City != 'London';
 
 create table P(
  `P#` Varchar(20),
  Pname varchar(20),
  Color Varchar(10),
  Weight Varchar (20),
  City char(10)
  );
  
  desc P;
  
  create table J (
   `J#` Varchar(20),
   Jname Varchar(15),
   City Varchar(20)
   );
   
   create table SPJ (
    `S#` varchar (20),
    `P#` varchar (20),
    `J#` varchar (20)
    );
    
    select * from s;
    show tables;
    
    insert into p(`p#`,Pname,Color,Weight,City) values ('P1','chasis','black','13','Paris');
    insert into p(`p#`,Pname,Color,Weight,City) values ('P2','Bearing','black','14','London');
    insert into p(`p#`,Pname,Color,Weight,City) values ('P3','Seat cover','white','15','London');
    insert into p(`p#`,Pname,Color,Weight,City) values ('P4','color Spray','silver','10','Athens');
    
    select * from p;
    select * from p where City = 'Athens';
    select Pname,Color from p where City = 'London';
    select * from p where Weight >= 12 and Weight <=14;
    select City from s;
    select Weight from p;
    select Weight*100 from p;
    select weight*100 as "Kilograms" from p;
    select weight/100 as "Milligrams" from p;
 
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

select * from s
order by city desc;

select * from p
order by City asc,Pname asc;

select * from s where Status < 20 or Status > 10;
select * from p where Pname like 'S%';
select * from S where City like 'L%';


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

insert into j(`J#`,Jname,City) values ('J1','Bike Modify','Paris');
insert into j(`J#`,Jname,City) values ('J2','car Modify','London');
insert into j(`J#`,Jname,City) values ('J3','Bikechanging','Athens');
insert into j(`J#`,Jname,City) values ('J4','chainchanging','London');
insert into j(`J#`,Jname,City) values ('J5','colorpainting','Athens');
insert into j(`J#`,Jname,City) values ('J6','tankpaint','Athens');

select Jname from j where Jname like '__n%';
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Assignment 3

select concat(upper(substr(Sname,1,1),lower(substr(Sname,2,length(Sname)))) from s;
select replace(Sname,'la','ro') from s;
