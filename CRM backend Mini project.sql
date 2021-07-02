create database if not exists CRM;
use CRM;
-- drop database crm;
create table if not exists Client
(
Client_id int primary key auto_increment,
First_Name varchar(50) not null,
Last_Name varchar(50) not null,
Company varchar(50) not null,
Location varchar(50) not null,
Email varchar(50) not null,
Mob varchar(50) not null
);

create table if not exists Ticket
(
Ticket_id int primary key auto_increment,
Client_id int,
Date date,
Message text,
Foreign key fk_ticket (Client_id)
references client(Client_id)
on update cascade
on delete no action
);


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



create table if not exists Management(

Management_id int primary key auto_increment,
Employee_id int not null,
First_Name varchar(50),
Last_Name varchar(50),
Email varchar(50),
Position varchar(50) default 'Manager',
foreign key fk_manager(Employee_id)
references employee(Employee_id)
on update cascade
on delete no action

);

-- desc Management;

create table if not exists Administrator(
Employee_id int not null auto_increment,
Management_id int not null,
First_Name varchar(50),
Last_Name varchar(50),
Designation varchar(20),

foreign key (Employee_id)
references Employee(Employee_id)
on update cascade
on delete no action,

foreign key (Management_id)
references Management(Management_id)
on update cascade
on delete no action


);

 -- desc Administrator;


delimiter //
create procedure insert_Client(First_Name varchar(50),Last_Name varchar(50),Company varchar(50),Location varchar(50),Email varchar(50),Mob varchar(50)) 
begin
	insert into Client (First_Name,Last_Name,Company,Location,Email,Mob) values (First_Name,Last_Name,Company,Location,Email,Mob);
    commit;
end //
delimiter ;

delimiter //
create procedure insert_Ticket(Client_Id int,Date date,Message text) 
begin
	insert into Ticket (Client_Id,Date,Message) values (Client_Id,Date,Message);
    commit;
end //
delimiter ;

delimiter //
create procedure 	insert_Employee(Ticket_Id int,First_Name varchar(50),Last_Name varchar(50),
					Email varchar(50),Mob varchar(50),Designation varchar(50))
begin
	insert into employee(Ticket_Id,First_Name,Last_Name,Email,Mob,Designation) values
						(Ticket_Id,First_Name,Last_Name,Email,Mob,Designation);
                        commit;
end //
delimiter ;

delimiter //
create procedure insert_Management(Employee_id int,First_Name varchar(50),Last_Name varchar(50),Email varchar(50))
begin
		insert into Management(Employee_id,First_Name,Last_Name,Email) values 
							  (Employee_id,First_Name,Last_Name,Email);
						commit;
end //
delimiter ;

delimiter //
create procedure	 insert_Administrator(Employee_id int,Management_id int,First_Name varchar(50),
					 Last_Name varchar(50),Designation varchar(20))
begin
	insert into Administrator(Employee_id,Management_id,First_Name,Last_Name,Designation) values 
							 (Employee_id,Management_id,First_Name,Last_Name,Designation);
                             commit;
end //
delimiter ;

call insert_Client('Mike','Smith','ABC Widgets','Managua','msmith@gmail.com','456-876-9999');
call insert_Client('Fernando','Fernandez','Stones TM.','Guatemala','pavilma@gmail.com','502-4635-7865');
call insert_Client('Roger','Simpson','Contreras Co.','Bermudas','clarkt@gmail.com','345-546-8765');
call insert_Client('Moe','Sierra','Sierra Estate','San Juan del Sur','szyslakmoe@gmail.com','568-657-8888');
call insert_Client('Susan','Stark','Capital Cities','Panama','susan@gmail.com','563-665-4455');
call insert_Client('Celine','Lannister','Interactive Games','Bermudas','cersei@gmail.com','543-453-6755');
call insert_Client('Alice','Petterson','First Company','Costa Rica','harry@hotmail.com','657-565-6767');



call insert_Ticket(1,'2020-07-01','Some employees leave their computers on all day, and when they
 get an unexplained freeze-up, they may submit  an IT help desk ticket rather than doing a warm reboot or restarting. 
 Actual part failures are relatively rare, but when they happen, it’s up to the service desk to send a 
 technician to make the hardware fix. Everyone is better off if the employee has tried some simple troubleshooting
 methods before requesting a hardware repair.');
 
 call insert_Ticket(2,'2020-09-18','Bring Your Own Device (BYOD) environments exist in a number of industries.
 The amount of BYOD help the service desk should provide is an issue of debate, and depends on the security and mobility
 needs for a particular business. When your IT service desk uses leading IT service management software like Samanage,
 you have options for self-service, remote desktop access, knowledge base, and mobile apps that make the service desk
 technician’s job far more convenient. Empowering service desk techs to work efficiently and empowering employees to solve 
 some of their own problems are keys to better first touch resolution rates and better time-to-resolution stats,
 especially if your service desk supports BYOD employees.');
 
 call insert_Ticket(3,'2020-12-01','The quality of the software is what you are working so hard for at the end of the day. 
 Flawed and buggy software can significantly affect your business. First, you might have a delay in launch because developers
 will take some extra time to fix the issues. Second, if the issues are discovered after launch, it would mean a huge dissatisfaction
 of users and might subsequently  result in a huge blow to your reputation and might not last long in the marketplace.');
 
 call insert_Ticket(4,'2021-02-23','Project managers will need to work closely with business owners, executives and other stakeholders 
 to flush out all factors that may impact the successfulness of software related projects.There have been many software companies that
 have developed and implemented terrific software only to find the return on their investment was simply not there due to high 
 competition.');
 
 call insert_Ticket(5,'2021-02-27','older legacy systems and large ERP systems are being replaced with Saas offerings, enabling small,
 mid-siz and large businesses to access the same or better features and capabilities without outlaying large amounts of valuable capital.
 Companies are subscribing to this model because they are able to redirect larger amounts of capital towards other projects that may 
 be more value added to the overall business strategy. They are able to instead allocate operating funds towards outsourced monthly
 SaaS offerings that provide what they need and are more scalable and flexible.');
 
 call insert_Ticket(6,'2021-06-15','Software vendors can no longer develop standalone solutions. There is an increasing need for 
 third-party integration, making it more complex for project managers as they are under pressure 
 to increase their knowledge and experience with other software that may interface with the one they are implementing.
 To some degree, it can be as if they are implementing multiple systems within one project. For example, if a project manager is
 implementing a financial management system, including G/L, A/P and A/R and financial reporting modules, these may interface with 
 applications from external payment vendors, financial institutions, contract management, CRM or other vendor software. 
 In this case, the project manager may be required to work with third-party vendors and have sufficient knowledge of these other 
 systems to ensure data is accessed and passed correctly between these systems.');
 
 call insert_Employee(1,'Alicia','Mazzini','apu678@yahoo.com','467-678-4444','Software Engineer');
 call insert_Employee(2,'Pedro','Heliot','granger@gmail.com','789-889-7755','Sr. Software Engineer');
 call insert_Employee(3,'Waylon','Smithers','waylon@gmail.com','987-777-8899','Project Lead');
 call insert_Employee(4,'Tawheed','Kader','TK@outlook.com','987-467-4442','Sr. Software Engineer');
 call insert_Employee(5,'Carmen','Hanson','carmen.hanson@gmail.com','575-337-3862','Software Developer');
 call insert_Employee(6,'Paul','Bruce','paul@murphy.com','789-777-7878','Software Engineer');
 

 
call insert_Management(1,'Porter','Harris','porter@barbad.com');
call insert_Management(2,'Azus','Klien','azus@equlibrium.com');
call insert_Management(3,'Azus','Klien','azus@equlibrium.com');
call insert_Management(4,'Porter','Harris','porter@barbad.com');
call insert_Management(5,'Porter','Harris','porter@barbad.com');
call insert_Management(6,'Porter','Harris','porter@barbad.com');
 
 call insert_Administrator(1,1,'Sohan','More','ADMIN');
 call insert_Administrator(2,1,'Shweta','Bhere','ADMIN');
 call insert_Administrator(3,1,'Mohini','More','ADMIN');
 call insert_Administrator(4,2,'Vineeta','Singh','ADMIN');
 call insert_Administrator(5,2,'Davinder','Singh','ADMIN');
 call insert_Administrator(6,2,'Kiran','Waghmare','ADMIN');
 
 -- create view display as select * from ticket;
 -- desc display;

select * from client;
select * from ticket;
select * from employee;
select * from management;
select * from administrator;
