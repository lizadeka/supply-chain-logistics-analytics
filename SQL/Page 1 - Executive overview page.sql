-- Executive overview page

-- How much revenue has the company generated?
select sum(revenue) as total_revenue
from logistics.loads;

-- How much revenue does the company earn per load?
select round(avg(revenue), 2) as average_revenue_per_load
from logistics.loads;

-- How much revenue does each customer generate on average?
select round(sum(revenue)/count(distinct customer_id), 2) as average_revenue_per_customer
from logistics.loads;

-- What percentage of revenue is spent on fuel?
select round(((select sum(total_cost) from logistics.fuel_purchases)/
  (select sum(revenue) from logistics.loads)) * 100,2) AS fuel_cost_percentage;

-- What percentage of revenue is spent on vehicle maintenance?
select round(((select sum(total_cost) from logistics.maintenance_records_cleaned)/
  (select sum(revenue) from logistics.loads)) * 100,2) AS maintenance_cost_percentage;

-- Gross Operating Cost(How much is the company spending to operate its fleet?)
select((select sum(total_cost)
from logistics.fuel_purchases) + (select sum(total_cost)
from logistics.maintenance_records_cleaned)
) as total_operating_cost;


-- How have revenue and operating costs changed over time?
with revenue as(
  select date_trunc('quarter', load_date) as quarter,
sum(revenue) as total_revenue
from logistics.loads
  group by date_trunc('quarter', load_date)
),fuel as(
  select date_trunc('quarter', purchase_date) as quarter,
sum(total_cost) as fuel_cost
from logistics.fuel_purchases_cleaned
  group by date_trunc('quarter', purchase_date)
), maintenance as(
  select date_trunc('quarter', maintenance_date) as quarter,
sum(total_cost) as maintenance_cost
from logistics.maintenance_records_cleaned
  group by date_trunc('quarter', maintenance_date)
)
select to_char(r.quarter, '"Q"Q YYYY') as quarter,
  r.total_revenue,
  f.fuel_cost,
  m.maintenance_cost,
  (f.fuel_cost + m.maintenance_cost) as operating_cost
  from revenue r
left join fuel f on f.quarter = r.quarter 
left join maintenance m on m.quarter = r.quarter
  order by r.quarter; 





-- Total Trips
SELECT
COUNT(*) AS total_trips
FROM logistics.trips;
-- Business Insight: Shows the total number of trips completed.


-- Total Loads
SELECT
COUNT(*) AS total_loads
FROM logistics.loads;
-- Business Insight: Shows the total number of loads handled.


-- Total Deliveries
SELECT
COUNT(*) AS total_deliveries
FROM logistics.delivery_events
WHERE event_type = 'Delivery';
-- Business Insight: Shows the total number of completed deliveries.


-- Total Drivers
SELECT
COUNT(*) AS total_drivers
FROM logistics.drivers
WHERE employment_status = 'Active';
-- Business Insight: Shows the total number of active drivers.


-- Driver Performance Distribution
SELECT
performance_flag,
COUNT(*) AS total_drivers
FROM logistics.driver_monthly_metrics
GROUP BY performance_flag
ORDER BY total_drivers DESC;
-- Business Insight: Shows the distribution of driver performance.


-- Delivery Performance Distribution
SELECT
performance_flag,
COUNT(*) AS total_events
FROM logistics.delivery_events
GROUP BY performance_flag
ORDER BY total_events DESC;
-- Business Insight: Compares on-time and delayed deliveries.


-- Trip Assignment Status
SELECT
assignment_flag,
COUNT(*) AS total_trips
FROM logistics.trips
GROUP BY assignment_flag
ORDER BY total_trips DESC;
-- Business Insight: Displays the assignment status of all trips.


-- Revenue Category Distribution
SELECT
revenue_flag,
COUNT(*) AS total_loads
FROM logistics.loads
GROUP BY revenue_flag
ORDER BY total_loads DESC;
-- Business Insight: Shows the distribution of loads by revenue category.


-- Average Fuel Efficiency (MPG)
SELECT
ROUND(AVG(average_mpg),2) AS average_mpg
FROM logistics.driver_monthly_metrics;
-- Business Insight: Measures the average fuel efficiency of drivers.


-- Average On-Time Delivery Rate
SELECT
ROUND(AVG(on_time_delivery_rate) * 100,2) AS on_time_delivery_rate
FROM logistics.driver_monthly_metrics;
-- Business Insight: Measures the overall on-time delivery performance.