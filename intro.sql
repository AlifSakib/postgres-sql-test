-- Active: 1691177039719@@127.0.0.1@5432@test3
-- ## Create a TABLE

-- CREATE TABLE student (
--     student_id INT ,
--     first_name VARCHAR(20),
--     last_name VARCHAR(20),
--     cgpa NUMERIC(3,2)
-- )

-- Remane a TABLE

-- CREATE TABLE users3 (
--     user_id SERIAL PRIMARY KEY,
--     username VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     age INT DEFAULT 18
--     -- PRIMARY KEY(user_id, username)
--     -- UNIQUE( username, email)
-- )

-- ## Insert data into a TABLE
-- INSERT INTO users3 values (1, 'john', 'jsohn@gmail.com')

select * from users3