SELECT c1.ContactName as 'Nome',
c1.Country as 'País',
count(c1.ContactName) as 'Número de compatriotas'
FROM w3schools.customers as c1, w3schools.customers as c2
where c1.Country = c2.Country and c1.CustomerID <> c2.CustomerID
group by c1.CustomerID
order by c1.ContactName;
