SELECT sell_date,COUNT(DISTINCT product) AS num_sold,GROUP_CONCAT(DISTINCT product) AS products
FROM Activities
GROUP BY 1
ORDER BY 1,3