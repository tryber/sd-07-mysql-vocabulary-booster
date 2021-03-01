-- Desafio 14
-- Exiba os 05 primeiros países distintos dentre as pessoas consumidoras e as empresas fornecedoras, em ordem alfabética.
-- Use o banco w3schools como referência
-- Monte uma query que exiba 01 coluna com o alias "País" contendo o nome do país.

SELECT Country AS 'País' FROM w3schools.customers
UNION
SELECT Country FROM w3schools.suppliers
ORDER BY `País` LIMIT 5;
