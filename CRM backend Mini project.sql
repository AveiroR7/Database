
show databases;
---------------------------------------------------- Creating Database -------------------------------------------------------------------------------------------------------
create database if not exists CRM;
use CRM;

--------------------------------------------------- Creating Tables inside the Database ---------------------------------------------------------------------------------------

create table if not exists Client(
Client_ID int primary key not null auto_increment,
First_Name varchar(10) not null,
Last_Name varchar(10) not null,
Company varchar(10) not null,
Location varchar(10) not null,
Email varchar(20) not null,
Mob varchar(10) not null
);



