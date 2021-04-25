select
cus.ContactName as "Nome",
cus.Country as "País",
(select count(*) - 1 from w3schools.customers as c1
group by c1.Country having count(*) - 1 > 0
and c1.Country = cus.Country) as "Número de compatriotas"
from w3schools.customers as cus
where (select count(*) - 1 from w3schools.customers as c1
group by c1.Country having count(*) - 1 > 0
and c1.Country = cus.Country) > 0
order by cus.ContactName;
