SELECT
t1.ContactName AS "Nome",
t1.Country AS "País",
(select COUNT(t2.CustomerID) -1 
from w3schools.customers AS t2
where t1.Country = t2.Country
group by t2.Country) AS "Número de compatriotas"
FROM w3schools.customers AS t1
order By 1 asc;
