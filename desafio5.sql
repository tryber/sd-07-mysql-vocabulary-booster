SELECT 
  CONCAT(emp.FIRST_NAME,' ',emp.LAST_NAME) AS 'Nome completo',
  jb.JOB_TITLE AS 'Cargo',
  START_DATE AS 'Data de início do cargo',
  dp.DEPARTMENT_NAME AS 'Departamento'
FROM 
  hr.job_history AS JO_H
INNER
 
ORDER BY
  CONCAT(FIRST_NAME,' ',LAST_NAME) DESC, JOB_TITLE ASC ;