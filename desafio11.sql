-- Referência: Pergunta de Bruna Sepulveda no Slack --  
SELECT
CUSTOMER1.ContactName AS 'Nome',
CUSTOMER1.Country AS 'País',
COUNT(CUSTOMER2.CustomerName) AS 'Número de compatriotas'
FROM
w3schools.customers AS CUSTOMER1, w3schools.customers AS CUSTOMER2
WHERE CUSTOMER1.Country = CUSTOMER2.Country
AND CUSTOMER1.CustomerID <> CUSTOMER2.CustomerID
-- Referência: https://github.com/tryber/sd-07-mysql-vocabulary-booster/blob/ANDREHORMAN-MySQL-Vocabulary-Booster/desafio11.sql --
GROUP BY `Nome`, `País`
ORDER BY `Nome` ASC;
