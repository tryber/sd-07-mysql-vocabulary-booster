USE hr;
DELIMITER $$
CREATE FUNCTION  buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(200))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE empregos INT;
    SELECT COUNT(E.EMPLOYEE_ID) FROM hr.job_history AS J
    INNER JOIN hr.employees AS E ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
    WHERE E.EMAIL = email INTO empregos;
	RETURN empregos;
END $$
DELIMITER ;
