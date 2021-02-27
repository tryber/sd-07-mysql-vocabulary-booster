SELECT country.COUNTRY_NAME AS País, if(region.REGION_NAME = 'Europe' , 'Europe' , 'não incluído') as `Status Inclusão`  FROM hr.countries AS country 
INNER JOIN hr.regions AS region
ON country.REGION_ID = region.REGION_ID
ORDER BY country.COUNTRY_NAME;
