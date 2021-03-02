SELECT customer1.ContactName AS Nome,
customer1.Country AS País,
COUNT(customer2.Country) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS customer1
INNER JOIN w3schools.customers AS customer2
ON customer1.Country = customer2.Country
GROUP BY customer1.CustomerID
ORDER BY Nome;
