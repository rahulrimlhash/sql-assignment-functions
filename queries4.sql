CREATE DATABASE countries;
USE countries;

-- Create the table "Country"
CREATE TABLE Country (
  Id INT,
  Country_name VARCHAR(255),
  Population INT,
  Area INT
);

-- Insert 10 rows into the "Country" table
INSERT INTO Country (Id, Country_name, Population, Area)
VALUES
  (1, 'India', 1393409038, 3287263),
  (2, 'Pakistan', 38005238, 9976140),
  (3, 'England', 67886011, 242900),
  (4, 'Srilanka', 83783942, 357022),
  (5, 'Bangladesh', 65273511, 551695),
  (6, 'Brazil', 60461826, 301340),
  (7, 'Spain', 46754778, 505990),
  (8, 'Australia', 25499884, 7692024),
  (9, 'UAE', 1439323776, 9640011),
  (10, 'Aurgentina', 1393409, 328726);

-- Create the table "Persons"
CREATE TABLE Persons (
  Id INT,
  Fname VARCHAR(255),
  Lname VARCHAR(255),
  Population INT,
  Rating INT,
  Country_Id INT,
  Country_name VARCHAR(255)
);

-- Insert 10 rows into the "Persons" table
INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name)
VALUES
  (1, 'Aparna', 'Sukesh', 50000, 5, 1, 'India'),
  (2, 'Jane', 'Smith', 50000, 5, 1, 'India'),
  (3, 'Anusha', 'Y', 12000, 4, 1, 'India'),
  (4, 'Jazzim', 'Muhammed', 10000, 4, 2, 'Pakistan'),
  (5, 'David', 'Brown', 18000, 4, 2, 'Pakistan'),
  (6, 'Sara', 'khan', 8000, 3, 5, 'Bangladesh'),
  (7, 'Virat', 'Kohil', 14000, 4, 7, 'Spain'),
  (8, 'Shubman', 'Gill', 13000, 2, 8, 'Australia'),
  (9, 'Virendra', 'Sehwag', 13000, 4, 1, 'India'),
  (10, 'Ameer', 'ali', 17000, 5, 1, 'India');

-- Query 1: Print the first three characters of Country_name from the Country table
SELECT SUBSTRING(Country_name, 1, 3) AS First_Three_Characters FROM Country;

-- Query 2: Concatenate firstname and lastname from the Persons table
SELECT CONCAT(Fname, ' ', Lname) AS Full_Name FROM Persons;

-- Query 3: Count the number of unique country names from the Persons table
SELECT COUNT(DISTINCT Country_name) AS Unique_Country_Count FROM Persons;

-- Query 4: Print the maximum population from the Country table
SELECT MAX(Population) AS Maximum_Population FROM Country;

-- Query 5: Print the minimum population from the Persons table
SELECT MIN(Population) AS Minimum_Population FROM Persons;

