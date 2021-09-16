# Write your MySQL query statement below
SELECT 
    D.Name as Department,
    E.Name as Employee,
    Salary
FROM 
    Employee E INNER JOIN Department D 
    ON E.DepartmentId = D.Id
WHERE
    (E.DepartmentId,Salary) IN (
        SELECT 
            DepartmentId,max(Salary) 
        FROM 
            Employee
        GROUP BY 
            DepartmentId
    )
;