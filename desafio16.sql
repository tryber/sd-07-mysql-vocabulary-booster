USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario (email VARCHAR(300))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) AS total_empregos
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jh
ON emp.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE emp.EMAIL = @email INTO total;
RETURN total;
END $$

DELIMITER ;
