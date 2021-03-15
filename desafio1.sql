SELECT hrc.COUNTRY_NAME AS País, 
IF(hrr.REGION_NAME = 'Europe', 'incluído', 'não incluído') AS 'Status Inclusão'
FROM hr.countries hrc
INNER JOIN hr.regions hrr ON hrr.REGION_ID = hrc.REGION_ID
