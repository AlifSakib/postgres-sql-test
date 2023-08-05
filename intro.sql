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
)

-- ## Insert data into a TABLE
INSERT INTO users3 values (1, 'john', 'jsohn@gmail.com')

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

SELECT * from users3 

