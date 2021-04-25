-- desafio 14
-- Exiba os 05 primeiros países distintos dentre as pessoas consumidoras e as empresas fornecedoras, em ordem alfabética.
-- Use o banco w3schools como referência
-- Monte uma query que exiba 01 coluna com o alias "País" contendo o nome do país.
SELECT DISTINCT C.Country
FROM w3schools.customers C
LEFT JOIN w3schools.suppliers S ON C.Country = S.Country
WHERE
S.Country IS NULL
UNION ALL
SELECT DISTINCT S.Country
FROM w3schools.suppliers S
LEFT JOIN w3schools.customers C ON C.Country = S.Country
WHERE
C.Country IS NULL
ORDER BY
1
LIMIT 5;
