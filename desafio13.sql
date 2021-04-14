-- Desafio 13
-- Exiba todos os produtos que já tiveram um pedido associado requerindo uma quantidade desse produto maior que 80.
-- Use o banco w3schools como referência
-- Monte uma query que exiba 02 colunas:
-- A primeira deve possuir o alias "Produto" e exibir o nome do produto.
-- products.ProductName AS "Produto",
-- A segunda deve possuir o alias "Preço" e exibir o preço desse produto.
-- products.Price AS "Preço"
-- Os resultados devem estar ordenados pelo nome do produto em ordem alfabética.
-- ORDER BY Produto;
-- CONSIDERANDO TODAS AS VENDAS
-- SELECT 
--   products.ProductName AS "Produto",
--   products.Price AS "Preço"
-- FROM products
-- WHERE products.ProductID IN (SELECT order_details.ProductID FROM order_details GROUP BY order_details.ProductID HAVING SUM(order_details.Quantity) > 80)
-- ORDER BY Produto;
-- CONSIDERANDO ÚNICA VENDA
SELECT 
  products.ProductName AS "Produto",
  products.Price AS "Preço"
FROM products
WHERE products.ProductID IN (SELECT order_details.ProductID FROM order_details WHERE order_details.Quantity > 80)
ORDER BY Produto;
