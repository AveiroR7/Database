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
Date date,
Message text,
Foreign key fk_ticket (Client_id)
references client(Client_id)
on update cascade
on delete no action
);

desc Ticket;

create table if not exists employee(
Employee_id int primary key auto_increment,
Ticket_id int,
First_Name varchar(50),
Last_Name varchar(50),
Email varchar(50),
Mob varchar(50),
Designation varchar(50),
foreign key fk_employee (Ticket_id)
references Ticket(Ticket_id)
on update cascade
on delete  no action
);

desc employee;

create table if not exists Management(

id int primary key,
Employee_id int not null,
First_Name varchar(50),
Last_Name varchar(50),
Email varchar(50),
Role varchar(50),
foreign key fk_manager(Employee_id)
references employee(Employee_id)
on update cascade
on delete no action

);

desc Management;








delimiter //
create procedure insert_client(First_Name varchar(50),Last_Name varchar(50),Company varchar(50),Location varchar(50),Email varchar(50),Mob varchar(50)) 
begin
	insert into Client (First_Name,Last_Name,Company,Location,Email,Mob) values (First_Name,Last_Name,Company,Location,Email,Mob);
    commit;
end //
delimiter ;

delimiter //
create procedure insert_ticket(Client_Id int,Date date,Message text) 
begin
	insert into Ticket (Client_Id,Date,Message) values (Client_Id,Date,Message);
    commit;
end //
delimiter ;

call insert_client('Mike','Smith','ABC Widgets','Managua','msmith@gmail.com','456-876-9999');
call insert_client('Fernando','Fernandez','Stones TM.','Guatemala','pavilma@gmail.com','502-4635-7865');
call insert_client('Roger','Simpson','Contreras Co.','Bermudas','clarkt@gmail.com','345-546-8765');
call insert_client('Moe','Sierra','Sierra Estate','San Juan del Sur','szyslakmoe@gmail.com','568-657-8888');
call insert_client('Susan','Stark','Capital Cities','Panama','susan@gmail.com','563-665-4455');
call insert_client('Celine','Lannister','Interactive Games','Bermudas','cersei@gmail.com','543-453-6755');
call insert_client('Alice','Petterson','First Company','Costa Rica','harry@hotmail.com','657-565-6767');



call insert_ticket(1,'2021-07-01','Hello World');
select * from ticket;
