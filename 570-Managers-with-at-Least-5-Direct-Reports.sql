select name from employee
where id in (select managerid from employee
group by managerid
having count(managerId)>4)