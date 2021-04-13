USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE historic INT;
SELECT COUNT(jh.employee_id)
FROM hr.job_history AS jh
JOIN hr.employees AS e ON jh.employee_id = e.employee_id
AND e.email = employeeEmail
    INTO historic;
RETURN historic;
END $$

DELIMITER ;
