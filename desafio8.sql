SELECT t3.CustomerName AS `Nome de Contato`, 
	   t2.ShipperName AS `Empresa que fez o envio`, 
       t1.OrderDate AS `Data do pedido`
FROM w3schools.orders AS t1
INNER JOIN w3schools.shippers AS t2
INNER JOIN w3schools.employees AS t3
ORDER BY `Nome de Contato`, `Empresa que fez o envio`, `Data do pedido`