SELECT C.COUNTRY_NAME AS "País", IF(R.REGION_NAME="Europe", "Incluído", "Não Incluído") AS "Status Inclusão" FROM hr.countries AS C INNER JOIN hr.regions AS R where R.REGION_ID = C.REGION_ID ORDER BY C.COUNTRY_NAME;