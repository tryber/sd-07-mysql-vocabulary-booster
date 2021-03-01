select countries.COUNTRY_NAME, if (regions.REGION_ID  = 1, 'incluído', 'não incluído') from hr.regions  as regions INNER JOIN hr.countries as countries
on regions.REGION_ID = countries.REGION_ID;
