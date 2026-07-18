-- Customer & Route Performance

select count(*)
from logistics.loads;

select *
from logistics.loads
limit 5;

select *
from logistics.routes 
limit 5;

select *
from logistics.customers
limit 5;

-- How many customers does the company serve?
select count(*)
  from logistics.customers;

-- How many transportation routes does the company operate?
select count(route_id)
  from logistics.routes;

-- How many loads have been transported?
select count(load_id)
  from logistics.loads;

-- How much revenue does each load generate on average?
select sum(revenue) / count(load_id) as avg_revenue_per_load
from logistics.loads;

-- top 10 customers by revenue
select c.customer_id, 
c.customer_name,
sum(l.revenue) as total_revenue
from logistics.loads l 
join logistics.customers_cleaned c on c.customer_id = l.customer_id
group by c.customer_id, c.customer_name
order by total_revenue desc
limit 10;

select c.customer_type, 
sum(l.revenue) as total_revenue
from logistics.loads l 
join logistics.customers_cleaned c on c.customer_id = l.customer_id
group by c.customer_type
order by total_revenue desc
limit 10;

-- top 10 customers by annual revenue potential
select customer_id, customer_name,
  annual_revenue_potential
from logistics.customers_cleaned
  order by annual_revenue_potential desc
  limit 10;

-- customer count by potential revenue_category
select count(*) as total_customers,
revenue_category
from logistics.customers_cleaned
  group by revenue_category;

select count(*),
account_status
from logistics.customers_cleaned
  group by account_status;

-- freight type revenue
select c.primary_freight_type, 
sum(l.revenue) as total_revenue 
from logistics.loads l 
join logistics.customers_cleaned c on c.customer_id = l.customer_id 
group by c.primary_freight_type
order by total_revenue desc;

-- Which top 10 routes generate the highest revenue
select r.route_id, 
r.origin_city || ', ' || r.origin_state || ' → ' || r.destination_city || ', ' || r.destination_state AS route,
sum(l.revenue) as total_revenue 
from logistics.routes_cleaned r 
join logistics.loads l on l.route_id = r.route_id 
group by r.route_id, r.origin_city, r.origin_state, r.destination_city,r.destination_state
order by total_revenue desc
  limit 10;

-- Which routes are used most frequently?
select count(l.load_id) as total_loads, 
r.origin_city || ', ' || r.origin_state || ' → ' || r.destination_city || ', ' || r.destination_state AS route
from logistics.routes_cleaned r 
join logistics.loads l on l.route_id = r.route_id 
group by r.route_id, r.origin_city, r.origin_state, r.destination_city,r.destination_state
  order by total_loads desc
  limit 10;

-- Which routes generate the highest average revenue per load?
select r.route_id, 
count(l.load_id) as total_loads,
r.origin_city || ', ' || r.origin_state || ' → ' || r.destination_city || ', ' || r.destination_state AS route,
avg(l.revenue) as average_revenue_per_load 
from logistics.routes_cleaned r 
join logistics.loads l on l.route_id = r.route_id 
group by r.route_id, r.origin_city, r.origin_state, r.destination_city,r.destination_state
order by average_revenue_per_load desc
  limit 10;
