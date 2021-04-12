SELECT Country as País from customers
UNION
SELECT Country as País from suppliers 
order by País limit 5
