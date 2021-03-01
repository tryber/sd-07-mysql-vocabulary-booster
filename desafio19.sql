USE hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(sMonth VARCHAR(50), sYear VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total varchar(50);
SELECT COUNT(*) AS total_pessoas_contratadas
FROM hr.employees AS E
WHERE MONTH(E.hire_date) = sMonth AND YEAR(E.hire_date) = sYear
INTO total;
RETURN total;
END $$
DELIMITER ;
