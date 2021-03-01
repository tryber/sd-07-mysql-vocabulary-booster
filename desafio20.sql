USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT CONCAT(empl.FIRST_NAME, ' ', empl.LAST_NAME) AS 'Nome completo',
depa.DEPARTMENT_NAME AS 'Departamento',
jobs.JOB_TITLE AS 'Cargo'
FROM hr.job_history AS hist
INNER JOIN hr.employees AS empl ON empl.EMPLOYEE_ID = hist.EMPLOYEE_ID
INNER JOIN hr.departments AS depa ON depa.DEPARTMENT_ID = hist.DEPARTMENT_ID
INNER JOIN hr.jobs AS jobs ON jobs.JOB_ID = hist.JOB_ID
WHERE empl.EMAIL = email
ORDER BY Departamento, Cargo;
END $$
DELIMITER;
