USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_parameter VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total VARCHAR(100);
SELECT COUNT(*) AS total_empregos 
FROM hr.employees AS e 
INNER JOIN hr.job_history AS j
ON j.employee_id = e.employee_id
WHERE e.email = 'NKOCHHAR'
INTO total;
RETURN total;
END $$
DELIMITER ;
