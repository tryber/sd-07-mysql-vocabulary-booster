SELECT
CONCAT(first_name, ' ', last_name) AS 'Nome completo',
j.job_title AS 'Cargo',
start_date AS 'Data de ínicio do cargo',
d.department_name AS 'Departamento'
FROM hr.job_history jh
JOIN hr.jobs j
ON jh.job_id = j.job_id
JOIN hr.employees e
ON jh.employee_id = e.employee_id
JOIN hr.departments d
ON jh.department_id = d.department_id
ORDER BY `Nome completo` DESC, `Cargo`;
