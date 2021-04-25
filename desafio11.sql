select
c.ContactName as 'Nome',
c.Country as 'País',
(select count(Country) from w3schools.customers where Country = c.Country) - 1 as 'Número de compatriotas'
from w3schools.customers c
where
((select count(Country) from w3schools.customers where Country = c.Country) - 1) > 0
order by 1 ASC;
