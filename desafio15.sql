USE hr
DELIMITER $$ 
CREATE PROCEDURE buscar_media_por_cargo(IN IT_PROG VARCHAR(100))
  BEGIN
  SELECT 
    ROUND(AVG(E.SALARY), 2) AS 'Média salarial'
  FROM
    hr.employees AS E
  INNER JOIN
    jobs AS J
      ON E.JOB_ID = J.JOB_ID
  WHERE J.JOB_TITLE = IT_PROG;
  END;
$$ DELIMITER ;
