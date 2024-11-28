Select round(count(distinct player_id)/(Select count(distinct player_id) from Activity),2) as fraction
from Activity
where (player_id, date_sub(event_date, interval 1 day)) in(
Select player_id, min(event_date) as first_login
from Activity
group by player_id
)