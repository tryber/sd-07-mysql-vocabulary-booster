USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mês int, ano int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE pessoas_contratadas INT;
SELECT 
count(EMPLOYEE_ID) AS pessoas_contratadas
FROM hr.employees
where month(HIRE_DATE) = mês and year(HIRE_DATE) =  ano
into pessoas_contratadas;
return pessoas_contratadas;
END $$

DELIMITER ;
