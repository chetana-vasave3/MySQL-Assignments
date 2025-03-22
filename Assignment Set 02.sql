
-- Using tables from ConsolidatedTables.

-- Q1. select all employees in department 10 whose salary is greater than 3000. [table: employee]

-- Q2. The grading of students based on the marks they have obtained is done as follows:
-- 40 to 50 -> third Class
-- 50 to 60 -> second Class
-- 60 to 80 -> First Class
-- 80 to 100 -> Distinctions
-- a. How many students have graduated with first class?===>11 students
select * from students;
select count(*) from students where marks between 60 and 79;

-- b. How many students have obtained distinction? ==>11 students
select count(*) from students where marks between 80 and 100;
-- Q3. Get a list of city names from station with even ID numbers only. Exclude duplicates from your answer. [table: station]
select * from station ;
select distinct(city) ,id from station where id%2=0;
-- Q4. How many cities in the CITY table have a Population larger than 100000. [table: city]
-- Q5. What is the total population of California? [table: city]
select * from city ;
select sum(population) from city where district="California";

