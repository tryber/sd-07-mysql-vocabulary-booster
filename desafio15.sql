USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(in cargo varchar(127))
BEGIN
SELECT round(avg(he.salary), 2) as "Média salarial"
from hr.employees as he
inner join hr.jobs as hj
on cargo = hj.JOB_TITLE and he.JOB_ID = hj.JOB_ID;
END $$

DELIMITER ;
