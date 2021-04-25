USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailIn VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total INT;
SELECT COUNT(*) FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON e.employee_id = jh.employee_id
WHERE e.email = emailIn INTO total;
RETURN total;
END $$

DELIMITER ;
