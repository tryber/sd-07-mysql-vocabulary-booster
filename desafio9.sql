select 
concat(employees.FirstName, ' ', employees.LastName) AS 'Nome completo',
count(*)
from w3schools.employees as employees
INNER JOIN w3schools.orders as orders
on employees.EmployeeID = orders.EmployeeID
group by employees.EmployeeID;
