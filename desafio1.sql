SELECT coun.COUNTRY_NAME AS 'País',
IF(regi.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries AS coun
INNER JOIN hr.regions AS regi
ON coun.REGION_ID = regi.REGION_ID
ORDER BY coun.COUNTRY_NAME;