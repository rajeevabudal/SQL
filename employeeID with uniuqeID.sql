Create table
    If Not Exists Employees (id int, name varchar(20))
Create table
    If Not Exists EmployeeUNI (id int, unique_id int)
Truncate table Employees
insert into
    Employees (id, name)
values ('1', 'Alice')
insert into
    Employees (id, name)
values ('7', 'Bob')
insert into
    Employees (id, name)
values ('11', 'Meir')
insert into
    Employees (id, name)
values ('90', 'Winston')
insert into
    Employees (id, name)
values ('3', 'Jonathan')
Truncate table EmployeeUNI
insert into
    EmployeeUNI (id, unique_id)
values ('3', '1')
insert into
    EmployeeUNI (id, unique_id)
values ('11', '2')
insert into
    EmployeeUNI (id, unique_id)
values ('90', '3') -- Table: Employees
    -- +---------------+---------+
    -- | Column Name   | Type    |
    -- +---------------+---------+
    -- | id            | int     |
    -- | name          | varchar |
    -- +---------------+---------+
    -- In SQL, id is the primary key for this table.
    -- Each row of this table contains the id and the name of an employee in a company.
    -- Table: EmployeeUNI
    -- +---------------+---------+
    -- | Column Name   | Type    |
    -- +---------------+---------+
    -- | id            | int     |
    -- | unique_id     | int     |
    -- +---------------+---------+
    -- In SQL, (id, unique_id) is the primary key for this table.
    -- Each row of this table contains the id and the corresponding unique id of an employee in the company.
    -- Show the unique ID of each user, If a user does not have a unique ID replace just show null.
    -- Return the result table in any order.
select
    EmployeeUNI.unique_id,
    Employees.name
from Employees
    left join EmployeeUNI ON Employees.id = EmployeeUNI.id;