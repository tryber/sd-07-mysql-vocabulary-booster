USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email_param VARCHAR(50))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
d.DEPARTMENT_NAME AS `Departamento`,
j.JOB_TITLE AS `Cargo`
FROM employees AS `e`
INNER JOIN job_history AS `h`
ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
INNER JOIN departments AS `d`
ON d.DEPARTMENT_ID = h.DEPARTMENT_ID
INNER JOIN jobs AS `j`
ON j.JOB_ID = h.JOB_ID
WHERE e.EMAIL = email_param
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;
