DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email TEXT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE email_qnt INT;
SELECT COUNT(*) FROM hr.employees AS emp
INNER JOIN hr.job_history AS his
ON his.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE email = emp.EMAIL INTO email_qnt;
RETURN email_qnt;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
