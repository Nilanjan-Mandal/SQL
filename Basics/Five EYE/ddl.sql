drop table employee;

#Create a Database
create databases trendytech;

#Create a Table
create table employee

  (
name varchar (50),
age INT,
salary INT (5)
  );

---------------------------
create table employee
  (
name varchar (50) NOT NULL,
age INT,
salary INT (5)
  );

-----------------------------------------------------------------
create table employee2

  (
name varchar (50) NOT NULL,
age INT,
salary INT (5),
location varchar (50) DEFAULT 'Bangalore'
  );

-----------------------------------------------------------------
  create table employee3
    (
  id INT(5) PRIMARY Key,
  name varchar (50) NOT NULL,
  age INT,
  salary INT (5),
  location varchar (50) DEFAULT 'Kolkata'
    );

-----------------------------------------------------------------

      create table employee4
        (
      id INT(5) AUTO_INCREMENT,
      name varchar (50) NOT NULL,
      age INT,
      salary INT (5),
      location varchar (50) DEFAULT 'Seattle',
      PRIMARY KEY(id)
--    PRIMARY KEY(firstname,lastname)
        );


-----------------------------------------------------------------

create table students (

  stu_id int AUTO_INCREMENT,
  stu_fname varchar (30) NOT NULL,
  stu_lname varchar (20) NOT NULL,
  stu_email varchar (40) NOT NULL,
  stu_no varchar (30) NOT NULL,
  stu_date TIMESTAMP NOT NULL,
  stu_company varchar (20),
  stu_loc varchar (100) NOT NULL,
  PRIMARY KEY (stu_id),
  Unique KEY (stu_email)
)

-----------------------------------------------------------------



create table course
  (
    course_id INT(5) AUTO_INCREMENT NOT NULL,
    course_name varchar (50),
    PRIMARY KEY (course_id)
  );







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
ALTER TABLE course RENAME courses;


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