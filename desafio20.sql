USE hr;
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT 
CONCAT(t1.FIRST_NAME, ' ', t1.LAST_NAME) AS `Nome completo`,
t2.DEPARTMENT_NAME AS Departamento,
t3.JOB_TITLE AS Cargo
FROM
hr.employees AS t1
INNER JOIN
hr.job_history AS t4 ON t1.EMPLOYEE_ID = t4.EMPLOYEE_ID
INNER JOIN
hr.departments AS t2 ON t4.DEPARTMENT_ID = t2.DEPARTMENT_ID
INNER JOIN
hr.jobs AS t3 ON t4.JOB_ID = t3.JOB_ID
WHERE
t1.EMAIL = email
ORDER BY Departamento ASC , Cargo ASC;
END $$
DELIMITER ;
