SELECT CONCAT(UCASE( emp.first_name), ' ', UCASE(emp.last_name)) AS 'Nome completo',
his.start_date AS 'Data de início', emp.salary AS 'Salário' FROM hr.employees AS emp
INNER JOIN hr.job_history AS his 
  ON his.employee_id = emp.employee_id 
WHERE MONTH(his.start_date) IN(1, 2, 3) 
ORDER BY CONCAT(emp.first_name, ' ', emp.last_name) ASC, his.start_date ASC;
