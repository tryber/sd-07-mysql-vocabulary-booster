use hr;
DELIMITER $$
CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes int, ano int)
RETURNS INT READS SQL DATA
BEGIN
DECLARE QTT INT;
select
count(*)
from hr.employees
where
month(HIRE_DATE) = mes
and
year(HIRE_DATE) = ano INTO QTT;
RETURN QTT;
END $$
DELIMITER ;
