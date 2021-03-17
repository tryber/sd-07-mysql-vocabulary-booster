select hrj.job_title as "Cargo",
round(avg(hre.salary), 2) as "Média salarial",
	case
		when round(avg(hre.salary), 2) between 2000 and 5800 then "Júnior"
        when round(avg(hre.salary), 2) between 5801 and 7500 then "Pleno"
        when round(avg(hre.salary), 2) between 7501 and 10500 then "Sênior"
		else "CEO"
	end as "Senioridade"
from hr.employees as hre
inner join hr.jobs as hrj
on hre.job_id = hrj.job_id
group by job_title
order by `Média salarial`, `Cargo` asc;
