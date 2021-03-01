SELECT UCASE(CONCAT((employe.FIRST_NAME),' ',employe.LAST_NAME)) AS "Nome completo",
history_job.START_DATE AS "Data de início",
employe.SALARY AS Salário
FROM hr.job_history AS history_job
INNER JOIN hr.employees AS employe
ON employe.EMPLOYEE_ID = history_job.EMPLOYEE_ID
WHERE MONTH(history_job.START_DATE) >= 1 AND MONTH(history_job.START_DATE)  <= 3;
