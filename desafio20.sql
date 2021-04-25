use hr
DELIMITER $$
CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN emailEntrada varchar(20))
begin
select
concat (emp.FIRST_NAME,' ',emp.LAST_NAME) AS 'Nome completo',
departments.DEPARTMENT_NAME AS Departamento,
jobs.JOB_TITLE as Cargo
from hr.job_history as history
left join hr.jobs as jobs
on jobs.JOB_ID = history.JOB_ID
left join hr.employees as emp
on emp.EMPLOYEE_ID = history.EMPLOYEE_ID
left join hr.departments as departments
on departments.DEPARTMENT_ID = history.DEPARTMENT_ID
where emp.EMAIL = emailEntrada
order by 2, 3;
end $$;
DELIMITER ;
