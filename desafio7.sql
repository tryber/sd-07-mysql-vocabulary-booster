SELECT UPPER(CONCAT(e.first_name, " ", e.last_name)) AS "Nome completo",
h.start_date AS "Data de início", e.salary AS "Salário" FROM hr.job_history AS h
JOIN hr.employees AS e ON e.employee_id = h.employee_id
WHERE MONTH(start_date) IN (1, 2, 3)
ORDER BY UPPER(CONCAT(e.first_name, " ", e.last_name)), h.start_date;
