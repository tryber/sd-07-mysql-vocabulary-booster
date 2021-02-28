SELECT COUNTRY_NAME AS País, if(REGION_NAME='Europe', 'incluído', 'não incluído') AS `Status Inclusão`
FROM hr.countries c INNER JOIN hr.regions r
ON c.REGION_ID=r.REGION_ID
ORDER BY REGION_NAME;
