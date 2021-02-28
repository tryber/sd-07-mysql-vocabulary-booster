SELECT country_name País, if(REGION_NAME='Europe', 'incluído', 'não incluído') `Status Inclusão`
FROM countries c, regions r
WHERE c.REGION_ID=r.REGION_ID
ORDER BY REGION_NAME;
