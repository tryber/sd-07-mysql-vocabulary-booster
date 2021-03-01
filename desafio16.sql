USE hr; 
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_param VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT COUNT(*) AS `total_empregos`
FROM job_history AS `h`
INNER JOIN employees AS `e`
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email_param
INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$

DELIMITER ;
