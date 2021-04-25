USE hr
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(emailInserido VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_empregos INT;
SELECT COUNT(jh.employee_id)
FROM hr.job_history AS jh
INNER JOIN hr.employees AS e
ON jh.employee_id = e.employee_id
WHERE e.email = emailInserido
GROUP BY jh.employee_id
INTO total_empregos;
RETURN total_empregos;
END $$

DELIMITER ;
