USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(20))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE count_jobs INT;
    SELECT COUNT(J.JOB_ID) FROM hr.job_history J
    INNER JOIN hr.employees E
    ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
    WHERE E.EMAIL LIKE EMAIL INTO count_jobs;
    RETURN count_jobs;
END $$

DELIMITER ;
