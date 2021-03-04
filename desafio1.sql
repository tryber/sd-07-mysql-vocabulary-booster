SELECT 
    countries.COUNTRY_NAME AS 'Pais',
    IF(regions.REGION_ID = 1,
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries AS countries
        LEFT JOIN
    hr.regions AS regions ON regions.REGION_ID = countries.REGION_ID
ORDER BY countries.COUNTRY_NAME DESC;
