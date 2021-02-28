
SELECT CONCAT(e.first_name," ", e.last_name) AS "Nome completo",
j.job_title AS "Cargo",
CASE
WHEN e.job_id = h.job_id THEN h.start_date
WHEN e.job_id != h.job_id THEN MAX(DATE_ADD(h.end_date, INTERVAL 1 DAY))
ELSE e.hire_date
END AS "Data de início do cargo",
d.department_name AS "Departamento"
FROM hr.employees AS e
LEFT JOIN hr.jobs AS j ON e.job_id = j.job_id
LEFT JOIN hr.job_history AS h ON e.employee_id = h.employee_id
LEFT JOIN hr.departments AS d ON e.department_id = d.department_id
GROUP BY e.employee_id
ORDER BY CONCAT(e.first_name," ", e.last_name) DESC, j.job_title;
