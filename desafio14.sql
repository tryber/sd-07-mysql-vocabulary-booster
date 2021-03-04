SELECT Country AS `País` FROM w3schools.customers 
UNION
SELECT Country FROM w3schools.uppliers
LIMIT 5;
