USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailParam VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE email_return INT;
SELECT COUNT(H.EMPLOYEE_ID) FROM hr.employees AS FUNC
INNER JOIN hr.job_history AS H
WHERE FUNC.EMPLOYEE_ID = H.EMPLOYEE_ID
AND FUNC.EMAIL = emailParam INTO email_return;
RETURN email_return;
END $$
DELIMITER ;
