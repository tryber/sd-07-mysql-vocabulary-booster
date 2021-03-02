USE hr;
DELIMITER $$
create procedure buscar_media_por_cargo ( IN cargo varchar(20))
begin

select
ROUND (avg(employees.SALARY),2) AS 'Média salarial'
from hr.employees as employees
INNER JOIN hr.jobs as jobs
on jobs.JOB_ID = employees.JOB_ID
where jobs.JOB_TITLE = cargo;

end $$
DELIMITER ;