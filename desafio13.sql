-- Desafio 13
-- Exiba todos os produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80.
-- Use o banco w3schools como referência
-- Monte uma query que exiba 02 colunas:
-- A primeira deve possuir o alias "Produto" e exibir o nome do produto.
-- A segunda deve possuir o alias "Preço" e exibir o preço desse produto.
-- Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.
SELECT
P.ProductName as "Produto",
P.Price as "Preço"
FROM w3schools.orders as O
INNER JOIN w3schools.order_details as OD ON OD.OrderId = O.OrderId
INNER JOIN w3schools.products as P ON P.ProductID = OD.ProductId
WHERE
OD.Quantity > 80
ORDER BY
1;
