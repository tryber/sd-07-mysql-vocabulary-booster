SELECT c.country_name 'País',
IF(r.region_name='Europe', 'incluído', 'não incluído') 'Status Inclusão'
FROM countries c
JOIN regions r
ON c.region_id = r.region_id
ORDER BY c.country_name;
