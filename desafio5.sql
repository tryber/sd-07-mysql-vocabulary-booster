select job_title as "Cargo",
hrj.max_salary - hrj.min_salary as "Variação Salarial",
round((hrj.min_salary / 12), 2) as "Média mínima mensal",
round((hrj.max_salary / 12), 2) as "Média máxima mensal"
from hr.jobs as hrj
order by `Variação Salarial`, job_title asc;
