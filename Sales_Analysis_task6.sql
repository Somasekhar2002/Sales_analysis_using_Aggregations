create database salesdata;
use salesdata;
show databases;
show tables;
describe sales_analysis;

alter table sales_analysis rename column ï»¿order_id to order_id;

select * from sales_analysis limit 15;

select count(*) as total_rows from sales_analysis;

alter table sales_analysis add index idx_order_date(order_date);

select extract(year from order_date) as order_year,extract(month from order_date) as order_month, sum(amount) as total_revenue, count(distinct order_id) as total_orders from sales_analysis group by order_year, order_month order by order_year, order_month;

select extract(month from order_date) as order_month, sum(amount) as total_revenue, count(distinct order_id) as total_orders from sales_analysis where extract(month from order_date)=10 group by order_month;

select extract(year from order_date) as order_year,extract(month from order_date) as order_month, sum(amount) as total_revenue, count(distinct order_id) as total_orders from sales_analysis where order_date between '2024-04-01' and '2024-09-30' group by order_year, order_month order by order_year, order_month;

select extract(year from order_date) as order_year,extract(month from order_date) as order_month, sum(amount)/count(distinct order_id) as avg_order_value from sales_analysis group by order_year, order_month order by order_year, order_month;

select extract(year from order_date) as order_year,extract(month from order_date) as order_month, sum(amount)/sum(quantity) as avg_price_per_item from sales_analysis group by order_year, order_month order by order_year, order_month;

select product_id, sum(amount) as revenue, count(*) as orders from sales_analysis group by product_id order by revenue desc limit 15;

select region , sum(amount) as revenue from sales_analysis group by region order by revenue desc;
