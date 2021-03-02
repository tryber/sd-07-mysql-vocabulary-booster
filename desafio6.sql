SELECT concat(employees.first_name, " ",employees.last_name) AS `Nome completo`, 
job.job_title AS `Cargo`,
job_history.start_date AS `Data de início do cargo`,
departments.department_name AS `Departamento`
FROM hr.job_history AS job_history 
INNER JOIN hr.employees AS employees  ON job_history.job_id = employees.job_id
INNER JOIN hr.jobs AS job ON job_history.job_id = job.job_id
INNER JOIN hr.departments AS departments ON job_history.department_id = departments.department_id 
ORDER BY `Nome completo` DESC, `Cargo`;
