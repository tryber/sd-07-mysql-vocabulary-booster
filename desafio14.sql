select
Country as País
from w3schools.customers
union select 
Country
from w3schools.suppliers
order by
1 ASC
limit 5;
