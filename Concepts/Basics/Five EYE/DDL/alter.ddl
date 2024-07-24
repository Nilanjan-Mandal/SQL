-- Change the Column name, add Column, Remove Column. 
ALTER TABLE STUDENTS ADD COLUMN checking varchar(100);
alter table STUDENTS rename column stu_lname to last_name;
ALTER TABLE STUDENTS DROP COLUMN checking;

-- Change Data Type
ALTER TABLE STUDENTS MODIFY COLUMN checking varchar(50) NOT NULL
ALTER TABLE STUDENTS MODIFY COLUMN checking varchar(100)

-- Change 

ALTER table employee4 add column jobtitle varchar (50)
ALTER table employee4 drop column jobtitle
ALTER table employee4 modify column name varchar (90);
ALTER table employee3 drop primary key;
ALTER table employee3 add primary key (id);
ALTER table students modify column stu_company varchar (50) DEFAULT 'JP Morgan',



-- If we want to change the structure of a table (Metadata) use ALTER.
-- This is not a data manupulation, schema manupulation.

ALTER table employee4 add column jobtitle varchar (50)
ALTER table employee4 drop column jobtitle
ALTER table employee4 modify column name varchar (90);
ALTER table employee3 drop primary key;
ALTER table employee3 add primary key (id);
ALTER table students modify column stu_company varchar (50) DEFAULT 'JP Morgan',
ALTER TABLE course RENAME courses;
ALTER TABLE course MODIFY COURSE_ID INT(5) AUTO_INCREMENT;