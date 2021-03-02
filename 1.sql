<<<<<<< HEAD
-- Desafio 01

=======
>>>>>>> 06e8155d7e289a956d6ee5609bb8aa80a84bb84f
SELECT COUNTRY_NAME AS 'País',
IF (REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries
ORDER BY País;