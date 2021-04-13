USE hr;

DELIMITER //

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(
email VARCHAR(100)
)
RETURNS INT READS SQL DATA
BEGIN
DECLARE temp INT;
SELECT
COUNT(*)
FROM
hr.employees E,
hr.job_history JH
WHERE
E.EMPLOYEE_ID = JH.EMPLOYEE_ID
AND E.EMAIL = email
GROUP BY E.EMPLOYEE_ID
INTO temp;
RETURN temp;
END//
