SELECT CONCAT(emp.first_name, ' ', emp.last_name) AS 'Nome completo',
js.job_title AS 'Cargo',
jh.start_date AS 'Data de início do cargo',
dep.department_name AS 'Departamento'
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jh ON emp.employee_id = jh.employee_id
INNER JOIN hr.jobs AS js ON jh.job_id = js.job_id
INNER JOIN hr.departments AS dep ON jh.department_id = dep.department_id
ORDER BY `Nome completo` DESC, Cargo;
