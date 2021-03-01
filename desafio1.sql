-- Crie uma query que mostre se o país pertence ou não à região "Europe".
-- Use o banco hr como referência
-- Seu relatório deve apresentar 02 colunas:
-- A primeira deve possuir o alias "País" e exibir o nome do país.
-- A segunda deve possuir o alias "Status Inclusão" e deve exibir "incluído" 
-- se o país em questão está incluso em "Europe", ou "não incluído", caso contrário.
-- Os resultados devem estar ordenados pelo nome do país em ordem alfabética.
SELECT 	H.COUNTRY_NAME as "País", IF (R.REGION_NAME = "Europe", "incluído", "não incluído") as "Status Inclusão"
FROM 	hr.countries AS H 
INNER JOIN hr.regions AS R ON H.REGION_ID = R.REGION_ID
ORDER BY H.COUNTRY_NAME;
