SELECT c.country_name as 'País',
  CASE
    WHEN r.region_name like 'Europe' THEN 'incluído'
    ELSE 'não incluído'
  END AS 'Status Inclusão'
FROM countries c
  INNER JOIN regions r ON c.region_id = r.region_id
ORDER BY c.country_name;
