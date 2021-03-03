SELECT co.COUNTRY_NAME AS `País`,
	CASE
		WHEN re.REGION_NAME = 'Europe' THEN 'incluído'
		ELSE 'não incluído'
	END AS `Status Inclusão`
FROM hr.countries AS co
INNER JOIN regions AS re
ON co.REGION_ID = re.REGION_ID
ORDER BY `País`;
