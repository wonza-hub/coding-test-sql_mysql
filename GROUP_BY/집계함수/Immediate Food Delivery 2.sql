-- 참, 거짓에 따라 1 또는 0이 반환되는 점을 활용하여 AVG(평균)를 계산하는 스킬
SELECT ROUND(AVG(order_date=customer_pref_delivery_date)*100,2) AS immediate_percentage
FROM Delivery
WHERE (customer_id,order_date)
IN (
    SELECT customer_id,MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
)