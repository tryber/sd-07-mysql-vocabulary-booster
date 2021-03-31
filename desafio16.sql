USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(150))
RETURNS INT READS SQL DATA
BEGIN
DECLARE numero_de_empregos INT;
SELECT COUNT(*)
FROM hr.job_history jh
INNER JOIN hr.employees e
ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE email = e.EMAIL INTO numero_de_empregos;
RETURN numero_de_empregos;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
