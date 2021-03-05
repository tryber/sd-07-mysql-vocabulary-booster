SELECT ctr.country_name AS 'País',
  IF (rgn.region_name = 'Europe', 'incluído', 'não incluído')
  AS 'Status Inclusão' FROM hr.countries AS ctr
  INNER JOIN hr.regions AS rgn ON ctr.region_id = rgn.region_id
  ORDER BY ctr.country_name ASC;
