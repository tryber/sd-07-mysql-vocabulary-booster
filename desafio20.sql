USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
j.JOB_TITLE AS 'Cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS e
INNER JOIN hr.job_history AS h ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN hr.jobs AS j ON j.JOB_ID = h.JOB_ID
INNER JOIN hr.departments AS d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
WHERE email = e.EMAIL
ORDER BY `Departamento`, `Cargo`;
END $$
DELIMITER;
