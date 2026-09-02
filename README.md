## 1. Project Title

**Bike Sharing Demand Analysis**

## 2. Business Problem

Bike rental demand is not constant throughout the day or across different seasons and weather conditions. For a bike-sharing company, understanding these changes is important for planning bike availability and allocating resources efficiently. Too few bikes during high-demand periods can result in missed rental opportunities, while maintaining excessive availability during low-demand periods can lead to inefficient resource use.

This project analyzes the **Seoul Bike Sharing Dataset** to identify the periods and conditions associated with higher or lower rental demand. The analysis focuses on hourly demand, seasonal patterns, holiday effects, rainfall, and the combination of season and time of day. The objective is to identify clear demand patterns that can support better operational planning.

## 3. Dataset

The **Seoul Bike Sharing Demand Dataset** was used for the analysis. The dataset contains **8,760 hourly records** of bike rentals along with information about date, hour, season, holiday status, temperature, humidity, wind speed, visibility, solar radiation, rainfall, snowfall, and functioning day.

The dataset was analyzed using multiple tools as part of the project workflow, including **Python, Pandas, PostgreSQL, Excel, and BeautifulSoup**.

## 4. Data Cleaning

The initial data preparation was performed using **Python and Pandas**. The dataset was inspected to understand its structure, data types, and overall data quality. Checks were performed for missing values, duplicate records, and invalid data.

The `Date` column was converted into a proper date format, while the existing `Hour` information was used to create a new **Time_Category** feature. The hours were grouped into four categories: **Morning, Afternoon, Evening, and Night**.

A **Weather Category** was also created using rainfall values. The project classified the observations into **No Rain, Light Rain, and Heavy Rain** to make the rainfall analysis easier to interpret.

After cleaning and transformation, the dataset was exported as **`cleaned_bike_data.csv`** and used for the subsequent SQL and Excel analysis.

As an additional data collection task, **BeautifulSoup** was used to scrape information about 10 Seoul attractions, including their names, categories, and areas. The scraped information was saved separately as **`seoul_attractions.csv`**.

## 5. Key Findings

### 1. Overall Rental Demand

The dataset recorded a total of **6,172,314 bike rentals**, with an average of approximately **704.60 rentals per hour**. This provides a baseline for comparing demand across different periods and conditions.

### 2. Evening Hours Have the Highest Demand

The analysis identified **6 PM as the highest-demand hour**, with an average of **1,502.93 rentals**. The five highest-demand hours were **6 PM, 7 PM, 5 PM, 8 PM, and 9 PM** respectively.

This shows that demand is strongly concentrated during the evening period, making this an important period for operational planning.

### 3. Summer Has the Highest Total Rental Volume

Summer recorded the highest number of rentals at **2,283,234**, followed by Autumn with **1,790,002**, Spring with **1,611,909**, and Winter with **487,169**.

The results therefore show a substantial difference in rental activity between summer and winter, with summer representing the strongest season for overall rental volume.

### 4. Non-Holiday Days Have Higher Average Demand

Average rental demand was **715.23 rentals on non-holidays**, compared with **499.76 rentals on holidays**. Within this dataset, non-holiday periods therefore showed considerably higher average rental activity.

### 5. Rainfall Is Associated With Lower Rental Demand

The analysis showed an average of **739.31 rentals during No Rain**, compared with **163.84 during Light Rain** and **138.38 during Heavy Rain**.

However, the Heavy Rain category contained only **8 observations**, compared with **520 Light Rain observations and 8,232 No Rain observations**. Therefore, the Heavy Rain result should be interpreted with caution because of its very small sample size.

### 6. Summer Evenings Represent the Strongest Combined Demand

When season and time category were analyzed together, **Summer + Evening** produced the highest average demand, with **1,821.33 rentals**. This reinforces the importance of evening operations during the summer season.

## 6. Business Recommendations

### 1. Increase Bike Availability During Evening Peak Hours

The company should prioritize bike availability between **5 PM and 9 PM**, particularly around **6 PM**, when average rental demand reaches its highest level. Additional bikes and redistribution efforts during these hours could help accommodate the higher demand.

### 2. Prioritize Summer Evening Operations

Summer has the highest overall rental volume, while Summer Evening is the strongest season and time combination. Operational planning should therefore prioritize **summer evenings** for bike availability, redistribution, and resource allocation.

### 3. Adjust Operations Based on Weather Conditions

The substantial reduction in average rentals during rainy conditions suggests that bike deployment could be adjusted according to weather. During periods of rainfall, resources could be redistributed toward locations or periods with stronger demand rather than maintaining the same level of availability everywhere. The limited Heavy Rain observations should be considered before making decisions specifically based on heavy rainfall.

## Conclusion

The analysis demonstrates that bike rental demand varies significantly according to **time, season, holiday status, and rainfall**. The strongest demand occurs during the **evening**, with **6 PM being the peak hour**, while **summer** has the highest overall rental volume. The combination of **Summer and Evening** produces the highest average demand observed in the analysis.

Overall, the results suggest that bike availability should be managed dynamically rather than uniformly. Focusing resources on high-demand periods, particularly **summer evenings and the 5 PM to 9 PM window**, can provide a more data-driven approach to operational planning while accounting for lower demand during holidays and rainy conditions.
