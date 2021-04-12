SELECT t1.JOB_TITLE AS Cargo, cast(AVG(t2.SALARY) as decimal(10,2)) as `Média salarial`,
CASE
  WHEN AVG(t2.SALARY) > 10500 THEN 'CEO'
  WHEN AVG(t2.SALARY) > 7500 THEN 'Sênior'
  WHEN AVG(t2.SALARY) > 5800 THEN 'Pleno'
  WHEN AVG(t2.SALARY) > 1999 THEN 'Júnior'
END AS 'Senioridade'
from jobs as t1
inner join employees as t2
on t1.JOB_ID = t2.JOB_ID
group by t1.JOB_ID
ORDER BY AVG(t2.SALARY) ASC, t1.JOB_TITLE;
