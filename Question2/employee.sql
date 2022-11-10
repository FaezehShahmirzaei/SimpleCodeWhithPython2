create database Company
use Company ;

create table Department(
DepartmentID int identity primary key ,
DepartmentName varchar(150)
);


create table Employee (
EmployeeID int identity primary key  ,
EmployeeName varchar(150),
DepartmentID int ,
Sallary int,
FOREIGN KEY (DepartmentID) REFERENCES department(DepartmentID),
);


insert into Department (DepartmentName) values ('Accounting')
select * from Department
insert into Department (DepartmentName) values ('Information_Technology')
select * from Department
insert into Department (DepartmentName) values ('Human_Resource')
select * from Department

insert into Employee (EmployeeName,DepartmentID,Sallary) values ('Faezeh Shahmirzaei', 1,65000)
select * from Employee
insert into Employee (EmployeeName,DepartmentID,Sallary) values ('Faezeh Salehi', 1,87000)
insert into Employee (EmployeeName,DepartmentID,Sallary) values ('hanah Fallah', 1,9800)
insert into Employee (EmployeeName,DepartmentID,Sallary) values ('sdighe shenavaei', 1,45660)
insert into Employee (EmployeeName,DepartmentID,Sallary) values ('ali Hasani', 2,65700)
insert into Employee (EmployeeName,DepartmentID,Sallary) values ('ali Rezaei', 2,46600)
insert into Employee (EmployeeName,DepartmentID,Sallary) values ('Hasan Rafei', 2,67660)
insert into Employee (EmployeeName,DepartmentID,Sallary) values ('Fateme Rafei', 2,670)

select * from Employee
select * from Employee where EmployeeName like 'ali%'
select * from Employee where Sallary<1000

select d.DepartmentName, AVG(sallary) as average from Employee e inner join Department d on d.DepartmentID=e.EmployeeID
group by e.DepartmentID , d.DepartmentName


BACKUP DATABASE Company
TO DISK = 'D:\Corss\jango\Weeks\11-14010707\Faezeh_shahmirzaei_hw10_maktab80';

RESTORE DATABASE Company  
   FROM DISK = 'D:\Corss\jango\Weeks\11-14010707\Faezeh_shahmirzaei_hw10_maktab80Company\Company.bak' ;
