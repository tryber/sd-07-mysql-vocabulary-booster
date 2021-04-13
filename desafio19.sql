USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quantidade INT;
    SELECT COUNT(HIRE_DATE)
        INTO quantidade
        FROM hr.employees 
        WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano;
    RETURN quantidade;
END $$

DELIMITER ;
