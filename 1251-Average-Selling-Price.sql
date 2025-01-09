# Write your MySQL query statement below
select p.product_id , IFNULL(round(sum(units*price)/sum(units),2),0) as average_price 
from prices p
left join UnitsSold u on u.product_id=p.product_id
AND u.purchase_date BETWEEN start_date AND end_date
group by p.product_id

