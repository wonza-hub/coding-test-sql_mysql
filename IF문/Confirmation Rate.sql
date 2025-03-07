SELECT A.user_id,ROUND(AVG(IF(action='confirmed',1,0)),2) AS confirmation_rate 
FROM Signups A
LEFT JOIN Confirmations B ON A.user_id=B.user_id
GROUP BY A.user_id