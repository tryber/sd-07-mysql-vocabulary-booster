SELECT Country as 'País'
FROM w3schools.customers
union 
select Country as 'País'
FROM w3schools.suppliers
order by `País`
limit 5;
