SELECT concat(em.FIRST_NAME, ' ', em.LAST_NAME) as 'Nome completo',
js.JOB_TITLE as 'Cargo',
jh.START_DATE as 'Data de início do cargo',
dp.DEPARTMENT_NAME as 'Departamento'
FROM hr.employees as em
inner join hr.job_history as jh
on jh.EMPLOYEE_ID = em.EMPLOYEE_ID
inner join hr.jobs as js
on js.JOB_ID = jh.JOB_ID
inner join hr.departments as dp
on dp.DEPARTMENT_ID = em.DEPARTMENT_ID
order by `Nome completo` desc, `Cargo`;
