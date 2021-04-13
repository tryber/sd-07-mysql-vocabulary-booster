USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(e.EMPLOYEE_ID)
INTO quantity
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON j.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email;
RETURN quantity;
END $$

DELIMITER ;
