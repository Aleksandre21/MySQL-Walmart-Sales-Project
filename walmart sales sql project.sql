-- Total sales by store
select Store, sum(round(Weekly_Sales)) as Sum_of_Sales
from walmart_sales
group by store
order by Sum_of_Sales desc;

-- Average Weekly Sales, Holiday vs Non-Holiday
select holiday_flag, avg(Weekly_Sales) as Average_Weekly_Sale
from walmart_sales 
group by holiday_flag;

-- Top 5 weeks with Highest Sales
select Date, sum(round(Weekly_Sales)) as total_weekly_sales
from walmart_sales
group by Date
order by total_weekly_sales desc
limit 5;

-- Best-performing stores during holidays 
select Store, sum(Weekly_sales) as Sum_weekly_Sales
from walmart_sales
where holiday_flag = 1
group by store
order by Sum_weekly_Sales desc;





