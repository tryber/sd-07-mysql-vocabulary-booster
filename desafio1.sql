SELECT c.country_name 'País',
IF(r.region_name='Europe', 'incluído', 'não incluído') 'Status Inclusão'
FROM hr.countries c
JOIN hr.regions r
ON c.region_id = r.region_id
ORDER BY c.country_name;
