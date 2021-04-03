USE hr;

DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(150))
RETURNS INT READS SQL DATA

BEGIN
DECLARE numberHistory INT; 
SELECT COUNT(*) FROM employees emp
RIGHT JOIN job_history job
ON job.EMPLOYEE_ID = emp.EMPLOYEE_ID
WHERE emp.EMAIL = email
GROUP BY job.EMPLOYEE_ID INTO numberHistory;
RETURN numberHistory;
END $$

DELIMITER ;
