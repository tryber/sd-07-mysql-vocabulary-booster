use hr;
delimiter $$

create procedure buscar_media_por_cargo(in cargo varchar(35))
begin
select round(avg(SALARY), 2) as "Média salarial"
from hr.employees where JOB_ID = (select JOB_ID
from hr.jobs where JOB_TITLE = cargo);
end $$buscar_media_por_cargo

delimiter ;
