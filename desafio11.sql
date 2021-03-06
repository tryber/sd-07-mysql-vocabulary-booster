select
c1.ContactName as 'Nome',
c1.Country as 'País',
count(c2.Country) - 1 as 'Número de compatriotas'
from w3schools.customers as c1
inner join w3schools.customers as c2 on c1.Country = c2.Country
group by c1.CustomerID
having `Número de compatriotas` != 0
order by `Nome`;
