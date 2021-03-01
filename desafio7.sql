SELECT UCASE(CONCAT(e.first_name, ' ', e.last_name)) AS 'Nome completo',
	j.start_date AS 'Data de início',
	e.salary AS 'Salário'
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(j.START_DATE) IN(1, 2, 3)
ORDER BY 1, 2