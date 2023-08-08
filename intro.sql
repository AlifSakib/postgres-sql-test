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

CREATE TABLE IF NOT EXISTS Department(
    deptID SERIAL PRIMARY KEY,
    deptName VARCHAR(50)
);

insert into Department values(1, 'IT');

DELETE FROM Department where deptId = 1;

select * from Department;



-- Employee Table 
-- Each emloyee belongs to a department

create table IF NOT EXISTS Employee(
    empID SERIAL PRIMARY KEY,
    empName VARCHAR(50) NOT NULL,
    departmentID INT,
    CONSTRAINT fk_constraint_dept
        FOREIGN KEY (departmentID)
        REFERENCES Department(deptID)
);


insert into Employee values (1,'alif',1);

DELETE from Employee where empID = 1;

select * from Employee;

create table courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    publish_date DATE
);


-- date - YYYY-MM-DD
insert into courses(course_name, description,publish_date)
VALUES
    ('test', 'test', '2020-07-13'),
    ('test', 'test', null),
    ('test', 'test', null);



-- Update Database table row
-- UPDATE table_name
-- SET
-- column1 - value1
-- column2 - value2
-- Where condition

UPDATE courses 
SET 
course_name = 'postgres for de',
description = 'des'
where course_id > 1 AND course_id < 5;

UPDATE courses 
SET 
course_name = 'for de',
description = null
where course_id = 1;

select * from courses;

DELETE from courses 
where course_id = 1;

-- select basics

CREATE TABLE IF NOT EXISTS Department(
    deptID SERIAL PRIMARY KEY,
    name text NOT NULL
);

insert into Department(name)
VALUES
    ('IT'),
    ('HR'),
    ('Sales'),
    ('Marketing'),
    ('Finance'),
    ('Accounting');
    
DROP TABLE Department;



create table IF NOT EXISTS Employee(
    empID SERIAL PRIMARY KEY,
    name text NOT NULL,
    email text not NULL,
    salary INTEGER not null,
    joining_date date not null,
    deptID INTEGER not null,
    CONSTRAINT fk_deptID
        FOREIGN KEY (deptID)
        REFERENCES Department(deptID)
);

DROP TABLE Employee;

INSERT INTO Employee (
    name,
    email,
    salary,
    joining_date,
    deptID
) VALUES 
(
    'Alif',
    'alif@example.com',
    10000,
    '2020-07-13',
    1
),
(
    'Beth',
    'beth@example.com',
    62000,
    '2019-08-25',
    2
),
(
    'John',
    'john@example.com',
    100000,
    '2019-07-11',
    3
),
(
    'Richard',
    'richard@example.com',
    100000,
    '2018-01-01',
    2
),
(
    'David',
    'david@example.com',
    50000,
    '2020-11-05',
    4
),
(
    'Eva',
    'eva@example.com',
    60000,
    '2018-06-20',
    3
),
(
    'Frank',
    'frank@example.com',
    45000,
    '2017-09-15',
    2
),
(
    'Grace',
    'grace@example.com',
    75000,
    '2022-03-10',
    5
),
(
    'Henry',
    'henry@example.com',
    80000,
    '2021-11-30',
    6
),
(
    'Isabel',
    'isabel@example.com',
    68000,
    '2017-12-22',
    4
),
(
    'Jack',
    'jack@example.com',
    56000,
    '2019-04-08',
    1
),
(
    'Karen',
    'karen@example.com',
    72000,
    '2020-10-16',
    3
),
(
    'Liam',
    'liam@example.com',
    92000,
    '2018-05-03',
    5
),
(
    'Mia',
    'mia@example.com',
    57000,
    '2021-02-27',
    2
),
(
    'Nathan',
    'nathan@example.com',
    85000,
    '2022-07-19',
    6
),
(
    'Olivia',
    'olivia@example.com',
    67000,
    '2019-09-09',
    1
),
(
    'Paul',
    'paul@example.com',
    55000,
    '2020-08-14',
    4
),
(
    'Quinn',
    'quinn@example.com',
    78000,
    '2018-03-05',
    3
),
(
    'Rachel',
    'rachel@example.com',
    62000,
    '2022-01-08',
    2
),
(
    'Samuel',
    'samuel@example.com',
    71000,
    '2017-10-12',
    5
),
(
    'Taylor',
    'taylor@example.com',
    59000,
    '2021-06-28',
    6
),
(
    'Uma',
    'uma@example.com',
    95000,
    '2019-11-24',
    1
),
(
    'Victor',
    'victor@example.com',
    83000,
    '2020-04-17',
    4
),
(
    'Wendy',
    'wendy@example.com',
    64000,
    '2018-09-02',
    3
),
(
    'Xavier',
    'xavier@example.com',
    89000,
    '2022-05-21',
    2
),
(
    'Yara',
    'yara@example.com',
    70000,
    '2017-11-07',
    5
),
(
    'Zoe',
    'zoe@example.com',
    60000,
    '2021-10-03',
    6
);


-- SELECT ALL Fileds

SELECT * FROM Department;

SELECT * FROM Employee;

-- SELECT some column

SELECT empID, name, email FROM Employee;

-- FILTERING DATA
SELECT * from Employee 
where salary > 70000 and salary < 90000;

-- FILTERING DATA
SELECT * from Employee 
where salary > 70000 or salary < 90000;

-- FILTERING DATA
SELECT * from Employee 
where salary between 70000 and 90000;

SELECT * from Employee 
where joining_date >=  '2020-01-01';

-- not equal
SELECT * from Employee 
where name <> 'Alif';

SELECT * FROM Employee
WHERE name LIKE 'A%';

SELECT * FROM Employee
ORDER BY name 
ASC LIMIT 10 OFFSET 3;

SELECT * FROM Employee
ORDER BY salary 
DESC LIMIT 1 OFFSET 3;

-- IN, NOT IN, BETWEEN , LIMIT, OFFSET, LIKE, NOT LIKE, ORDER BY, GROUP BY, HAVING, DISTINCT, COUNT, SUM, AVG, MIN, MAX, ROUND, CAST, COALESCE, NULLIF, CASE, INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, SELF JOIN, CROSS JOIN, UNION, UNION ALL, INTERSECT, EXCEPT, EXISTS, ANY, ALL, SOME, IN, NOT IN, EXISTS, NOT EXISTS, INSERT, UPDATE, DELETE, TRUNCATE, CREATE TABLE, DROP TABLE, ALTER TABLE, CREATE INDEX, DROP INDEX, PRIMARY KEY, FOREIGN KEY, CHECK, UNIQUE, DEFAULT, CONSTRAINT, VIEW, SEQUENCE, TRIGGER, STORED PROCEDURE, STORED FUNCTION, BACKUP DATABASE, RESTORE DATABASE, AUTO INCREMENT, IDE

SELECT * from Employee
WHERE empID IN (1,2,3);

SELECT * FROM employee
WHERE salary BETWEEN 10000 AND 50000;

-- String Searching
SELECT * FROM employee
WHERE name LIKE '%a%';
SELECT * FROM employee
WHERE name LIKE '%a';
SELECT * FROM employee
WHERE name LIKE 'A%';

-- specific position 

SELECT * FROM employee
WHERE name LIKE '_a%';

SELECT * FROM employee
WHERE name LIKE '__a__';

-- first e A ache last e f
SELECT * FROM employee
WHERE name LIKE 'A%f';

-- check null
SELECT * FROM employee
WHERE name IS NULL;