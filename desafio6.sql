SELECT 
  CONCAT(employees.first_name, ' ', employees.last_name) AS "Nome completo",
  jobs.job_title AS "Cargo",
  job_history.start_date AS "Data de início do cargo",
  departments.department_name AS "Departamento"
FROM job_history
JOIN employees
ON employees.employee_id = job_history.employee_id AND (employees.job_id <> job_history.job_id OR employees.job_id = job_history.job_id)
JOIN jobs
ON job_history.job_id = jobs.job_id
JOIN departments
ON job_history.department_id = departments.department_id
ORDER BY `Nome completo` DESC, Cargo;
