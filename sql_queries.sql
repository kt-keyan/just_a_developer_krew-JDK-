-- Urban Bike Demand Operations Analysis
-- PostgreSQL queries based on cleaned_bike_data.csv

CREATE TABLE bike_demand (
    date date, rented_bike_count integer, hour integer, temperature_c numeric, humidity_pct numeric,
    wind_speed numeric, visibility_10m numeric, dew_point_temperature_c numeric, solar_radiation numeric,
    rainfall_mm numeric, snowfall_cm numeric, seasons varchar(20), holiday varchar(30), functioning_day varchar(10),
    time_category varchar(20), weather_category varchar(20), year integer, month integer, day integer
);

-- Q1: Top 5 hours with highest average demand
SELECT hour, ROUND(AVG(rented_bike_count), 2) AS avg_rentals
FROM bike_demand
GROUP BY hour
ORDER BY avg_rentals DESC
LIMIT 5;

-- Q2: Season with highest total rentals
SELECT seasons, SUM(rented_bike_count) AS total_rentals
FROM bike_demand
GROUP BY seasons
ORDER BY total_rentals DESC;

-- Q3: Holiday vs non-holiday average rentals
SELECT holiday, ROUND(AVG(rented_bike_count), 2) AS avg_rentals
FROM bike_demand
GROUP BY holiday
ORDER BY avg_rentals DESC;

-- Q4: Rainfall effect
SELECT weather_category, COUNT(*) AS observations, ROUND(AVG(rented_bike_count), 2) AS avg_rentals
FROM bike_demand
GROUP BY weather_category
ORDER BY avg_rentals DESC;

-- Q5: Highest-demand season + time category combination
SELECT seasons, time_category, ROUND(AVG(rented_bike_count), 2) AS avg_rentals
FROM bike_demand
GROUP BY seasons, time_category
ORDER BY avg_rentals DESC
LIMIT 1;
