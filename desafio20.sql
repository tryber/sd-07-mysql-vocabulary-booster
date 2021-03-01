USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN param_email VARCHAR(25))
BEGIN
    SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
    d.DEPARTMENT_NAME AS 'Departamento',
    j.JOB_TITLE AS 'Cargo'
    FROM hr.employees e
    INNER JOIN hr.job_history h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
    INNER JOIN hr.departments d ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
    INNER JOIN hr.jobs j ON h.JOB_ID = j.JOB_ID
    WHERE e.EMAIL like CONCAT('%', param_email, '%')
    ORDER BY d.DEPARTMENT_NAME, j.JOB_TITLE;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
