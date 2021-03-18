select country as "País"
from w3schools.customers
group by `País`
order by `País` asc
limit 5;