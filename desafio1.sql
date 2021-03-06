SELECT country_name AS 'Pais',
IF (region_id = 1, 'incluido', 'nao incluido')
AS 'Status Inclusao'
FROM hr.countries
ORDER BY country_name;
