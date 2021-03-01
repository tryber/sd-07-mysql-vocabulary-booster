DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE quantity INT;
	SELECT COUNT(e.EMPLOYEE_ID) FROM hr.employees AS e
	INNER JOIN hr.job_history AS jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
	WHERE e.EMAIL = email
    INTO quantity;
    RETURN quantity;
END $$

DELIMITER ;
