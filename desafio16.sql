USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email varchar(100))
RETURNS INT READS SQL DATA
    BEGIN
        DECLARE quantity INT;
        SELECT
            COUNT(H.EMPLOYEE_ID)
        FROM
            hr.employees AS E
        INNER JOIN hr.job_history AS H ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
        WHERE E.EMAIL = email INTO quantity;
        RETURN quantity;
    END
$$ DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario("NKOCHHAR");
