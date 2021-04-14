USE hr;
DELIMITER $$ 

CREATE PROCEDURE buscar_media_por_cargo(in job varchar(100))
BEGIN
select round(avg(e.SALARY), 2) as 'Média salarial'
from hr.employees as e
inner join hr.jobs as j on e.JOB_ID = j.JOB_ID
where job = j.JOB_TITLE
group by e.JOB_ID;
END $$

DELIMITER ;
