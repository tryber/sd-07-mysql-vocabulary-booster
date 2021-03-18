(SELECT
distinct customers.Country AS 'País'
FROM w3schools.customers)
union
(
Select
distinct suppliers.Country AS 'País'
From suppliers
)
Order by 1 ASC
limit 5;
