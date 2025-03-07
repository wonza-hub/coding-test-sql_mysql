WITH cte AS
(
    SELECT A.product_id,MIN(year) AS first_year
    FROM Sales A
    JOIN Product B ON A.product_id=B.product_id
    GROUP BY A.product_id
)

SELECT A.product_id,first_year,quantity,price
FROM cte A
JOIN Sales B ON A.product_id=B.product_id
WHERE first_year=year