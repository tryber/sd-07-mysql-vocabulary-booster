DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(NKOCHHAR VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE Qtde INT;
    SELECT
        COUNT(*)
        FROM hr.employees
        WHERE EMAIL = NKOCHHAR INTO Qtde;
        RETURN Qtde;
END;
$$
DELIMITER;
