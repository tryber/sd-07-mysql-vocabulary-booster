SELECT COUNTRY_NAME AS País, IF (REGION_ID = 1, 'incluído', 'não incluído') AS 'Status Inclusão'
from hr.countries
ORDER BY País;
