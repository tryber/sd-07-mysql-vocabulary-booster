SELECT c1.ContactName as 'Nome',
c1.Country as 'País',
(count(*) - 1) as 'Número de compatriotas'
FROM w3schools.customers as c1, w3schools.customers as c2
where c1.Country = c2.Country
group by c1.ContactName
having `Número de compatriotas` > 0
order by `Nome`;
