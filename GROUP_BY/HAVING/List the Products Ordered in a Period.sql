SELECT product_name,SUM(unit) AS unit
FROM Products A
JOIN Orders B ON A.product_id=B.product_id
WHERE DATE_FORMAT(order_date,'%Y-%m')='2020-02'
GROUP BY A.product_id
HAVING unit>=100