SELECT uid AS id,COUNT(uid) AS num
FROM
(
    SELECT requester_id AS uid
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS uid
    FROM RequestAccepted
) A
GROUP BY uid
ORDER BY num DESC
LIMIT 1