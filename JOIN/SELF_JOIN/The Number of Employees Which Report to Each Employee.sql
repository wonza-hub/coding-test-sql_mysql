SELECT A.employee_id,A.name,COUNT(A.employee_id) AS reports_count ,ROUND(AVG(B.age)) AS average_age
FROM EMPLOYEES A
JOIN EMPLOYEES B ON A.employee_id=B.reports_to
-- GROUP BY 시 직원의 이름으로 그룹화하면, 이름이 중복된 경우 오류 발생에 유의
GROUP BY A.employee_id
ORDER BY A.employee_id