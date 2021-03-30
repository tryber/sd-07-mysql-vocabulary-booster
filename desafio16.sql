USE hr;

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE resultado INT;
SELECT
COUNT(h.EMPLOYEE_ID)
FROM hr.job_history AS h
INNER JOIN
hr.employees AS e
ON
e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE
e.EMAIL = email
INTO resultado;
RETURN resultado;
END $$
DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('JWHALEN');
