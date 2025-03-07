SELECT 
(
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1 OFFSET 1 -- LIMIT 1,1과 같음
) AS SecondHighestSalary