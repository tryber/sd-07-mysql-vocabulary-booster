SELECT DISTINCT sp.Country FROM w3schools.suppliers as sp
INNER JOIN w3schools.customers ct
ON ct.Country = sp.Country
LIMIT 5;
