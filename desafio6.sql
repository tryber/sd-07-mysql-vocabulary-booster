SELECT concat(employees.first_name, " ",employees.last_name) AS `Nome completo`, 
job.job_title AS 'Cargo',
job_history.start_date AS `Data de início do cargo`,
departments.department_name AS `Departamento`
FROM hr.jobs AS job 
INNER JOIN hr.employees AS employees ON job.job_id = employees.job_id
INNER JOIN hr.departments AS departments ON departments.department_id = employees.department_id
INNER JOIN hr.job_history AS job_history ON job_history.job_id = employees.job_id
GROUP BY `Nome completo`
ORDER BY `Nome completo` DESC, `Cargo`;
