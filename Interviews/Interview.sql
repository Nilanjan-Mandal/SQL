show tables;
DROP table if EXISTS logs;

Create table IF NOT EXISTS logs (
        Log_name        VARCHAR (20),
        DAY             INT,
        MONTH           INT,  
        YEAR            INT    

);

INSERT INTO logs(Log_name, DAY, MONTH, YEAR) 
VALUES ("a", 15, 2, 2022),
       ("b", 25, 3, 2018),
       ("c", 6, 12, 2023),
       ("d", 1, 5, 2024);

-- Find out any range of a date. 
select * from logs;

SELECT * FROM (
    SELECT Log_name, CONCAT(DAY, '-', MONTH, '-', YEAR) AS date 
    FROM logs
) AS subquery
WHERE STR_TO_DATE(date, '%d-%m-%Y') >= '2018-12-12' AND STR_TO_DATE(date, '%d-%m-%Y') <= '2024-01-01';