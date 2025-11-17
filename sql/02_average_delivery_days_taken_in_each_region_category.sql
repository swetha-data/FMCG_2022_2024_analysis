Average delivery days taken by each region,category

select region,
category,
avg(delivery_days) as avg_delivery_days
from FMCG_2022_2024
group by region,category
--------------------------------------------------------------

Ranking based on average delivery days

with cte as
(select region,category,
avg(delivery_days) as avg_delivery_days
from FMCG_2022_2024
group by region,category)
select *,
dense_rank() over(partition by category order by avg_delivery_days asc) as drnk
from cte

-- Insight:out of 5 FMCG categories central region makes faster deliveries in 3 - juice,milk and readymeal.
