SELECT t3.CustomerName AS `Nome de Contato`, 
<<<<<<< HEAD
        t2.ShipperName AS `Empresa que fez o envio`,
        t1.OrderDate AS `Data do pedido`
=======
	     t2.ShipperName AS `Empresa que fez o envio`, 
       t1.OrderDate AS `Data do pedido`
>>>>>>> 98b92759de0f544bc020ee7765813d1468ef211a
FROM w3schools.orders AS t1
INNER JOIN w3schools.shippers AS t2
INNER JOIN w3schools.employees AS t3
ORDER BY `Nome de Contato`, `Empresa que fez o envio`, `Data do pedido`
