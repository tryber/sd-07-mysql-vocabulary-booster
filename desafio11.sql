select wc0.ContactName as "Nome",
wc0.country as "País",
count(wc1.CustomerName) as "Número de compatriotas"
from w3schools.customers as wc0,
w3schools.customers as wc1
where wc0.country = wc1.country and wc0.CustomerID <> wc1.CustomerID
group by wc0.CustomerID -- insight to fix the query from slack
order by `Nome`;
