select 
t1.ContactName as Nome,
t1.Country as País,
count(*)
from w3schools.customers as t1, w3schools.customers as t2
where t1.Country = t2.Country and t1.CustomerID <> t2.CustomerID
group by t1.CustomerID
order by t1.ContactName;
