-- Insert statement can not have a where clause

update employee4 set salary=15000 where name="Sayan Lal";
update employee4 set salary=salary+5000;

-- Update Multiple IDs
update students set stu_company="CGI" where stu_id in (5,10,2);


delete from employee where name='Bikram Roy';



