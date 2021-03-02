USE hr;

DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(month INT, year INT)
RETURNS INT READS SQL DATA
BEGIN
  DECLARE hired_count INT;
  SELECT
    COUNT(*)
  FROM
    hr.employees
  WHERE
    MONTH(HIRE_DATE) = month
    AND YEAR(HIRE_DATE) = year
  INTO hired_count;
  RETURN hired_count;
END $$

DELIMITER ;