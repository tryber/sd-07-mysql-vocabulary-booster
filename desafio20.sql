USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_func VARCHAR(100))
BEGIN
DECLARE id_funcionario INT;
SELECT EMPLOYEE_ID FROM hr.employees WHERE hr.employees.EMAIL = email_func INTO id_funcionario;
SELECT CONCAT(t2.FIRST_NAME, ' ', t2.LAST_NAME) AS 'Nome completo',
t3.DEPARTMENT_NAME AS 'Departamento',
t4.JOB_TITLE AS 'Cargo'
FROM hr.job_history AS t1
INNER JOIN hr.employees AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
INNER JOIN hr.departments AS t3
ON t1.DEPARTMENT_ID = t3.DEPARTMENT_ID
INNER JOIN hr.jobs AS t4
ON t1.JOB_ID = t4.JOB_ID
WHERE t1.EMPLOYEE_ID = id_funcionario
ORDER BY 2, 3;
END $$
DELIMITER $$
