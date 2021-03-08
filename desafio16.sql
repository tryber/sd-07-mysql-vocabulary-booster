USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_empregos INT;
SELECT COUNT(H.EMPLOYEE_ID) FROM hr.job_history AS H INNER JOIN hr.employees AS E ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
WHERE E.EMAIL=email INTO quantidade_empregos;
RETURN quantidade_empregos;
END $$

DELIMITER ;
