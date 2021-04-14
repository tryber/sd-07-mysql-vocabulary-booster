USE hr; 
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(param_mes INT, param_ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE qty_hired INT;
    SELECT COUNT(*) FROM hr.employees e
    WHERE MONTH(e.HIRE_DATE) = param_mes 
    AND YEAR(e.HIRE_DATE) = param_ano INTO qty_hired;
    RETURN qty_hired;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
