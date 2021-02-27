DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
	DECLARE retorno INT;
	SELECT
		COUNT(E.EMAIL)    
	FROM hr.employees E
	JOIN hr.job_history H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
	WHERE E.EMAIL = email
	GROUP BY E.EMAIL
    INTO retorno;
    RETURN retorno;
END$$