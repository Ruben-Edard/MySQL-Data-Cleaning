## Table of Contents
1. [Introduction](#introduction)
2. [Background](#background)
3. [Tools Used](#tools-used)
4. [Main Dashboard](#main-dashboard)
5. [Project Guide](#project-guide)
6. [Business Problems](#1-what-are-the-year-to-date-performance-trends-across-different-countries)
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

## 2. How does gross profit performance vary across quarters and product types?

The quarterly performance shows a fluctuating pattern, with Q2 emerging as the strongest period reaching 1.47M in gross profit. However, there's a noticeable decline in subsequent quarters, with Q3 dropping to 1.17M and Q4 slightly recovering to 1.29M. Looking at product categories, Outdoor products consistently generate the highest portion of gross profit across all quarters, indicating their crucial role in the company's profitability.

![imagem](https://github.com/user-attachments/assets/38e2fe3b-4eeb-4163-9534-4e09bbc2f026)


## 3. What does the account profitability segmentation reveal?

The scatter plot demonstrates that the company maintains an average gross profit margin of 39.62%. When examining individual accounts, there's a clear concentration of accounts below both the 20K value mark and the 40% GP margin average. However, several accounts demonstrate the potential for higher profitability by achieving margins above 60%. This disparity between high and low-performing accounts suggests an opportunity for improvement among the underperforming segments.

![imagem](https://github.com/user-attachments/assets/cef5d50b-5ac5-4125-841c-c884e8313031)

## 4. What are the monthly patterns in gross profit performance?

he monthly analysis shows strongest performance in March and April, with gains of 69K and 89K respectively. However, the latter part of the year faces significant challenges, particularly in August (-87K) and October (-148K). The pronounced decline in October especially warrants attention, as it represents the largest monthly drop in gross profit. The consistent negative performance in the final months of the year indicates a systemic challenge in Q4 that needs to be addressed.

![imagem](https://github.com/user-attachments/assets/c97887c6-0aae-4e3e-a249-fbc2294afca2)

# Impact and Insights

These analyses provide actionable insights for various stakeholders:  
Sales teams can identify underperforming regions and products  
Product managers can understand category performance trends  
Financial analysts can track profitability metrics  
Executive teams can make informed decisions about resource allocation and market focus


# Conclusion

This analysis provides stakeholders with actionable insights for business optimization. The dashboard effectively tracks performance across products, regions, and time periods. Key findings show the importance of regional market focus and product type performance monitoring. The 39.15% gross profit margin suggests room for optimization through targeted improvements in underperforming segments.
