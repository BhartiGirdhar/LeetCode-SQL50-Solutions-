select project_id, round(avg(experience_years),2) as average_years
from project 
join employee using (employee_id)
group by 1;