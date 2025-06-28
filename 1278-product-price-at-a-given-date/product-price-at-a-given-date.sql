-- Write your PostgreSQL query statement below

WITH Bef AS (

SELECT DISTINCT product_id, new_price as price, change_date,
ROW_NUMBER() OVER(PARTITION BY product_id ORDER BY change_date DESC) AS rnk
FROM Products
WHERE change_date <= '2019-08-16'
) SELECT product_id, price
FROM Bef
WHERE rnk = 1

union all 

SELECT DISTINCT product_id, 10 as price 
FROM products
WHERE product_id not in 
(SELECT product_id
from products 
WHERE change_date <= '2019=08-16'
)

