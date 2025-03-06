SELECT SUM(SCORE) AS SCORE,A.EMP_NO,EMP_NAME,POSITION,EMAIL
FROM HR_EMPLOYEES A
JOIN HR_GRADE B ON A.EMP_NO=B.EMP_NO
GROUP BY EMP_NO
ORDER BY SCORE DESC
LIMIT 1