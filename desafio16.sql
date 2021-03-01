USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(
IN email_funcionario VARCHAR(50),
OUT quantidade_empregos DOUBLE)
BEGIN
SELECT
COUNT(j.employee_id) INTO quantidade_empregos
FROM hr.employees e
LEFT JOIN hr.job_history j ON e.employee_id = j.employee_id
WHERE e.email = email_funcionario;
END $$

DELIMITER ;


CALL buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR', @quantidade_empregos);
SELECT @quantidade_empregos;
