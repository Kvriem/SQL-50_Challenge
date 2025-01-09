# Write your MySQL query statement below
SELECT contest_id,round((count(distinct r.user_id)*100)/(select count(user_id) from users),2)as percentage 
from users u
join register r on r.user_id=u.user_id
group by contest_id
order by percentage desc ,contest_id  asc