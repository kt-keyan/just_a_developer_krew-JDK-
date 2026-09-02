# Bike Sharing Demand Analysis

### 1. Project Overview

This project analyzes bike rental demand using the **Seoul Bike Sharing Dataset** to understand when rental demand is highest and which factors are associated with changes in bike usage. The main business problem is operational: having too many bikes available during low-demand periods and too few during high-demand periods can lead to inefficient resource allocation and a poor customer experience. The project therefore focuses on identifying high-demand hours, seasons, time periods, holiday effects, and the relationship between rainfall and bike rentals. This aligns with the project's stated objective of determining when the maximum number of bikes should be made available. 

### 2. Dataset and Data Preparation

The Seoul Bike Sharing Demand dataset was analyzed using **Python and Pandas**. The data was first inspected for its structure, data types, missing values, duplicate records, and invalid values. Date fields were converted into an appropriate date format, and the dataset was checked for data-quality issues.

Two additional categorical features were created to support the analysis:

* **Time_Category**, grouping hours into Morning, Afternoon, Evening, and Night.
* **Weather Category**, grouping rainfall into No Rain, Light Rain, and Heavy Rain.

The cleaned dataset was then exported as `cleaned_bike_data.csv` for use in the subsequent SQL and Excel analysis. These transformations follow the required Python/Pandas workflow for Project 3. 

### 3. Web Scraping

As part of the external data collection requirement, information about approximately **10 Seoul attractions** was collected using **BeautifulSoup**. The purpose of this step was to demonstrate basic web scraping and provide additional tourism-related information that could potentially be relevant to understanding bike demand around popular destinations. 

### 4. SQL and Excel Analysis

The cleaned dataset was imported into **PostgreSQL** for structured analysis. SQL queries were used to examine rental demand by hour, season, holiday status, rainfall category, and the combination of season and time category.

Excel was then used for summary analysis through Pivot Tables, conditional formatting, and a line chart showing hourly rental demand. These tools provided a simpler visual view of the patterns identified through Python and SQL.

### 5. Key Findings

**1. Overall rental volume was high.**
The dataset recorded **6,172,314 total bike rentals**, with an average of approximately **704.60 rentals per hour**.

**2. Evening hours showed the strongest demand.**
The highest average rental demand occurred at **6 PM**, with **1,502.93 average rentals**. The top five hours were 6 PM, 7 PM, 5 PM, 8 PM, and 9 PM respectively. This creates a clear concentration of demand during the evening period.

**3. Summer was the highest-demand season.**
Summer recorded **2,283,234 total rentals**, followed by Autumn with **1,790,002**, Spring with **1,611,909**, and Winter with **487,169**. Summer therefore had the highest total rental volume in the dataset.

**4. Holidays had lower average rental demand.**
Average rentals on non-holidays were **715.23**, compared with **499.76** on holidays. This indicates substantially lower average rental activity on holidays within this dataset.

**5. Rainfall was strongly associated with lower rental activity.**
No Rain had an average of **739.31 rentals**, while Light Rain had **163.84** and Heavy Rain had **138.38**. However, Heavy Rain contains only **8 observations**, compared with **520 Light Rain observations and 8,232 No Rain observations**. Therefore, the Heavy Rain figure should be interpreted cautiously rather than treated as equally reliable to the other categories.

**6. The highest-demand combination was Summer Evening.**
The highest-demand Season + Time Category combination identified in the SQL analysis was **Summer + Evening**, with an average of **1,821.33 rentals**.

### 6. Business Recommendations

Based on the analysis, the following actions are recommended:

**1. Increase bike availability during evening peak hours.**
The company should prioritize bike availability between **5 PM and 9 PM**, with particular attention to **6 PM**, when average demand reached its highest level.

**2. Prepare additional capacity during summer evenings.**
Because Summer had the highest total rental volume and Summer Evening produced the highest-demand combination, operational planning should prioritize this period for greater bike availability.

**3. Adjust bike deployment according to weather conditions.**
Bike availability can be reduced or redistributed during rainy periods because rental demand was substantially lower during Light Rain and Heavy Rain than during No Rain. However, the Heavy Rain result should be treated cautiously because only eight observations were recorded.

### 7. Conclusion

The analysis shows that bike demand is not evenly distributed across time and conditions. **Evening hours, particularly 6 PM, represent the strongest demand period, while summer is the strongest season.** Rental activity is also considerably higher on non-holidays and under no-rain conditions. The combination of **Summer + Evening** represents the strongest demand pattern identified in the analysis.

These findings provide a practical basis for managing bike availability. Rather than maintaining the same level of inventory throughout the day and year, the company can concentrate resources around predictable high-demand periods while reducing excess availability during lower-demand conditions.
