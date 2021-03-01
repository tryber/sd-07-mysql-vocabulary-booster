select
concat(em.FIRST_NAME, " ", em.LAST_NAME) as "Nome completo",
jo.JOB_TITLE as "Cargo",
jb.START_DATE as "Data de início do cargo",
de.DEPARTMENT_NAME as "Departamento"
from hr.job_history as jb
inner join hr.employees as em
on jb.EMPLOYEE_ID = em.EMPLOYEE_ID
inner join hr.jobs as jo
on jb.JOB_ID = jo.JOB_ID
inner join hr.departments as de
on jb.DEPARTMENT_ID = de.DEPARTMENT_ID
order by concat(em.FIRST_NAME, " ", em.LAST_NAME) desc, jo.JOB_TITLE;
