DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantity INT;
SELECT COUNT(*) FROM hr.employees 
WHERE MONTH(HIRE_DATE) = mes AND YEAR(HIRE_DATE) = ano
INTO quantity;
RETURN quantity;
END $$

DELIMITER ;
