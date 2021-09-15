# SELECT 
#     C.Name AS Customers 
# FROM 
#     Customers C LEFT JOIN Orders O 
#     ON C.Id = O.CustomerId 
# WHERE 
#     O.Id is NULL;

select customers.name as 'Customers'
from customers
where customers.id not in
(
    select customerid from orders
);