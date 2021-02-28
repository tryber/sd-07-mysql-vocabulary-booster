SELECT country_name País, if(REGION_NAME='Europe', 'incluído', 'não incluído') `Status Inclusão`
FROM hr.countries c, hr.regions r
WHERE c.REGION_ID=r.REGION_ID
ORDER BY REGION_NAME;
