SELECT query_name,ROUND(AVG(rating/position),2) AS quality, ROUND((COUNT(NULLIF(rating<3,0))/COUNT(query_name))*100,2) AS poor_query_percentage
FROM Queries
GROUP BY query_name