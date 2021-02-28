USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE Result INT;
SELECT COUNT(*) FROM hr.employees
WHERE hr.employees.HIRE_DATE LIKE CONCAT(ano, '-', '0', mes, '%') INTO Result;
RETURN Result;
END $$

DELIMITER ;
