WITH cte AS
(   
    SELECT COUNT(*) AS total
    FROM Product
)

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key)=(SELECT total FROM cte)

-- 복습 풀이
SELECT CUSTOMER_ID
FROM CUSTOMER
GROUP BY CUSTOMER_ID
-- DISTINCT: 동일한 제품을 여러 번 구매한 경우 고려
HAVING COUNT(DISTINCT PRODUCT_KEY)=
(
    SELECT COUNT(*)
    FROM PRODUCT
)