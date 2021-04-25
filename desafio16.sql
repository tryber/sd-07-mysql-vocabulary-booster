USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobs INT;
    SELECT COUNT(h.JOB_ID)
    FROM job_history h, employees e
    WHERE e.EMAIL = email
    AND e.EMPLOYEE_ID = h.EMPLOYEE_ID
    GROUP BY h.EMPLOYEE_ID
    INTO jobs;
    RETURN jobs;
END $$

DELIMITER ;
