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


## Tech Stack
- **Database**: MySQL
- **Data Visualization**: Power BI
- **Analysis Tools**: SQL, Excel
- **Version Control**: Git


## Dashboard Highlights
![Classic Models Dashboard Page 1 Sales](https://github.com/user-attachments/assets/142210a4-1faa-4ff8-852d-08ee1b096270)

![Classic Models Dashboard Page 1 Net Profit](https://github.com/user-attachments/assets/7047cc79-7a05-4a5c-a0b0-f19c7c1b44f3)

#### Net Profit and Sales Analysis
- The dashboard features toggles to switch between **Net Profit** and **Sales** views, enabling a quick comparison of financial performance.
- **Net Profit by Product Line** and **Sales by Product Line** bar charts display the performance of product categories such as Classic Cars, Vintage Cars, and Motorcycles. Classic Cars stand out as the top-performing category in both profit and sales.

#### Performance by Office and Country
- The **Net Profit by Office** and **Sales by Office** donut charts showcase regional contributions, with the USA and France leading in performance.
- A bar chart provides further granularity on **Net Profit and Sales by Customer Country**, highlighting key international markets.

#### Trends and Patterns
- Line charts track **Total Sales, Count of Unique Orders**, and the **Average Order Value** over time, offering insights into seasonal trends and performance across different offices (USA vs. Rest of the World).

#### Cost and Profitability Correlation
- A scatter plot of **Net Profit/Sales by Cost of Sale** visualizes the relationship between costs and financial outcomes, aiding in identifying efficient and profitable product categories.

![Classic Models Dashboard Page 2](https://github.com/user-attachments/assets/14e88754-6884-432c-a57a-8e325ee5f104)

#### Detailed Breakdown
- A Sankey chart provides a **detailed breakdown** of sales and profitability by Customer Country, Product Line, and Customer Name, offering a drill-down view of business performance.
- The **Sales Overview Table** summarizes monthly performance metrics such as Sales Value, Month-over-Month Percentage Change, and Year-to-Date Sales, giving users a clear picture of financial trends over time.


## Key Findings

#### Product Line Performance
- **Classic Cars** consistently outperform other product lines in both sales ($3.9M) and net profit ($1.53M), making them the primary revenue driver.
- **Vintage Cars** are the second-best performers in sales ($1.8M) and net profit ($0.74M). Lower-performing lines like **Trains** and **Ships** contribute minimally to revenue and profit.
  
#### Regional and Market Insights
- The **USA** leads in sales ($3.48M) and net profit ($1.39M), followed by **France** and the **UK**, indicating strong performance in these regions.
- Some smaller markets like **Japan** and **Australia** contribute comparatively lower revenue and may have potential for growth.

#### Seasonal Trends
- **November in Q4** sees a sharp spike in both total sales and unique orders, suggesting peak demand during this time, likely driven by holiday shopping.

#### Order Value and Trends
- The Average Value of Each Order remains steady, with occasional small spikes, particularly in Q1 and Q3.
The **scatter plot of Cost of Sale vs. Sales/Profit** indicates a generally positive correlation, but certain products have lower profitability despite higher costs, hinting at inefficiencies.


## Business Recommendations

#### Focus on High-Performing Product Lines
- Prioritize marketing and production for **Classic Cars** and **Vintage Cars**, as they yield the highest returns.
- Reevaluate and optimize product lines like **Trains** and **Ships** to improve profitability or reduce inventory costs.

#### Capitalize on Q4 Demand
- Launch targeted marketing campaigns and promotions leading up to **November**, focusing on high-demand products.
- Ensure inventory and supply chains are optimized to meet the surge in demand during **Q4**.

#### Expand in Underperforming Regions
- Invest in targeted marketing campaigns in smaller markets like **Japan** and **Australia**, which show potential for growth.
- Analyze market-specific preferences to tailor offerings in these regions.

#### Optimize Cost Structures
- Analyze high-cost, low-profit products and consider strategies such as renegotiating supplier contracts, reducing manufacturing costs, or discontinuing unprofitable items.

#### Enhance Customer Retention Strategies
- Use insights from the **Customer Country and Customer Name** breakdown to strengthen relationships with top customers.
- Introduce loyalty programs or personalized offers to retain high-value customers and boost sales.

#### Monitor and Leverage Trends
- Utilize the **Sales Overview Table** to track month-over-month changes and anticipate seasonal demand shifts.
- Implement dynamic pricing strategies during peak periods like November to maximize revenue without sacrificing customer satisfaction.


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


 ## Further SQL/Excel Analyses
1. **Credit Limit Analysis**: Evaluation of customer spending patterns relative to their credit limits
2. **Return Customer Behavior**: Analysis of purchase value changes for repeat customers
3. **Product Association**: Investigation of commonly purchased product combinations
4. **Late Deliveries**: Identification and analysis of delayed shipments
5. **Sales Distribution**: Geographical analysis of sales performance
6. **Profit Margins**: Detailed breakdown of costs and margins by product line






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
