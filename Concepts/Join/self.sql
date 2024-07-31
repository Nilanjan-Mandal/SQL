show TABLES;

-- DDL of the problem
CREATE table Employee_info (

    EmpID	            INT,
    EmpName	            VARCHAR(100),  
    Age	                INT,
    Sex	                VARCHAR(20),
    JobTitle	        VARCHAR(20),
    Salary	            INT(20),  
    ManagerID           INT(10)  

)

INSERT INTO Employee_info (EmpID,EmpNamE,Age,Sex,JobTitle,Salary,ManagerID) VALUES 
(1, 'Allen Jack', 50, 'F', 'Manager', 4000, 1);

SELECT ManagerID, ManagerName
FROM (
       SELECT E1.EmpID, E1.EmpName, E2.EmpName AS ManagerName, E2.EmpID AS ManagerID
       FROM Employee_Info AS E1 INNER JOIN Employee_Info AS E2
       ON E1.ManagerID = E2.EmpID) AS Table1
GROUP BY ManagerID, ManagerName
HAVING COUNT(EmpID) >= 7



