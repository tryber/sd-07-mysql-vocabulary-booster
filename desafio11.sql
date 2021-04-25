SELECT t1.ContactName AS Nome,
t1.Country as País,
t2.CountryN - 1 AS 'Número de compatriotas'
FROM
(
SELECT Country, COUNT(Country) AS CountryN
FROM w3schools.customers
group by Country
having count(CountryN) > 1
) AS t2
INNER JOIN w3schools.customers AS t1 ON t1.Country = t2.Country
ORDER BY Nome;
