WITH RECURSIVE AR AS
(
    SELECT ID,PARENT_ID,1 AS GEN
    FROM ECOLI_DATA
    WHERE PARENT_ID IS NULL
    
    UNION ALL
    
    SELECT A.ID,A.PARENT_ID,AR.GEN+1 AS GEN
    FROM ECOLI_DATA A
    JOIN AR ON A.PARENT_ID=AR.ID
    WHERE AR.GEN<3
)
SELECT ID
FROM AR
WHERE GEN=3
ORDER BY ID