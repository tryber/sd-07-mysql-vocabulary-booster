USE hr

DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(Email CHAR(50))
    RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantity INT;
    SELECT COUNT(*)
    FROM job_history AS t1
        INNER JOIN employees AS t2 ON t1.employee_id = t2.employee_id
    WHERE t2.email = Email
    INTO quantity;
    RETURN quantity;
END $$
DELIMITER ;
