USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VANCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*)
FROM hr.job_history jh
JOIN hr.employees e
ON jh.employee_id = e.employee_id
WHERE e.email = 'NKOCHHAR'
INTO quantity;
RETURN quantity;
END $$

DELIMITER;
