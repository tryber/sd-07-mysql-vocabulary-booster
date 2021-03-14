SELECT CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS "Nome completo",
DATE_FORMAT(jobh.START_DATE, "%d/%m/%Y") AS "Data de início",
DATE_FORMAT(jobh.END_DATE, "%d/%m/%Y") AS "Data de rescisão",
ROUND(DATEDIFF(jobh.END_DATE, jobh.START_DATE) / 365, 2) AS "Anos trabalhados"
FROM hr.employees AS emp
INNER JOIN hr.job_history AS jobh
ON jobh.EMPLOYEE_ID = emp.EMPLOYEE_ID
ORDER BY 1,4;