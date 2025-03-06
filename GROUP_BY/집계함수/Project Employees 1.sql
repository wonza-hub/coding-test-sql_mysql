SELECT project_id,ROUND(AVG(experience_years),2) AS average_years
FROM Project A
JOIN Employee B ON A.employee_id=B.employee_id
GROUP BY project_id