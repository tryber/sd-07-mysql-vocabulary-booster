USE hr
DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN emailDoFuncionario VARCHAR(100))
BEGIN
    SELECT COUNT(jobH.EMPLOYEE_ID)
    FROM hr.job_history AS jobH
    INNER JOIN hr.employees AS employees ON employees.EMPLOYEE_ID = jobH.EMPLOYEE_ID
    WHERE emailDoFuncionario = employees.EMAIL;
END $$

DELIMITER ;

CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
