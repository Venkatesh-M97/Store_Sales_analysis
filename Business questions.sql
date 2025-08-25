--Questions related to Insight
---1. Top 5 most selling product based on quantity 
select top 5 product_name, sum(quantity) as Total_sold_Qty
from Sales_store
where status = 'delivered'
group by product_name order by Total_sold_Qty Desc

-----Business Impact : to identify the most in demand
------------------------------------------------------------------------------------------------------------------
---2. Top 5 cancelled product
select top 5 product_name, count(*) as Total_cancelled
from Sales_store
where status = 'cancelled'
group by product_name order by Total_cancelled Desc

-----Business Impact : To check for improvements or removing the product from catalog
------------------------------------------------------------------------------------------------------------------
---3. Time of the day which has the highest no. od purchase
WITH CTE AS (
    SELECT *,
        CASE
            WHEN DATEPART(HOUR, time_of_purchase) BETWEEN 0 AND 5 THEN 'Night'
            WHEN DATEPART(HOUR, time_of_purchase) BETWEEN 6 AND 11 THEN 'Morning'
            WHEN DATEPART(HOUR, time_of_purchase) BETWEEN 12 AND 17 THEN 'Afternoon'
            WHEN DATEPART(HOUR, time_of_purchase) BETWEEN 18 AND 23 THEN 'Evening'
        END AS Time_period
    FROM Sales_store
)
SELECT Time_period, COUNT(*) AS Total_orders
FROM CTE
GROUP BY Time_period
ORDER BY Total_orders Desc;

-------Helps in improving efficience during the peak hours, planning for promotions, scheduling maintanence or server down activities
------------------------------------------------------------------------------------------------------------------
---4. Top 5 Customers spending most
SELECT TOP 5 
    customer_name,
    FORMAT(SUM(price * quantity), 'c0', 'en-IN') AS Gross_spend_display,
    FORMAT(
        SUM(CASE WHEN status = 'delivered' THEN price * quantity ELSE 0 END), 
        'c0', 'en-IN'
    ) AS Net_spend_display
FROM sales_store
GROUP BY customer_name
ORDER BY SUM(price * quantity) DESC;

------Helps in improving the custoemr experience.
-----------------------------------------------------------------------------------------------------------------
---5 which product category generates highest revenue
select top 5 product_category,  FORMAT(SUM(price * quantity), 'c0', 'en-IN') AS Gross_revenue,
    FORMAT(
        SUM(CASE WHEN status = 'delivered' THEN price * quantity ELSE 0 END), 
        'c0', 'en-IN'
    ) AS Actual_revenue
from sales_store
group by product_category
order by SUM(CASE WHEN status = 'delivered' THEN price * quantity ELSE 0 END) Desc;

-----Helps in identfying the high demand category, so that necessary offers and discounts can be given
-----------------------------------------------------------------------------------------------------------------
---6 rate of cancellaetion / return rate per producgt category
select top 5 product_category,  
FORMAT(count (CASE WHEN status = 'cancelled' THEN 1 END)*100/count(*),'n0')+'%'AS cancelled_percent
from sales_store
group by product_category
order by count (CASE WHEN status = 'cancelled' THEN 1 END)*100/count(*) Desc;

select top 5 product_category,  
FORMAT(count (CASE WHEN status = 'returned' THEN 1 END)*100/count(*),'n0')+'%'AS returned_percent
from sales_store
group by product_category
order by count (CASE WHEN status = 'returned' THEN 1 END)*100/count(*) Desc;


-----Helps in identifying customer satisfaction and problem and helps in improving the quality or measure to increase the sales in the product categories
-----------------------------------------------------------------------------------------------------------------
---7. Most prefferred payment  mode

select top 5 payment_mode, count(*) as total_no_of_txns,
format(sum(price*quantity) ,'c0','en-IN') as total_txn_value
from sales_store
group by payment_mode
order by total_no_of_txns desc

-----Helps in identifying preferred payment mode and make decisons in building the seamless payment
----------------------------------------------------------------------------------------------------------------
---8. Age group affecting purchasing behaviour
select min(customer_age), max(customer_age) from sales_store


select case
when customer_age between 18 and 25 then '18-25'
when customer_age between 26 and 35 then '26-35'
when customer_age between 36 and 45 then '36-45'
when customer_age between 46 and 60 then '46-60' end as Aging_bucket,
FORMAT(SUM(price * quantity), 'c0', 'en-IN') AS Purchased_value
from sales_store
group by case
when customer_age between 18 and 25 then '18-25'
when customer_age between 26 and 35 then '26-35'
when customer_age between 36 and 45 then '36-45'
when customer_age between 46 and 60 then '46-60' end 
order by SUM(price * quantity) desc;


-----helps in identifying the demographics andin tagetted segemnt of marketing and immproving the service
----------------------------------------------------------------------------------------------------------------
---9. MOnthly sales trend
select format (purchase_date, 'yyyy-MM') as Month_year,
    sum(quantity) as total_sales,
       FORMAT(SUM(price * quantity), 'c0', 'en-IN') AS Total_revenue
from sales_store
group by format (purchase_date, 'yyyy-MM')

----Helps in plan the inventory
----------------------------------------------------------------------------------------------------------------
---10. Gender specific buying categories

select*
from (select gender, product_category
from sales_store) as source_table
Pivot( count(gender) for gender in ([M],[F])) as pivot_table
order by product_category

----helps in personalizing the marketing startegies, more customer specific approach.