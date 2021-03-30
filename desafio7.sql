SELECT UCASE(CONCAT(e.first_name, " ", e.last_name)) AS "Nome completo",
j.start_date AS "Data de início", e.salary AS "Salário"
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON e.employee_id = j.employee_id
WHERE MONTH(j.start_date) IN (1,2,3)
ORDER BY 1,2;
