SELECT
	CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
	DATE_FORMAT(JH.START_DATE, '%D/%M/%Y') AS 'Data de início',
    DATE_FORMAT(JH.END_DATE, '%D/%M/%Y') AS 'Data de rescisão',
    ROUND(DATEDIFF(JH.END_DATE, JH.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM
	hr.employees E,
    hr.job_history JH
WHERE
	E.EMPLOYEE_ID = JH.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;