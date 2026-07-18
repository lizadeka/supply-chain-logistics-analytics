-- Page 3 – Fleet Management

-- How many trucks and trailers are currently in the fleet?

select count(*)
from logistics.trucks;

select count(*) 
from logistics.trailers;

-- What percentage of the fleet is active and available for use?

select 
status,
sum(total_fleet) as total_fleet,
round(sum(total_fleet) * 100.0 / sum(sum(total_fleet)) over (), 2) as percentage
from(
select count(*) as total_fleet,
status
from logistics.trucks
group by status
  
union all
  
select count(*) as total_fleet,
status
from logistics.trailers
group by status
) as fleet
group by status
order by total_fleet desc;

-- How much is the company spending on fuel?

select sum(total_cost)
from logistics.fuel_purchases_cleaned;

-- How much is being spent on vehicle maintenance?

select sum(total_cost)
from logistics.maintenance_records_cleaned;

-- Which maintenance types occur most frequently?
select count(*) as total_maintenance,
maintenance_type
from logistics.maintenance_records_cleaned
  group by maintenance_type
  order by total_maintenance desc;

-- Top 10 Fuel-Consuming Trucks

select t.truck_id,
  t.make,
  t.model_year,
  sum(fp.gallons) as total_consumed_fuel
from logistics.trucks t 
join logistics.fuel_purchases fp on fp.truck_id = t.truck_id
  group by t.truck_id
order by total_consumed_fuel desc
  limit 10;

-- What is the age distribution of the fleet?

select 
model_year,
sum(total_fleet) as total_fleet
from(
select count(*) as total_fleet,
model_year
from logistics.trucks
group by model_year
  
union all
  
select count(*) as total_fleet,
model_year
from logistics.trailers
group by model_year
) as fleet
group by model_year
order by model_year;

-- How much downtime is caused by maintenance activities?

select 
maintenance_type,
sum(downtime_hours) as total_downtime_hours
from logistics.maintenance_records_cleaned
group by maintenance_type
order by total_downtime_hours desc;

-- How has fuel spending changed over time?
select
date_trunc('month', purchase_date) as month,
sum(total_cost) as total_fuel_spend
from logistics.fuel_purchases
group by month
order by month;

-- Quarterly Fuel Spending Trend
select
concat('Q', extract(quarter from purchase_date), ' ', extract(year from purchase_date)) as quarter,
sum(total_cost) as total_fuel_spend
from logistics.fuel_purchases
where purchase_date < '2025-01-01'
group by extract(year from purchase_date),
extract(quarter from purchase_date)
order by extract(year from purchase_date),
extract(quarter from purchase_date);

-- Maintenance Cost by Truck Make
select sum(m.total_cost) as maintenance_cost,
t.make
from logistics.maintenance_records_cleaned m 
  join logistics.trucks t on t.truck_id = m.truck_id
  group by t.make
  order by maintenance_cost desc;

-- age distribution
select
model_year,
sum(truck_count) as total_trucks,
sum(trailer_count) as total_trailers
from(
select model_year,
count(*) as truck_count,
0 as trailer_count
from logistics.trucks
group by model_year
union all
select 
model_year,
0 as truck_count,
count(*) as trailer_count
from logistics.trailers
group by model_year
) as fleet
group by model_year
order by model_year;