use Practice;
SHOW TABLES

Create table If Not Exists Weather (id int, recordDate date, temperature int)

insert into Weather (id, recordDate, temperature) values ('1', '2015-01-01', '10')
insert into Weather (id, recordDate, temperature) values ('2', '2015-01-02', '25')
insert into Weather (id, recordDate, temperature) values ('3', '2015-01-03', '20')
insert into Weather (id, recordDate, temperature) values ('4', '2015-01-04', '30')

-- Find all dates' Id with higher temperatures compared to its previous dates (yesterday).
+----+------------+-------------+
| id |      | temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+

Output: 
+----+
| id |
+----+
| 2  |
| 4  |
+----+

SELECT * from Weather ORDER BY recordDate;

select w.*, 
LAG(temperature) OVER (ORDER BY recordDate) AS previous_day_temperature 
from Weather as w;

with q1 as (
    SELECT w.*,
      LAG(temperature) OVER (ORDER BY recordDate) AS previous_day_temperature,
      LAG(recordDate) OVER (ORDER BY recordDate) AS previous_Date
  FROM Weather as w
)
SELECT id FROM q1
WHERE temperature > previous_day_temperature AND DATEDIFF(recordDate, previous_Date) = 1;











