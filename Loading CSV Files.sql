use mydb;
create table t1(employeeNumber int,lastName text,firstName text,extension text, email text, reportsTo text,jobTitle text,officeCode text);
SHOW VARIABLES LIKE 'secure_file_priv';
-- This command checks the directory MySQL is allowed to 
-- read/write files from when using LOAD DATA INFILE .
-- If the result is NULL, MySQL doesn't have a secure file privilege restriction.
-- If it returns a path, that is the only directory MySQL can use for file operations.
SET GLOBAL local_infile = 1;
-- This enables the LOCAL INFILE option globally, allowing MySQL to import data from local files.
-- Some MySQL versions have this disabled by default for security reasons.

LOAD DATA local INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/employees.csv"
INTO TABLE t1
FIELDS TERMINATED BY ';' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;
-- This command imports data from employees.csv into t1:
-- LOCAL INFILE: Specifies that the file is on the client’s machine, not the MySQL server.
-- FIELDS TERMINATED BY ';': Indicates that fields in the file are separated by semicolons (;).
-- LINES TERMINATED BY '\n': Specifies that each row ends with a newline (\n).
-- IGNORE 1 ROWS: Skips the first row, assuming it contains column headers.
SHOW VARIABLES LIKE 'local_infile';
-- This checks whether local_infile is enabled (ON) or disabled (OFF).
--  If OFF, you may need to enable it in MySQL's configuration file.-- 

######################################################################################
create table t2(srno bigint,Customer_Id char(50),	First_Name char(100),	Last_Name char(100),	Company char(100),	City char(100),	Country char(100),	Phone_1 char(100),	Phone_2 char(100),	Email char(100),	Subscription_Date  date,	Website char(100));
LOAD DATA local INFILE "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/customers_100000.csv"
INTO TABLE t2
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;
select count(*) from t2;


