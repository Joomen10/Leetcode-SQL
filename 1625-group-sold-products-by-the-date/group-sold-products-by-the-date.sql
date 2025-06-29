-- Write your PostgreSQL query statement below
SELECT sell_date, count(DISTINCT product) AS num_sold, string_agg(DISTINCT product, ',' ORDER BY product) AS products
FROM Activities
GROUP BY sell_date
ORDER BY sell_date ASC;