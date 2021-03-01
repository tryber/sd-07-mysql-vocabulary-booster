USE hr

DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(this_month INT, this_year INT)
    RETURNS INT READS SQL DATA
BEGIN
    DECLARE total INT;
    SELECT COUNT(*)
    FROM employees
    WHERE
        MONTH(hire_date) = this_month AND
        YEAR(hire_date) = this_year
    INTO total;
    RETURN total;
END $$
DELIMITER ;
