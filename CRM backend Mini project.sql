show databases;
create database if not exists CRM;
use CRM;

create table if not exists Client
(
Client_ID int primary key not null auto_increment,
First_Name varchar(10) not null,
Last_Name varchar(10) not null,
Company varchar(10) not null,
Location varchar(10) not null,
Email varchar(20) not null,
Mob varchar(10) not null
);

desc client;

create table if not exists Ticket(
Ticket_id int primary key auto_increment,
Client_id int not null,
date datetime,
Message text,
Foreign key fk_ticket (Client_id)
references client(Client_id)
on update cascade
on delete no action

);

desc Ticket;
