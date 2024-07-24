use Practice;
show tables
select * from employee;

-- Case Statement
SELECT e.*, 
    CASE 
        WHEN DEPT_NAME = 'IT' THEN 'Technical_Guy'
        ELSE 'General_Guy'
    END as Type_person
FROM 
    employee AS e;

-- Case Expression
select e.*, 
CASE SALARY 
    WHEN value1 THEN result1
    ELSE default_result
END as 
from employee as e. 