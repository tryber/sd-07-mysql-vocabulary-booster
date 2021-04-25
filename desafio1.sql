SELECT
    C.COUNTRY_NAME AS `País`,
    IF(R.REGION_NAME="Europe", "incluído", "não incluído") AS `Status Inclusão`
FROM hr.countries AS C
INNER JOIN hr.regions AS R
WHERE R.REGION_ID = C.REGION_ID
ORDER BY `País`;
