-- **********
-- Desafio 14 - Exiba os 05 primeiros países distintos dentre as pessoas consumidoras e as empresas fornecedoras, em ordem alfabética.
-- **********
-- Use o banco w3schools como referência
-- Monte uma query que exiba 01 coluna com o alias "País" contendo o nome do país.
-- customers.Country AS "País"
-- suppliers.Country
-- Monte uma query que exiba 01 coluna com o alias "País" contendo o nome do país.
(SELECT DISTINCT customers.Country AS "País"
FROM customers
ORDER BY customers.Country
LIMIT 4)
UNION
(SELECT DISTINCT suppliers.Country AS "País"
FROM suppliers
ORDER BY suppliers.Country
LIMIT 1) ORDER BY País;
