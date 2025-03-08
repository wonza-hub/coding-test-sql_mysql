-- SELECT num AS ConsecutiveNums
SELECT DISTINCT num AS ConsecutiveNums
FROM
(
SELECT id,num,LAG(num,1) OVER (ORDER BY id) AS numm,LAG(num,2) OVER (ORDER BY id) AS nummm
FROM Logs
) A
WHERE A.num=A.numm AND A.numm=A.nummm