USE hr;

DELIMITER $$

CREATE PROCEDURE buscar_quantidade_de_empregos_por_funcionario(IN email VARCHAR(100))
BEGIN
SELECT COUNT(e.EMPLOYEE_ID) AS `total_empregos` FROM hr.employees AS e
INNER JOIN hr.job_history AS h ON
e.EMPLOYEE_ID = h.EMPLOYEE_ID
WHERE e.EMAIL = email
GROUP BY h.EMPLOYEE_ID;
END$$

DELIMITER ;
