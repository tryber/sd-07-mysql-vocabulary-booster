SELECT t1.country_name AS `País`, (IF(t2.region_name = "Europe", "incluído", "não incluído")) AS `Status Inclusão`
FROM hr.countries as t1
INNER JOIN hr.regions as t2
ON t1.region_id = t2.region_id
ORDER BY `País`;
