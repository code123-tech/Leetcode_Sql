SELECT 
    W2.id
FROM 
    Weather AS W1, Weather AS W2 
WHERE 
    DATEDIFF(W2.recordDate,W1.recordDate) = 1
    AND W1.Temperature < W2.Temperature