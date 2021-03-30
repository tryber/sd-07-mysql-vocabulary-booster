SELECT 
(SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) FROM hr.employees WHERE EMPLOYEE_ID = jh.EMPLOYEE_ID) 'Nome completo', 
CONCAT(IF(CHAR_LENGTH(day(START_DATE)) = 1,CONCAT(0,day(START_DATE)),day(START_DATE)),'/',IF(CHAR_LENGTH(month(START_DATE)) = 1,CONCAT(0,month(START_DATE)),month(START_DATE)),'/',year(START_DATE)) 'Data de início',
CONCAT(day(END_DATE),'/',IF(CHAR_LENGTH(month(END_DATE)) = 1,CONCAT(0,month(END_DATE)),month(END_DATE)),'/',year(END_DATE)) 'Data de rescisão',
ROUND((DATEDIFF(END_DATE,START_DATE)/365),2) 'Anos trabalhados'
FROM hr.job_history AS jh
HAVING `Data de início` <> '00/00/0'
ORDER BY `Nome completo`, `Anos trabalhados`;
