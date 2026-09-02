# Bike Sharing Demand Analysis

## 1. Project Overview

This project analyzes bike rental demand using the **Seoul Bike Sharing Dataset** to understand when rental demand is highest and which factors are associated with changes in bike usage.

The main business problem is operational: having too many bikes available during low-demand periods and too few during high-demand periods can lead to inefficient resource allocation and a poor customer experience.

The project focuses on identifying:

* High-demand hours
* Seasonal demand patterns
* Time-period demand
* Holiday effects
* The relationship between rainfall and bike rentals

The overall objective is to determine **when the maximum number of bikes should be made available**.

---

## 2. Dataset and Data Preparation

The Seoul Bike Sharing Demand dataset was analyzed using **Python and Pandas**. The data was inspected for its structure, data types, missing values, duplicate records, and invalid values. Date fields were converted into an appropriate date format, and the dataset was checked for data-quality issues.

Two additional categorical features were created:

* **Time_Category**: Groups hours into Morning, Afternoon, Evening, and Night.
* **Weather Category**: Groups rainfall into No Rain, Light Rain, and Heavy Rain.

The cleaned dataset was exported as `cleaned_bike_data.csv` for use in the subsequent SQL and Excel analysis.

---

## 3. Web Scraping

Using **BeautifulSoup**, information on 10 popular Seoul attractions was collected from public tourism webpages. The data includes the **attraction name, category, and area**, covering historical, cultural, shopping, and landmark destinations.

The scraped information was stored in a Pandas DataFrame and exported as `seoul_attractions.csv`.

---

## 4. SQL and Excel Analysis

The cleaned dataset was imported into **PostgreSQL** for structured analysis. SQL queries were used to examine rental demand by:

* Hour
* Season
* Holiday status
* Weather category
* Season and time category

**Excel** was used to create Pivot Tables for rental analysis by hour, season, and holiday status. Conditional formatting was applied to highlight demand levels, and a line chart was created to visualize hourly rental demand.

---

## 5. Key Findings

### 5.1 Overall Rental Volume

The dataset recorded **6,172,314 total bike rentals**, with an average of approximately **704.60 rentals per hour**.

### 5.2 Peak Rental Hours

The highest average rental demand occurred at **6 PM**, with **1,502.93 average rentals**.

The top five hours were:

| Rank |  Hour | Average Rentals |
| ---: | ----: | --------------: |
|    1 | 18:00 |        1,502.93 |
|    2 | 19:00 |        1,195.15 |
|    3 | 17:00 |        1,138.51 |
|    4 | 20:00 |        1,068.96 |
|    5 | 21:00 |        1,031.45 |

This shows a clear concentration of demand during the **evening period**.

### 5.3 Seasonal Demand

**Summer** recorded the highest total number of rentals at **2,283,234**, followed by Autumn, Spring, and Winter.

| Season | Total Rentals |
| ------ | ------------: |
| Summer |     2,283,234 |
| Autumn |     1,790,002 |
| Spring |     1,611,909 |
| Winter |       487,169 |

### 5.4 Holiday vs Non-Holiday Demand

Average rental demand was higher on non-holidays:

* **No Holiday:** 715.23 rentals
* **Holiday:** 499.76 rentals

This indicates lower average rental activity on holidays within the analyzed dataset.

### 5.5 Rainfall and Rental Demand

Rental demand was substantially higher when there was no rain:

| Weather Category | Observations | Average Rentals |
| ---------------- | -----------: | --------------: |
| No Rain          |        8,232 |          739.31 |
| Light Rain       |          520 |          163.84 |
| Heavy Rain       |            8 |          138.38 |

The **Heavy Rain** result should be interpreted cautiously because it is based on only **8 observations**.

### 5.6 Highest-Demand Combination

The highest-demand **Season + Time Category** combination was:

> **Summer + Evening: 1,821.33 average rentals**

This identifies summer evenings as the strongest combination of seasonal and daily demand.

---

## 6. Business Recommendations

### 1. Increase Bike Availability During Evening Peaks

Bike availability should be prioritized between **5 PM and 9 PM**, particularly around **6 PM**, when average demand reaches its highest level.

### 2. Prioritize Summer Evening Operations

Since summer has the highest total rental volume and **Summer + Evening** has the highest average demand combination, additional operational capacity should be planned for this period.

### 3. Adjust Operations During Rainy Conditions

Bike deployment can be reduced or redistributed during rainy periods because average rental demand is substantially lower than during no-rain conditions. However, the limited number of heavy-rain observations should be considered when making operational decisions.

---

## 7. Conclusion

The analysis shows that bike rental demand varies considerably across **time, season, holidays, and weather conditions**. The strongest demand occurs during the **evening, particularly at 6 PM**, while **summer** is the highest-demand season.

The strongest combined demand pattern is **Summer + Evening**, with an average of **1,821.33 rentals**. In contrast, rental activity is considerably lower during holidays and rainy conditions.

These findings provide a practical basis for improving bike availability and resource allocation. Rather than maintaining the same level of availability throughout the day and year, operations can focus resources on **predictable high-demand periods**, particularly **summer evenings and the 5 PM to 9 PM peak window**.
