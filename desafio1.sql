select country_name as "País" ,
if(region_name = "Europe", "incluído", "não incluído") as "Status Inlcusão"
from hr.countries as hrc
inner join hr.regions as hrr
on hrr.region_id = hrc.region_id
order by `País` asc;
