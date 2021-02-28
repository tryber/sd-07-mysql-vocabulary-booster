SELECT UPPER(CONCAT(e.first_name," ", e.last_name)) AS `Nome completo`,
	CASE
		WHEN e.job_id = h.job_id THEN h.start_date
        WHEN e.job_id != h.job_id THEN MAX(DATE_ADD(h.end_date, INTERVAL 1 DAY))
        ELSE e.hire_date
	END AS `Data de início`,
e.salary AS "Salário"
FROM hr.employees AS e
LEFT JOIN hr.job_history AS h ON e.employee_id = h.employee_id
GROUP BY e.employee_id
HAVING MONTH(`Data de início`) IN (1, 2, 3)
ORDER BY `Nome completo`, `Data de início`;
