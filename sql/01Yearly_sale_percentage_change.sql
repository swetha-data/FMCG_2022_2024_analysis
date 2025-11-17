--Yearly sale analysis with YoY percentage change
with yearly_sale as
(select datepart(year,date)as year,
sum(price_unit*units_sold) as sales
from FMCG_2022_2024
group by datepart(year,date) --yearly sale
)
select *,
lag(sales,1) over(order by year) as prev_year_sale,
(sales-lag(sales,1) over(order by year))*100/lag(sales,1) over(order by year) as percentage_change
from yearly_sale
--Insight:There was huge increase of sale in year 2023 followed by 1 percentage dip in 2024
