SELECT 
    M.Name AS Employee
FROM    
    Employee E INNER JOIN Employee M ON 
    E.Id = M.ManagerId 
WHERE 
    M.Salary>E.Salary;


