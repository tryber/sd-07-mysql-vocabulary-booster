select country as "País" from w3schools.customers
union
select country as "País" from w3schools.suppliers
group by `País`
order by `País`
limit 5;
