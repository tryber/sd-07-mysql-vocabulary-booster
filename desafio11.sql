SELECT customers.ContactName AS Nome,
customers.Country AS País, 
COUNT(customers.Country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS customers,
w3schools.customers AS customersAgain
WHERE customers.Country = customersAgain.Country
GROUP BY customers.CustomerID
HAVING COUNT(customers.Country) - 1 > 0
ORDER BY customers.ContactName;
