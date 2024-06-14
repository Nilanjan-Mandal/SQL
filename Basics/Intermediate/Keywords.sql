1) DISTINCT : This will show the DISTINCT value, not any duplicate value.
---------------------------------------------
select DISTINCT location from students;

2) LIMIT
---------------------------------------------
select * from students limit 10;
select * from students ORDER by stu_date limit 0,3; -- This will start from 0th Row and then 3.

3) ORDER BY
---------------------------------------------
-- By Default Ascending
select * from students ORDER BY location desc;
select name,location  from students ORDER BY 1 desc; -- This will sort based on name


4) LIKE, NOT LIKE
---------------------------------------------
select * from students where name LIKE "%na%"
select * from students where name LIKE "na%"
select * from students where name LIKE "\%na%"
select * from students where name LIKE "%na"
select * from students where name LIKE "-----"  -- Underscore represent no of characters (Here 5)


5) GROUP BY
---------------------------------------------

Grouping based on data.

a. Based on location
b. Based on Company
