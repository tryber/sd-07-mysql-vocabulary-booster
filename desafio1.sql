SELECT countries.COUNTRY_NAME as 'País', IF (regions.REGION_ID  = 1, 'incluído', 'não incluído') as 'Status Inclusão' FROM hr.regions  AS regions INNER JOIN hr.countries AS countries
ON regions.REGION_ID = countries.REGION_ID
ORDER BY countries.COUNTRY_NAME;
