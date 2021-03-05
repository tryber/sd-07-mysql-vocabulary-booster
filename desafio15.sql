USE hr;
DELIMITER $$;

CREATE PROCEDURE buscar_media_por_cargo(IN job varchar(40))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM hr.employees AS t1
INNER JOIN hr.jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
WHERE t2.JOB_TITLE = job;
END $$;

DELIMITER ;
