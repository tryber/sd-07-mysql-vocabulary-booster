select (concat(e.FirstName,' ',e.LastName)) as 'Nome completo',
count(e.EmployeeID) AS 'Total de pedidos'
from w3schools.employees as e
Inner join w3schools.orders as o
on e.EmployeeID = o.EmployeeID
group by e.EmployeeID
order by `Total de pedidos`;
