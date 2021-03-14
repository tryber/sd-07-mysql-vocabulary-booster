SELECT 
CONCAT(employee.first_name, ' ', employee.last_name) AS 'Nome Completo',
job.job_title As 'Cargo',
histo.start_date AS 'Data de início do cargo',
department.department_name AS 'Departamento'
FROM hr.employees AS employee
INNER JOIN hr.jobs AS job ON employee.job_id = job.job_id
INNER JOIN hr.departments AS department ON employee.department_id = department.department_id
INNER JOIN hr.job_history AS histo ON employee.employee_id = histo.employee_id
ORDER BY 'Nome completo' DESC, Cargo;
