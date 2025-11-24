05_channel_revenue_monthwise
with monthly_rev as
(select channel,
datepart(year,date) as year,
datepart(month,date) as month,
sum(price_unit*units_sold) as total_revenue
from FMCG_2022_2024
group by channel,datepart(month,date),datepart(year,date)) --channel revenue monthwise
select *
from
(select *,
rank() over(partition by channel order by total_revenue desc) as rnk
from monthly_rev)A
where rnk =1
--All channels — Retail, E-commerce, and Discount — reached their maximum monthly revenue in July 2023. 
              
