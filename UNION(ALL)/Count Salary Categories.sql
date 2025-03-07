SELECT 'Low Salary' AS category, COUNT(if(income<20000,1,null)) AS accounts_count
FROM Accounts

UNION ALL

SELECT 'Average Salary' AS category, COUNT(if(20000<=income AND income<=50000,1,null)) AS accounts_count
FROM Accounts

UNION ALL

SELECT 'High Salary' AS category, COUNT(if(50000<income,1,null)) AS accounts_count
FROM Accounts