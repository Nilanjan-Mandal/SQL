show TABLES


select * from employee;
SELECT DEPT_NAME, MAX(salary) from employee GROUP BY DEPT_NAME;

--rank & dense_rank
select e.*, 
rank() OVER (PARTITION BY DEPT_NAME ORDER BY SALARY DESC) as rnk
from employee as e;

select e.*, 
dense_rank() OVER (PARTITION BY DEPT_NAME ORDER BY SALARY DESC) as rnk
from employee as e;

-- Max Salary using window function
select * from (
            select e.*, 
            dense_rank() OVER (PARTITION BY DEPT_NAME ORDER BY SALARY DESC) as rnk
            from employee as e
) as x
WHERE x.rnk = 1;

-- CTE
WITH max_sal as (
            select e.*, 
            dense_rank() OVER (PARTITION BY DEPT_NAME ORDER BY SALARY DESC) as rnk
            from employee as e
)
SELECT * from max_sal WHERE rnk > 1;

-- lead & lag 
select e.*,
lag(salary) over(partition by dept_name order by emp_id) as prev_empl_sal,
lead(salary) over(partition by dept_name order by emp_id) as next_empl_sal
from employee e;


-- FIRST_VALUE 

select *,
first_value(product_name) over(partition by product_category order by price desc) as most_exp_product
from product;


select * from Employees

SELECT ID, count(*) as cn
from Employees GROUP BY ID HAVING cn > 1



show tables





select * from Emp

select e.*, 
row_number() over (partition BY ID ORDER BY DATE desc) as latest
from Emp as e





















