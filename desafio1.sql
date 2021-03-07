SELECT hr.countries.COUNTRY_NAME AS País, hr.countries.REGION_ID, hr.regions.REGION_NAME, if(hr.regions.REGION_NAME = "Europe", "incluído", "não incluído") AS "Status Inclusão"
FROM hr.countries
INNER JOIN hr.regions
ON hr.countries.REGION_ID = hr.regions.REGION_ID;
