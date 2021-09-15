SELECT 
    DISTINCT LOWER(p1.Email) AS Email 
FROM 
    Person p1 INNER JOIN Person p2 
    ON p1.Id != p2.Id 
WHERE
    p1.Email = p2.Email;