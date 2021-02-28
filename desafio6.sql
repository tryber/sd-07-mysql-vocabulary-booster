SELECT CONCAT(E.first_name,' ',E.last_name) AS 'Nome completo',
job_title AS Cargo,
start_date AS 'Data de início do cargo',
department_name AS 'Departamento'
FROM hr.employees AS E
INNER JOIN hr.job_history AS H ON H.employee_id = E.employee_id
INNER JOIN hr.departments AS D ON D.department_id = H.department_id
INNER JOIN hr.jobs AS J ON H.job_id = J.job_id
ORDER BY CONCAT(E.first_name,' ',E.last_name) DESC, Cargo ASC;
