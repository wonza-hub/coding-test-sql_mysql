WITH TEMP AS (
    SELECT *
    FROM Students A 
    CROSS JOIN Subjects B
)
SELECT T.student_id,T.student_name,T.subject_name,COUNT(E.subject_name) AS attended_exams
FROM TEMP T
LEFT JOIN Examinations E ON T.student_id=E.student_id AND T.subject_name=E.subject_name
GROUP BY 1,3
ORDER BY 1,3