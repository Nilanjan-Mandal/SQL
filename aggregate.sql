COUNT
-------------------------------------------------------------------
select count(*) from students;
select count(1) from students;
select count(stu_company) from students;
select count(DISTINCT stu_company) from students;
select count(DISTINCT stu_company) AS num_companies from students;
select count(DISTINCT stu_location) AS num_loc from students;


GROUP BY
-------------------------------------------------------------------
select count(stu_location) from students GROUP BY stu_location;
select stu_location, count(*) from students GROUP BY stu_location;


MIN & MAX
-------------------------------------------------------------------
select max (column_name) from students;
select min (column_name) from students;


SUM & AVG
-------------------------------------------------------------------
select stu_location, AVG(years_of_experience) from students group by stu_location;
