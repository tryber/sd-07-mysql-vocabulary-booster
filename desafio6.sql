SELECT
CONCAT(first_name, ' ', last_name) AS 'Nome completo',
j.job_title AS 'Cargo',
e.hire_date AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM hr.employees e
JOIN hr.jobs j
ON e.job_id = j.job_id
JOIN hr.departments d
ON e.department_id = d.department_id
ORDER BY CONCAT(first_name, ' ', last_name) DESC, j.job_title DESC;
