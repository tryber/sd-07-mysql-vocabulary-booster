SELECT ctr.COUNTRY_NAME AS 'País',
  IF (rgn.REGION_NAME = 'Europe', 'incluído', 'não incluído')
  AS 'Status Inclusão' FROM hr.countries AS ctr
  INNER JOIN hr.regions AS rgn ON ctr.REGION_ID = rgn.REGION_ID
  ORDER BY c.COUNTRY_NAME ASC;
