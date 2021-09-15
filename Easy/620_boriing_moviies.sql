SELECT 
    *
FROM 
    CINEMA
WHERE 
    id&1 = 1 
    AND description <> "boring"
ORDER BY 
    rating DESC;