SELECT country.country_name, region.region_name
FROM hr.countries AS country
INNER JOIN hr.regions AS region
ON country.region_id = region.region_id;
