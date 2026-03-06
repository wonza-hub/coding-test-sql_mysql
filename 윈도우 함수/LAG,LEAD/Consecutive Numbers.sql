-- SELECT num AS ConsecutiveNums
SELECT DISTINCT num AS ConsecutiveNums
FROM
(
SELECT id,num,LAG(num,1) OVER (ORDER BY id) AS numm,LAG(num,2) OVER (ORDER BY id) AS nummm
FROM Logs
) A
WHERE A.num=A.numm AND A.numm=A.nummm

-- 복습 풀이
-- DINSTINCT: 연속 4번 이상 나온 경우 중복 제거해야 함에 유의
WITH DISTINCT CTE AS
(
    SELECT 
    NUM,
    LAG(NUM,1) OVER(ORDER BY ID) NUMM,
    LAG(NUM,2) OVER(ORDER BY ID) NUMMM
    FROM LOGS
)

SELECT NUM ConsecutiveNums
FROM CTE
WHERE NUM=NUMM AND NUMM=NUMMM