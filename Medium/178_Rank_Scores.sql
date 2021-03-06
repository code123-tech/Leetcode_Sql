SELECT 
    S1.Score, 
    COUNT(S2.Score) AS `Rank`
FROM
    Scores S1, (SELECT DISTINCT Score FROM Scores) AS S2
WHERE
    S1.Score<=S2.Score
GROUP BY 
    S1.Id
ORDER BY 
    S1.Score DESC;