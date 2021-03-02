-- desafio 11
-- Exiba todas as pessoas clientes que possuem compatriotas.
-- Use o banco w3schools como referência
-- Mostre a quantidade de compatriotas para cada pessoa cliente.
-- Monte uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Nome" e exibir o nome de contato da pessoa cliente.
-- A segunda deve possuir o alias "País" e exibir o nome do país em que a pessoa reside.
-- A terceira deve possuir o alias "Número de compatriotas" e exibir o número de pessoas que moram no mesmo país.
-- Os resultados devem estar ordenados pelo nome de contato da pessoa cliente em ordem alfabética.
SELECT 
C.ContactName AS "Nome",
C.Country as "País",
COUNT(C.CustomerID) as "Número de compatriotas"
FROM w3schools.customers AS C, w3schools.customers AS C2
WHERE
C.COUNTRY = C2.COUNTRY AND
C.CustomerID <> C2.CustomerID
GROUP BY
C.CustomerID
