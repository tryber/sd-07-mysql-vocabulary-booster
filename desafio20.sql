USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'Nome completo',
D.DEPARTMENT_NAME AS Departamento,
J.JOB_TITLE AS Cargo
FROM hr.job_history AS JH
INNER JOIN hr.employees AS E
ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
INNER JOIN hr.departments AS D
ON JH.DEPARTMENT_ID = D.DEPARTMENT_ID
INNER JOIN hr.jobs AS J
ON JH.JOB_ID = J.JOB_ID
WHERE E.EMAIL = email
ORDER BY Departamento, Cargo;
END $$

DELIMITER ;
