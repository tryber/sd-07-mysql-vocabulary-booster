USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) `Nome completo`,
D.DEPARTMENT_NAME Departamento,
J.JOB_TITLE Cargo
FROM hr.job_history JH, hr.employees E, hr.departments D, hr.jobs J
WHERE E.EMAIL=email AND JH.EMPLOYEE_ID=E.EMPLOYEE_ID AND J.JOB_ID=JH.JOB_ID AND JH.DEPARTMENT_ID=D.DEPARTMENT_ID
ORDER BY Departamento, Cargo;
END $$

DELIMITER ;
