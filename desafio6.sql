SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
j.job_title AS 'Cargo',
jh.start_date AS 'Data de início do cargo',
d.department_name AS 'Departamento'
FROM job_history jh
INNER JOIN employees e
ON e.employee_id=jh.employee_id
INNER JOIN jobs j
ON jh.job_id=j.job_id
INNER JOIN departments d
ON jh.department_id=d.department_id
ORDER BY CONCAT(e.first_name, ' ', e.last_name) DESC, j.job_title;
