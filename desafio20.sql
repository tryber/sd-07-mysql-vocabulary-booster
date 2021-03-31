USE hr;

DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(250))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS "Nome completo",
d.DEPARTMENT_NAME AS "Departamento",
j.JOB_TITLE AS "Cargo"
FROM hr.employees e
INNER JOIN hr.job_history jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.departments d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
INNER JOIN hr.jobs j
ON jh.JOB_ID = j.JOB_ID
WHERE e.EMAIL = email
ORDER BY 3;
END $$

DELIMITER ;
