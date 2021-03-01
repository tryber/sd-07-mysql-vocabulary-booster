USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(MM INT, YY INT)
RETURNS INT READS SQL DATA
BEGIN
	DECLARE totalHired INT;
    SELECT COUNT(*)
    FROM hr.employees
    WHERE mm = MONTH(hire_date) AND yy = YEAR(hire_date)
    INTO totalHired;
    RETURN totalHired;
END $$

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
