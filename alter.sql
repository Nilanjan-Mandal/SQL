-- If we want to change the structure of a table (Metadata) use ALTER.
-- This is not a data manupulation, schema manupulation.

ALTER table employee4 add column jobtitle varchar (50)
ALTER table employee4 drop column jobtitle
ALTER table employee4 modify column name varchar (90);
ALTER table employee3 drop primary key;
ALTER table employee3 add primary key (id);

ALTER table students modify column stu_company varchar (50) DEFAULT 'JP Morgan',



ALTER TABLE course RENAME courses;
