SELECT COUNTRY_NAME as País,
IF (REGION_ID = 1, 'incluído','não incluído')
FROM countries;
