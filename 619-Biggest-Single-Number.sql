with t as(SELECT num, COUNT(num) AS cnt
FROM mynumbers
GROUP BY num
HAVING cnt < 2)
select max(num) as num from t;