SELECT ContactName AS 'Nome',
Country AS 'País',
(
SELECT COUNT(subCus.Country)
FROM w3schools.customers AS subCus
WHERE subCus.Country = cus.Country
AND subCus.ContactName <> cus.ContactName
) AS 'Número de compatriotas'
FROM w3schools.customers AS cus
WHERE
(
SELECT COUNT(subCus2.Country)
FROM w3schools.customers AS subCus2
WHERE subCus2.Country = cus.Country
AND subCus2.ContactName <> cus.ContactName
) <> 0
ORDER BY Nome;
