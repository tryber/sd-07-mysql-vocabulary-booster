SELECT Country FROM w3schools.customers
union
SELECT Country FROM w3schools.suppliers
order by Country;
