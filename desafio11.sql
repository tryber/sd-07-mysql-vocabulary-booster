SELECT
t1.ContactName as Nome,
t1.Country as País,
COUNT(t2.Country) as `Número de compatriotas`
from w3schools.customers as t1, w3schools.customers as t2
where t1.Country = t2.Country AND t1.CustomerID != t2.CustomerID
group by t1.ContactName
order by t1.ContactName;
