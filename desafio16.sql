USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(InEmail VARCHAR(1000))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(his.EMPLOYEE_ID) FROM hr.job_history AS his	
INNER JOIN hr.employees AS emp
ON emp.EMPLOYEE_ID = his.EMPLOYEE_ID
WHERE emp.EMAIL = InEmail
GROUP BY his.EMPLOYEE_ID
INTO total;
RETURN total;
END $$

DELIMITER;