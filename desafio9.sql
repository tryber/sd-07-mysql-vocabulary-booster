-- Desafio 9
-- Exiba todas as pessoas funcionárias que já realizaram algum pedido e o total dos pedidos feitos.
-- Use o banco w3schools como referência
-- Monte uma query que exiba 02 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa funcionária
-- (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Total de pedidos" e exibir a quantidade total de pedidos feitos pela pessoa.
-- Ordene seus resultados pelo total de pedidos em ordem crescente.
SELECT
CONCAT(E.FirstName, ' ', E.LastName) AS "Nome completo",
count(O.EmployeeID) AS "Total de pedidos"
FROM w3schools.orders as O 
INNER JOIN w3schools.employees as E ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY
2;
