SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo', j.job_title AS Cargo, jh.start_date AS 'Data de início do cargo', d.department_name AS Departamento FROM hr.employees AS e RIGHT JOIN hr.job_history AS jh ON e.employee_ID = jh.employee_ID LEFT JOIN hr.jobs AS j ON jh.job_ID = j.job_ID LEFT JOIN hr.departments AS d ON d.department_ID = jh.department_ID WHERE j.job_title IS NOT NULL ORDER BY `Nome completo` DESC, Cargo;
-- começa filtrando pela tabela job_history, pois possui menos linhas, lembra de tirar o NULL
-- referência: Matheus Beaumord
