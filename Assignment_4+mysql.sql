-- Create the Country table
CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(50),
    Population INT,
    Area FLOAT);
-- Create the Persons table
CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(50),
    Lname VARCHAR(50),
    Population INT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(50));
    -- Insert rows into the Country table
INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'USA', 331000000, 9834000),
(2, 'Canada', 38000000, 9985000),
(3, 'UK', 67800000, 243000),
(4, 'India', 1393000000, 3287000),
(5, 'Australia', 25600000, 7692000),
(6, 'Germany', 83200000, 357000),
(7, 'France', 65400000, 551000),
(8, 'Brazil', 213000000, 8516000),
(9, 'Japan', 126000000, 377975),
(10, 'South Korea', 52000000, 100210);
-- Insert rows into the Persons table
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'John', 'Doe', 331000000, 4.5, 1, 'USA'),
(2, 'Jane', 'Smith', 38000000, 3.8, 2, 'Canada'),
(3, 'Alice', 'Johnson', 67800000, 4.2, 3, 'UK'),
(4, 'Rahul', 'Verma', 1393000000, 3.6, 4, 'India'),
(5, 'Emily', 'Davis', 25600000, 4.8, 5, 'Australia'),
(6, 'Carlos', 'Garcia', 213000000, 4.1, 8, 'Brazil'),
(7, 'Sophie', 'Miller', 65400000, 3.9, 6, 'France'),
(8, 'Akira', 'Tanaka', 126000000, 4.7, 9, 'Japan'),
(9, 'Min', 'Choi', 52000000, 3.5, 10, 'South Korea'),
(10, 'Anna', 'Brown', 38000000, 4.6,5,'france');
-- (1) List the distinct country names from the Persons table
SELECT Country_name FROM Persons;
-- (2) Select first names and last names from the Persons table with aliases
select Fname as first_Name ,Lname as last_names from persons;
-- (3) Find all persons with a rating greater than 4.0
select * from  persons where rating > 4.0;
-- (4) Find countries with a population greater than 10 lakhs
select * from country where Population > 1000000;
-- (5) Find persons who are from 'USA' or have a rating greater than 4.5
select * from persons where Country_name='USA' or  Rating > 4.5;
-- (6) Find all persons where the country name is NULL
update persons set Country_name=null where Id=10;
select * from persons;
select * from persons where Country_name is null;
-- (7) Find all persons from the countries 'USA', 'Canada', and 'UK'
select * from persons where Country_name in ('USA', 'Canada','UK');
-- (8) Find all persons not from the countries 'India' and 'Australia'
SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');
-- (9) Find all countries with a population between 5 lakhs and 20 lakhs
SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;
-- (10) Find all countries whose names do not start with 'C'
sELECT * FROM Country WHERE Country_name not like  'C%';



