select ContactName as "Nome",
country as "País",
count(country) as "Número de compatriotas"
from w3schools.customers
group by country
order by `Nome`;
