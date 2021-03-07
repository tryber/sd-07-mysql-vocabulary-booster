select t2.ContactName as "Name", t2.Country as "País", count(t1.Country) as "Número de compatriotas"
from w3schools.customers as t1, w3schools.customers as t2
where t1.Country = t2.Country and t1.CustomerID <> t2.CustomerID
group by t2.CustomerId
order by t2.ContactName;
