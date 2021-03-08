DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(
	email VARCHAR(50)
)
RETURNS INT READS SQL DATA
BEGIN
DECLARE jobs INT;
SELECT
COUNT(j.JOB_ID) AS `Histórico`
FROM hr.employees AS e
INNER JOIN hr.job_history AS j
ON e.EMPLOYEE_ID = j.EMPLOYEE_ID
WHERE e.EMAIL = email INTO jobs;
RETURN jobs;
END$$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR') AS total_empregos;
