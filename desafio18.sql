SELECT
CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) 'Nome completo',
DATE_FORMAT(job_h.START_DATE, CONCAT('%d%/%m%/', YEAR(job_h.START_DATE))) 'Data de início',
DATE_FORMAT(job_h.END_DATE, CONCAT('%d%/%m%/', YEAR(job_h.END_DATE))) 'Data de recisão',
ROUND(DATEDIFF(job_h.END_DATE, job_h.START_DATE) / 365, 2) 'Anos trabalhados'
FROM hr.job_history job_h
INNER JOIN hr.employees emp
ON job_h.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
