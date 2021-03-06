SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo',
jobs.job_title AS 'Cargo', his.start_date AS 'Data de início do cargo',
dpt.department_name AS 'Departamento' FROM hr.employees AS emp
INNER JOIN hr.job_history AS his ON his.employee_id = emp.employee_id
INNER JOIN hr.jobs AS jobs ON his.job_id = jobs.job_id
INNER JOIN hr.departments AS dpt ON his.department_id = dpt.department_id
ORDER BY CONCAT(emp.first_name, ' ', emp.last_name) DESC, jobs.job_title ASC;
