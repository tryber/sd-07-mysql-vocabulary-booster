SELECT 
concat(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(h.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(h.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
round(DATEDIFF(h.END_DATE, h.START_DATE)/365, 2) AS 'Anos trabalhados'
FROM hr.job_history as h
left join hr.employees as emp
on emp.EMPLOYEE_ID = h.EMPLOYEE_ID
where round(DATEDIFF(h.END_DATE, h.START_DATE)/365, 2) > 0
order by 1,4;
