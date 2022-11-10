CREATE TABLE self_relationship(emp_id varchar(5) NOT NULL,
emp_name varchar(20) NULL,
dt_of_join date NULL,
emp_supv varchar(5) NULL,
CONSTRAINT emp_id PRIMARY KEY(emp_id) ,
CONSTRAINT emp_supv FOREIGN KEY(emp_supv) 
REFERENCES self_relationship(emp_id));


SELECT a.emp_id AS "Emp_ID",a.emp_name AS "Employee Name",
b.emp_id AS "Supervisor ID",b.emp_name AS "Supervisor Name"
FROM self_relationship a, self_relationship b
WHERE a.emp_supv = b.emp_id;



CREATE TABLE self_relationship2(
id int identity not null,
emp_id varchar(5) NOT NULL,
emp_name varchar(20) NULL,
dt_of_join date NULL,
emp_supv varchar(5) not NULL,

CONSTRAINT emp_id3 PRIMARY KEY(id,emp) ,
CONSTRAINT emp_id2 PRIMARY KEY(emp_id,emp_supv) ,
CONSTRAINT emp_supv2 FOREIGN KEY(emp_supv) 
REFERENCES self_relationship2 (id));