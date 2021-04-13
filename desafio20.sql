USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT
CONCAT(e.first_name, ' ', e.last_name) AS 'Nome completo',
d.department_name AS 'Departamento',
j.job_title AS 'Cargo'
FROM hr.job_history jh
JOIN hr.employees e
ON jh.employee_id = e.employee_id
JOIN hr.departments d
ON jh.department_id = d.department_id
JOIN hr.jobs j
ON jh.job_id = j.job_id
WHERE e.email = 'NKOCHHAR'
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
