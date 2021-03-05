SELECT customers.country AS `País`
FROM w3schools.customers AS customers 
INNER JOIN w3schools.suppliers AS suppliers 
ON customers.Country <> suppliers.Country
GROUP BY customers.country
ORDER BY customers.country
LIMIT 5;
