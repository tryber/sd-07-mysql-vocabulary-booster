USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(
email_funcionario VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_empregos INT;
SELECT
COUNT(j.employee_id) INTO quantidade_empregos
FROM hr.employees e
LEFT JOIN hr.job_history j ON e.employee_id = j.employee_id
WHERE e.email = email_funcionario;
RETURN quantidade_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
