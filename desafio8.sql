-- Desafio 8
-- Exiba todas as pessoas consumidoras cujos pedidos já foram enviados pelas empresas "Speedy Express" ou "United Package".
-- Use o banco w3schools como referência
-- Monte uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Nome de contato" e exibir o nome de contato da pessoa consumidora.
-- A segunda deve possuir o alias "Empresa que fez o envio" e exibir o nome da empresa que efetuou o envio do pedido.
-- A terceira deve possuir o alias "Data do pedido" e exibir a data que o pedido foi feito.
-- Seus resultados devem estar ordenados pelo nome de contato da pessoa consumidora em ordem alfabética.
-- Em caso de empate no nome de contato, ordene os resultados pelo nome da empresa que fez o envio do produto em ordem alfabética.
-- Se houver empresas com o mesmo nome, ordene os resultados pela data do pedido em ordem crescente.
SELECT
C.ContactName as "Nome de Contato",
S.ShipperName as "Empresa que fez o envio",
O.OrderDate as "Data do pedido"
FROM w3schools.orders as O
INNER JOIN w3schools.customers as C on C.CustomerID = O.CustomerID
INNER JOIN w3schools.shippers as S on S.ShipperID = O.ShipperID
WHERE
S.ShipperName IN ("Speedy Express", "United Package")
ORDER BY
1,
2,
3;
