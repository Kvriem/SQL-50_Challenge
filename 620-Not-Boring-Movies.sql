# Write your MySQL query statement below
select * from cinema
where id mod 2<>0 and description <> "boring"
order by rating desc