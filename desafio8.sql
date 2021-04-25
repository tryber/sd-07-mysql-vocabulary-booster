SELECT
cus.ContactName AS `Nome de contato`,
shi.ShipperName `Empresa que fez o envio`,
ord.OrderDate AS `Data do pedido`
FROM w3schools.orders AS ord
INNER JOIN w3schools.customers AS cus
ON ord.CustomerId = cus.CustomerId
INNER JOIN w3schools.shippers as shi
ON ord.ShipperId = shi.ShipperId
WHERE shi.ShipperName = "Speedy Express" || shi.ShipperName = "United Package"
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
