-- Active: 1691177039719@@127.0.0.1@5432@test3
-- ## Create a TABLE

-- CREATE TABLE student (
--     student_id INT ,
--     first_name VARCHAR(20),
--     last_name VARCHAR(20),
--     cgpa NUMERIC(3,2)
-- )

-- Remane a TABLE

CREATE TABLE users3 (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT DEFAULT 18
    -- PRIMARY KEY(user_id, username)
    -- UNIQUE( username, email)
);

ALter table users3 rename to users4;

-- ## Insert data into a TABLE
INSERT INTO users3 values (1, 'john', 'jsohn@gmail.com');

-- select * from users3

-- 1. insert INTO table_name (column1, column2, column3, ...) values (value1, value2, value3, ...);
-- 2. insert INTO table_name values (value1, value2, value3, ...);

-- RETURNING * column_name

-- insert multiple values
-- insert into table_name values (value1, value2, value3), (value1, value2, value3), (value1, value2, value3);

INsert INTO users3 (user_id, username, email,age) values (2,'alif', 'alif@gmail.com', 35);

INSERT INTO users3 (username, email) values 
('alif1', 'alif1@as.com'),
('alif2', 'alif2@as.com'),
('alif3', 'alif3@as.com');

--Truncate Delete all row in a table WITHOUT the table , DROP delete the table -- interview question
TRUNCATE TABLE users3;

-- Alter table
-- add a column , drop a column, change datatype of a column 
-- rename a column, set default value for a column 
-- add constrains to a column , drop constrain for a column  
-- table rename 
-- alter table table_name (action) - changeable

alter table users3
add column password VARCHAR(255) DEFAULT 'admin123' not null;

alter table users3
add column demo int;

-- delete column 
alter table users3 drop COLUMN age;

-- change datatype of a column
alter table users3 alter COLUMN demo type text;

--set default value for a column
alter table users3 alter COLUMN demo2 set default 'bangladesh';

-- remove default value for a column
alter table users3 alter COLUMN demo2 drop default;

-- rename a column
alter table users3 rename COLUMN demo to demo2;

-- add constrain to a column
alter table users3 
alter column demo2 set not null;

-- drop constrain for a column
alter table users3 
alter column demo2 drop not null;

-- already exist a constraint but want to set agian
alter table users3 ADD CONSTRAINT unique_email UNIQUE (email); 

-- drop constrain
alter table users3 drop CONSTRAINT unique_email;

INSERT into users3 values (8,'alif8','alif8@gmail.com');



SELECT * from users3 ;


-- Department table
-- Each depart can have multiple employee

CREATE TABLE Department(
    deptID SERIAL PRIMARY KEY,
    deptName VARCHAR(50)
);

insert into Department values(1, 'IT');

DELETE FROM Department where deptId = 1;

select * from Department;



-- Employee Table 
-- Each emloyee belongs to a department

create table Employee(
    empID SERIAL PRIMARY KEY,
    empName VARCHAR(50) NOT NULL,
    departmentID INT,
    CONSTRAINT fk_constraint_dept
        FOREIGN KEY (departmentID)
        REFERENCES Department(deptID)
);


insert into Employee values (1,'alif',1);

DELETE from Employee where empID = 1;

select * from Employee