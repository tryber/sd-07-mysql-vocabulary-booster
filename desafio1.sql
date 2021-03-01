SELECT COUNTRY_NAME	AS País,
IF(r.region_name = "europe", "incluído", "não incluído") AS "Status Inclusão"
FROM hr.countries c
INNER JOIN hr.regions r ON r.region_id = c.region_id
ORDER BY COUNTRY_NAME;
