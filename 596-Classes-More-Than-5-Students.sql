# Write your MySQL query statement below
select class from  (select count(student) as cnt,class from courses
group by class ) as t
where cnt >=5
