## Table of Contents
1. [Introduction](#introduction)
2. [Background](#background)
3. [Tools Used](#tools-used)
4. [Main Dashboard](#main-dashboard)
5. [Project Guide](#project-guide)
6. [Business Questions](#1-what-are-the-year-to-date-performance-trends-across-different-countries)
7. [Impact and Insights](#impact-and-insights)
8. [Conclusion](#conclusion)

# Introduction

This project analyzes the sales performance and profitability metrics of a plant distribution company operating across multiple countries. Using Power BI, the analysis transforms raw sales data into actionable insights, helping stakeholders understand market trends, product performance, and geographical distribution of sales.  

This marks my first Power BI project, representing my initial exploration into business intelligence visualization. While there may be areas for improvement, it demonstrates fundamental data analysis and visualization capabilities.

The dataset used in this analysis is available in my GitHub repository: [Plant DTS](https://github.com/Ruben-Eduard/PortfolioProjects/blob/main/Power%20BI/Plant_DTS.xls)

# Background

Plant Co. operates internationally, selling various types of plants categorized as Indoor, Outdoor, and Landscape products. The company faces challenges in tracking performance across different markets and maintaining profitability targets. With operations spanning multiple countries and a diverse product portfolio, there's a critical need to understand sales patterns, identify underperforming markets, and optimize product mix.
    
    1. What are the year-to-date performance trends across different countries?
    2. How does gross profit performance vary across quarters and product types?
    3. What does the account profitability segmentation reveal?
    4. What are the monthly patterns in gross profit performance?
    5. Which countries show the most significant decline in gross profit compared to the prior year, and what's the scale of these declines?

## Tools Used

To conduct this analysis, the following tools and technologies were used:

    Microsoft Excel – Initial data exploration
    Power Query – Data cleaning, transformation and DAX calculations
    Power BI – Data modeling and visualization

## Main Dashboard

![imagem](https://github.com/user-attachments/assets/f41fd09e-7ad2-4b2f-b0f7-4409fc36765f)

## Project Guide

Data model:
I import the CSV into PowerBI, clean the data, removing duplicates, change the data type of fields and create slicer values, finally I link the tables together in the Model side tab:

![imagem](https://github.com/user-attachments/assets/fb42f895-f519-4280-ba89-84b1f13a0a99)


## 1. What are the year-to-date performance trends across different countries?

The data reveals a concerning performance gap in 2023 compared to 2022, with an overall decline of 265.29K in gross profit. China shows the most significant deterioration, with gross profit falling 405K below its 2022 performance for the same period. Followed by notable declines in Sweden (-63.43K) and the United States (-57.38K), suggesting particular challenges in these major markets during 2023.

![imagem](https://github.com/user-attachments/assets/efa3ffac-ea6b-4dcb-b7e4-d3edb19b9036)

## 2. How do different product types (Indoor, Landscape, Outdoor) contribute to overall sales?

The stacked bar chart shows Indoor, Landscape, and Outdoor product sales peaking at 1.15M in March before dropping to 0.39M in April. Indoor products consistently lead in sales volume.

![imagem](https://github.com/user-attachments/assets/8f7dff88-bc4a-426b-aa6b-6f676a0b1180)

## 3. Which countries are performing above or below expectations?

The "Bottom 10 YTD vs PYTD | Country" chart highlights Canada (-$73.71K) and Colombia (-$61.12K) as the markets with largest declines, followed by several European countries showing negative growth.

![imagem](https://github.com/user-attachments/assets/2d6e1352-1e21-49c6-859f-7b4f1c2608b4)

## 4. What is the overall gross profit margin?

Overall gross profit margin stands at 39.15%. The scatter plot shows account distribution against a 40% target line, helping identify which accounts meet profitability goals.



# Impact and Insights

These analyses provide actionable insights for various stakeholders: 
Sales teams can identify underperforming regions and products  
Product managers can understand category performance trends  
Financial analysts can track profitability metrics  
Executive teams can make informed decisions about resource allocation and market focus


# Conclusion

This analysis provides stakeholders with actionable insights for business optimization. The dashboard effectively tracks performance across products, regions, and time periods. Key findings show the importance of regional market focus and product type performance monitoring. The 39.15% gross profit margin suggests room for optimization through targeted improvements in underperforming segments.
