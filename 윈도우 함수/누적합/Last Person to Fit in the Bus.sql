WITH cte AS
(
    SELECT *,SUM(weight) OVER (ORDER BY turn) AS total -- 누적합
    FROM Queue
    ORDER BY turn
) 

SELECT person_name
FROM cte
WHERE total<=1000
ORDER BY total DESC
LIMIT 1