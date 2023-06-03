CREATE TABLE Employees_Des(
	emp_pk int identity(1,1) primary key,
	ID int,
	Name varchar(50),
	Historical_City varchar(50),
	Current_City varchar(50),
	Historical_Email varchar(50),
	Current_Email varchar(50),
	valid_from Datetime,
	valid_to Datetime,
	Current_Flag int
);

CREATE TABLE Employees_Q2(
	ID int ,
	Name varchar(50),
	City varchar(50),
	Email varchar(50),
	Update_Date Datetime
);

insert into Employees_Q2(ID,Name, City, Email, Update_Date) values(1,'Ahmed','Giza','ahmed@mail.com',getDate());
insert into Employees_Q2(ID,Name, City, Email, Update_Date) values(2,'Alaa','Giza','alaa@mail.com',getDate());
insert into Employees_Q2(ID,Name, City, Email, Update_Date) values(3,'Samy','Cairo','samy@mail.com',getDate());

--update
insert into Employees_Q2(ID,Name, City, Email, Update_Date) values(1,'Ahmed','Alex','ahmed@mail.com',getDate());

select * from [dbo].[Employees_Q2]
select * from [dbo].[Employees_Des] 


truncate table  [dbo].[Employees_Q2]
truncate table [dbo].[Employees_Des]
