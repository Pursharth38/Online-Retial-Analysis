create database online_retail;
use online_retail;
describe sales;
-- data overview
SELECT
  COUNT(*) AS total_rows,
  COUNT(*) - COUNT(`quantity`) AS null_quantity,
  COUNT(*) - COUNT(`description`) AS null_description,
  COUNT(*) - COUNT(`country`) AS null_country,
  MIN(`invoicedate`) AS first_date,
  MAX(`invoicedate`) AS last_date
FROM sales;
-- Top 10 Revenue Products:-
create view top_10_revenue_products as
select stockcode,description,quantity*unitprice as revenue from sales
order by quantity*unitprice desc
limit 10;
-- Top 10 products by quantity sold:-
create view top_10_products_by_quantity as
select * from sales
order by quantity desc
limit 10; 
-- Most frequenttly bought items:-
create view most_frequently_bought_items as
SELECT
  stockcode,
  description,
  COUNT(DISTINCT invoiceno) AS times_bought
FROM sales
WHERE quantity > 0
GROUP BY stockcode, description
ORDER BY times_bought DESC
LIMIT 10;
-- Products with most cancellations:- 
create view products_with_most_cancellations as
select stockcode,description,count(quantity) as no_of_cancels from sales
where quantity<0
group by stockcode,description
order by no_of_cancels desc
limit 10;
-- Top 10 customers by Revenue:-
create view top10_customers_by_revenue as
select customerid,sum(quantity*unitprice) as revenue
from sales
group by customerid
order by revenue desc
limit 10;
-- Avg order value per customer:-
create view avg_order_value_per_customer as
select customerid,avg(quantity*unitprice) as Avg_order_value
from sales
group by customerid
order by Avg_order_value desc;
-- Total revenue per country:-
create view total_revenue_per_country as
select country,sum(quantity*unitprice) as revenue from sales
group by country
order by revenue desc;
--  Monthly Sales Trend (Total Revenue):-
create view monthly_sales_trend as
SELECT
  DATE_FORMAT(invoicedate, '%Y-%m') AS month,
  ROUND(SUM(quantity * unitprice), 2) AS total_revenue
FROM sales
WHERE quantity > 0
GROUP BY month
ORDER BY month;
SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';
-- Number of unique customers per country 
create view unique_customers_per_country as
SELECT country, COUNT(DISTINCT customerid) AS unique_customers
FROM sales
GROUP BY country
ORDER BY unique_customers DESC;
-- Sequential Patterns
SELECT 
    a.customerid,
    a.stockcode AS product_a,
    b.stockcode AS product_b,
    COUNT(*) AS transitions
FROM sales a
JOIN sales b 
    ON a.customerid = b.customerid
    AND a.invoicedate < b.invoicedate
    AND a.stockcode != b.stockcode
GROUP BY a.stockcode, b.stockcode
ORDER BY transitions DESC
LIMIT 20;






















