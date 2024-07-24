--https://www.metacareers.com/profile/coding_practice_question?problem_id=445641256979559&psid=600891527799620&practice_plan=0

select 
p.media_type as single_channel_media_type, 
sum(p.cost) as total_cost
from
promotions p
WHERE p.media_type NOT LIKE '%,%'
group by 1
order by 2 desc
limit 5
