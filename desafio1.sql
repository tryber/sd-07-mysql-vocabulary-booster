USE hr;
SELECT 
COUNTRY_NAME AS País,
IF(REGION_ID = 1, 'incluído', 'Não incluído') AS 'Status Inclusão'
FROM countries;
