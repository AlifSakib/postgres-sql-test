CREATE TABLE IF NOT EXISTS Department(
    deptID SERIAL PRIMARY KEY,
    name text NOT NULL
);




create table IF NOT EXISTS Employee(
    empID SERIAL PRIMARY KEY,
    name text NOT NULL,
    email text not NULL,
    salary INTEGER not null,
    joinging_date date not null,
    deptID INTEGER not null,
    CONSTRAINT fk_deptID
        FOREIGN KEY (deptID)
        REFERENCES Department(deptID)
);

SELECT * FROM Employee