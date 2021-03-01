USE hr
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_employee VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT COUNT(jh.EMPLOYEE_ID)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE email = email_employee INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$

DELIMITER ;
