WITH cteA AS
(
    SELECT A.movie_id,B.name,COUNT(A.user_id) AS cnt
    FROM MovieRating A
    JOIN Users B ON A.user_id=B.user_id
    GROUP BY B.user_id
    ORDER BY cnt DESC,name ASC
    LIMIT 1
), 
cteB AS
(
    SELECT AVG(rating) as average,title
    FROM MovieRating A
    JOIN Movies B ON A.movie_id=B.movie_id
    WHERE DATE_FORMAT(created_at,"%Y-%m")='2020-02'
    GROUP BY A.movie_id
    ORDER BY average DESC,B.title ASC
    LIMIT 1
)

SELECT name AS results
FROM cteA
UNION ALL -- 동일한 영화명, 사용자명이 존재할 수도 있음
SELECT title AS results
FROM cteB
