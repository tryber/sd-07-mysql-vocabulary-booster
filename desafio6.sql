SELECT concat(tabName.first_name, ' ',  tabName.last_name) AS 'Nome completo',
tabJob.job_title AS 'Cargo',
tabStart.start_date AS 'Data de início do cargo',
tabDep.department_name AS 'Departamento'
FROM hr.job_history as tabStart
INNER JOIN hr.employees as tabName
ON tabStart.EMPLOYEE_ID = tabName.EMPLOYEE_ID
INNER JOIN hr.jobs as tabJob
ON tabStart.job_id = tabJob.job_id
INNER JOIN hr.departments as tabDep
ON tabStart.department_id = tabDep.department_id
ORDER BY 1 DESC, 2;
