show databases;

create database if not exists CRM;
use CRM;

create table if not exists Client
(
Client_ID int primary key not null auto_increment,
First_Name varchar(50) not null,
Last_Name varchar(50) not null,
Company varchar(50) not null,
Location varchar(50) not null,
Email varchar(50) not null,
Mob varchar(50) not null
);

desc client;

create table if not exists Ticket(
Ticket_id int primary key auto_increment,
Client_id int,
date date,
Message text,
Foreign key fk_ticket (Client_id)
references client(Client_id)
on update cascade
on delete no action

);


desc Ticket;

delimiter //
create procedure insert_client(First_Name varchar(50),Last_Name varchar(50),Company varchar(50),Location varchar(50),Email varchar(50),Mob varchar(50)) 
begin
	insert into Client (First_Name,Last_Name,Company,Location,Email,Mob) values (First_Name,Last_Name,Company,Location,Email,Mob);
    commit;
end //
delimiter ;

call insert_client('Rahul','Wasnik','Credie','Mumbai','r1@gmail','9920140848');
call insert_client('Rahul','Bhilave','Google','Mumbai','r2@gmail','9920140348');

delimiter //
create procedure insert_ticket(Client_Id int,date date,Message text) 
begin
	insert into Ticket (Client_Id,date,Message) values (Client_Id,date,Message);
    commit;
end //
delimiter ;

call insert_ticket(1,'2021-07-01','Hello World');
select * from ticket;
