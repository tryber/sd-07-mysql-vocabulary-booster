SELECT COUNTRY_NAME AS Pais, IF(REGION_ID = 1, 'incluído', 'não incluído') AS Status_Inclusão
FROM hr.countries
ORDER BY COUNTRY_NAME;
