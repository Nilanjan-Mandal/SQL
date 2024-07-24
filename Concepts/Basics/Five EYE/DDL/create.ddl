-- Create a Table
create table employee (
name varchar (50),
age INT,
salary INT (5)
  );

create table employee
  (
name varchar (50) NOT NULL,
age INT,
salary INT (5)
  );

create table employee2

  (
name varchar (50) NOT NULL,
age INT,
salary INT (5),
location varchar (50) DEFAULT 'Bangalore'
  );


  create table employee3
    (
  id INT(5) PRIMARY Key,
  name varchar (50) NOT NULL,
  age INT,
  salary INT (5),
  location varchar (50) DEFAULT 'Kolkata'
    );

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

create table course
  (
    course_id INT(5) AUTO_INCREMENT NOT NULL,
    course_name varchar (50),
    PRIMARY KEY (course_id)
  );

create table example(
      ID    INT
    , Name  varchar(20)
);



