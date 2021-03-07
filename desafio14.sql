SELECT Country as "País" FROM w3schools.suppliers
UNION
SELECT Country FROM w3schools.customers
order by Country
limit 5;
