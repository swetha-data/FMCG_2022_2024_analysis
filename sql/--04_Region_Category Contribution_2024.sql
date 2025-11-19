--04_Region–Category Contribution (%)
with cte as
(SELECT region,
category,
sum(price_unit * units_sold) as category_revenue
from fmcg_2022_2024
where datepart(year,date)=2024
group by region,category),
cte_2 as
(select *,
sum(category_revenue) over(partition by region) as regional_revenue,
round(category_revenue*100.0 / sum(category_revenue) over(partition by region),2) as contribution_percentage
from cte)
select *
from
(select *,
dense_rank() over(partition by region order by  contribution_percentage desc) as drnk
from cte_2)A
where drnk=1 --03_Region–Category Contribution (%)

--Insight: In year 2024 Yogurt was the top revenue contributing category in all three regions,
--         contributing around 40% of total revenue.