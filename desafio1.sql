SELECT
uefa_countries.COUNTRY_NAME AS `País`,
IF(
uefa_regions.REGION_NAME = 'Europe',
'Incluído', 'não incluído'
) AS `Status Inclusão`
FROM
hr.countries AS uefa_countries
LEFT JOIN hr.regions AS uefa_regions
ON uefa_countries.REGION_ID = uefa_regions.REGION_ID
ORDER BY uefa_countries.COUNTRY_NAME ASC;