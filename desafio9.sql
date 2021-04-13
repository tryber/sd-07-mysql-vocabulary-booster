select
concat(e.FirstName, ' ', e.LastName) as 'Nome completo',
count(o.EmployeeID) as 'Total de pedidos'
from w3schools.employees as e
inner join w3schools.orders as o on o.EmployeeID = e.EmployeeID
group by e.EmployeeID
order by `Total de pedidos`;
