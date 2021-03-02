SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo', j.job_title AS Cargo, e.hire_date AS 'Data de início do cargo', d.department_name AS Departamento FROM hr.employees AS e INNER JOIN hr.jobs AS j ON e.job_id = j.job_id INNER JOIN hr.departments AS d ON e.department_id = d.department_id ORDER BY `Nome Completo` DESC, j.job_title;
-- referência: Fernando Freire
