SELECT
t1.ContactName as Nome,
t1.Country as País,
COUNT(t1.Country) as `Número de compatriotas`
from customers as t1
INNER JOIN customers as t2
on t1.Country = t2.Country where t1.CustomerID != t2.CustomerID
group by t1.ContactName
order by t1.ContactName
