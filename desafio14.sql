SELECT Country as 'País'
FROM w3schools.suppliers
UNION
SELECT Country
FROM w3schools.customers
order by `País` limit 5;
