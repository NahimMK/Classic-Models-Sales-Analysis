# Classic Models Sales Analytics Dashboard

## Table of Contents

- [Overview](#overview)
- [Data Sources](#data-sources)
- [Features](#features)
- [Tech Stack](#tech-stack)
- [Key SQL Analyses](#key-sql-analyses)
- [Dashboard Highlights](#dashboard-highlights)
- [Key Findings](#key-findings)
- [Recommendations](#recommendations)
- [Setup and Usage](#setup-and-usage)
- [Project Structure](#project-structure)
- [Future Enhancements](#future-enhancements)
- [Author](#author)
- [References](#references)
  
## Overview
A comprehensive sales analytics project that analyzes customer behavior, sales performance, and product trends for Classic Models, a retailer specializing in model vehicles. The project includes SQL analysis, data visualization, and a Power BI dashboard that provides actionable insights for business decision-making.

## Data Sources
The analysis is based on several interconnected datasets:
- Customer data (demographics, credit limits)
- Order details (dates, quantities, prices)
- Product information (categories, buy prices, selling prices)
- Sales office and employee data
- Shipping and delivery information

## Features
- **Sales Performance Analysis**
  - Net profit analysis by product line and cost of sale
  - Sales trends across different geographical regions
  - Monthly and yearly sales comparisons
  - Average order value tracking

- **Customer Insights**
  - Credit limit analysis and its correlation with sales
  - Customer retention and purchase value changes
  - Geographic distribution of customers by office
  - Customer purchasing patterns

- **Product Analytics**
  - Product line performance metrics
  - Products frequently purchased together
  - Inventory and pricing analysis
  - Product category trends

- **Operational Metrics**
  - Order fulfillment and shipping analysis
  - Late delivery identification and tracking
  - Office performance comparisons
  - Sales representative performance

## Tech Stack
- **Database**: MySQL
- **Data Visualization**: Power BI
- **Analysis Tools**: SQL, Excel
- **Version Control**: Git

## Key SQL Analyses
1. **Credit Limit Analysis**: Evaluation of customer spending patterns relative to their credit limits
2. **Return Customer Behavior**: Analysis of purchase value changes for repeat customers
3. **Product Association**: Investigation of commonly purchased product combinations
4. **Late Deliveries**: Identification and analysis of delayed shipments
5. **Sales Distribution**: Geographical analysis of sales performance
6. **Profit Margins**: Detailed breakdown of costs and margins by product line

## Dashboard Highlights
- Interactive filters for time period, product line, and geography
- Real-time calculation of key performance indicators
- Sankey diagram showing sales flow from regions to product lines
- Time series analysis of sales trends
- Profit analysis by multiple dimensions

## Key Findings
1. Classic Cars are the highest performing product line ($1.53M in net profit)
2. USA leads in sales with $1.39M in net profit
3. Average order value across regions is $29.46K
4. Significant variations in profit margins across product lines (37.1% - 43.4%)
5. Strong correlation between credit limits and sales performance

## Recommendations



## Setup and Usage
1. Clone the repository
2. Import the SQL scripts into your MySQL database
3. Open the Power BI dashboard file
4. Connect to your data source
5. Refresh the dashboard to see the latest data

## Project Structure
```
classic-models-analytics/
├── sql/
│   ├── credit_limit_analysis.sql
│   ├── late_arrivals.sql
│   ├── products_purchased_together.sql
│   ├── return_customers.sql
│   ├── sales_overview.sql
│   └── sales_by_offices.sql
├── power_bi/
│   └── sales_dashboard.pbix
├── data/
│   ├── country_overview.csv
│   └── credit_limit_grouped.csv
└── README.md
```

## Future Enhancements
- Implementation of predictive analytics for sales forecasting
- Integration with real-time sales data
- Development of automated reporting systems
- Enhanced customer segmentation analysis
- Product recommendation engine based on purchase patterns

## Author
Md (Nahim) Kamruzzaman
- GitHub: 
- LinkedIn: 

## References
- Classic Models Sales dataset
- Power BI community for visualization inspirations
- MySQL documentation for query optimization techniques
