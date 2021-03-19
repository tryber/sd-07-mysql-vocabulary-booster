select concat(wemployees.FirstName, " ", wemployees.LastName) as "Nome completo",
count(worders.EmployeeID) as "Total de pedidos"
from w3schools.orders as worders
inner join w3schools.employees as wemployees
on wemployees.EmployeeID = worders.EmployeeID
group by `Nome completo`
order by `Total de pedidos` asc;
