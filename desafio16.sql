USE hr; 
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(param_email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qty_jobs INT;
    SELECT COUNT(*)
    FROM hr.employees e
    INNER JOIN hr.job_history h ON e.EMPLOYEE_ID = h.EMPLOYEE_ID
    WHERE e.EMAIL like CONCAT('%', param_email, '%') INTO qty_jobs;
    RETURN qty_jobs;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
