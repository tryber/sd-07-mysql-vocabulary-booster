SELECT co.COUNTRY_NAME AS 'País',
IF (re.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS co
INNER JOIN hr.regions AS re
ON re.REGION_ID = co.REGION_ID
ORDER BY 'País';
