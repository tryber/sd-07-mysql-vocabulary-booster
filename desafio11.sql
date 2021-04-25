SELECT customers.contactname AS Nome,
customers.country AS País, 
COUNT(customers.country) - 1 AS 'Número de compatriotas'
FROM w3schools.customers AS customers,
w3schools.customers AS customersAgain
WHERE customers.country = customersAgain.country
GROUP BY customers.Customerid
HAVING COUNT(customers.Country) - 1 > 0
ORDER BY customers.contactname;
