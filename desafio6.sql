SELECT concat(employees.first_name, " ", employees.last_name) AS "Nome completo",
jobs.job_title AS "Cargo",
historys.start_date AS "Data de início do cargo",
departments.department_name AS "Departamento"
FROM hr.employees AS employees
INNER JOIN hr.job_history AS historys
ON employees.employee_id = historys.employee_id
INNER JOIN hr.jobs AS jobs
ON historys.job_id = jobs.job_id
INNER JOIN hr.departments AS departments
ON historys.department_id = departments.department_id
ORDER BY 1 DESC, 2;
