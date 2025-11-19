Channel Performance – Month-over-Month Growth in year 2023
with cte as
(select channel,
datepart(month,date)as month,
sum(price_unit*units_sold) as revenue
from FMCG_2022_2024
where datepart(year,date)=2023
group by channel,datepart(month,date))
select channel,
month,revenue,
lag(revenue,1) over(partition by channel order by month) 
as prev_month_revenue,
revenue - lag(revenue,1) over(partition by channel order by month) 
as growth
from cte
--insight: After calculating monthly revenue for year 2023,
all channels - Discount,E-commerce,Retail show growth in first part of the year.
But in later part of the year,specifically from august the growth is negative.
There is decrease in the sales after midyear.