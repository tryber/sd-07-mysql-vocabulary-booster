SELECT country.country_name AS "Pais", region.region_name AS "Status da inclusão"
FROM hr.countries AS country
INNER JOIN hr.regions AS region
ON country.region_id = region.region_id
ORDER BY country.country_name;
