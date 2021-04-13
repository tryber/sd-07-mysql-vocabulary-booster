DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_cargos INT;
SELECT count(*) 
FROM hr.job_history AS job_history
INNER JOIN hr.employees AS employe
ON employe.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE employe.EMAIL = email 
GROUP BY employe.EMPLOYEE_ID INTO total_cargos;
RETURN total_cargos;
END $$
DELIMITER ;
