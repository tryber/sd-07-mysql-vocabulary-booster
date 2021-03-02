USE hr;
DELIMITER $$

CREATE FUNCTION 
buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE resultado INT;
    SELECT COUNT(*)
    FROM job_history j
    INNER JOIN employees e
	ON j.employee_id=e.employee_id
	WHERE e.email=email
    GROUP BY email INTO resultado;
    RETURN resultado;
END $$;

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
