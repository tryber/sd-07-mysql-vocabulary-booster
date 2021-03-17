USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobNumber INT;
SELECT COUNT(hjh.EMPLOYEE_ID)
FROM hr.job_history hjh
INNER JOIN hr.employees he ON email = he.EMAIL AND he.EMPLOYEE_ID = hjh.EMPLOYEE_ID
INTO jobNumber;
RETURN jobNumber;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
