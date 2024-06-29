-- Create a Procedure, Basic Syntax
create or replace procedure pr_name (P_name varachar, p_age INT)
as
    variable 
begin 
    procedure body - all logics
end;

-- Single quote issue, usiing escape character
select 'I''m Nilanjan'
select 'I\'m Nilanjan'
select $$I'm Nilanjan$$ 

