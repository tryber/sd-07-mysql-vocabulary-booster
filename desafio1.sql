SELECT c.COUNTRY_NAME 'País',
CASE 
	WHEN r.REGION_NAME like 'Europe' THEN "incluído"
	ELSE "não incluído"
	END AS "Status Inclusão"
FROM hr.countries c
LEFT JOIN hr.regions r
ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
