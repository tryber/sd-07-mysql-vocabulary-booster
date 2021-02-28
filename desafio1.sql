SELECT countries.country_name AS "País", (IF (countries.region_id = 1, 'incluído', 'não incluído')) AS "Status Inclusão"
FROM countries
ORDER BY countries.country_name;
