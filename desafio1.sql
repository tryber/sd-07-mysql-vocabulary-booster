SELECT countries.COUNTRY_NAME, IF (regions.REGION_ID  = 1, 'incluído', 'não incluído') FROM hr.regions  aASs regions INNER JOIN hr.countries AS countries
ON regions.REGION_ID = countries.REGION_ID;
