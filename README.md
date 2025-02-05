# Global Sales & Profitability Dashboard

## Table of Contents
1. [Overview](#overview)
2. [Data Sources](#data-sources)
3. [Tech Stack](#tech-stack)
4. [Dashboard Highlights](#dashboard-highlights)
   - [Net Profit and Sales Analysis](#net-profit-and-sales-analysis)
   - [Performance by Office and Country](#performance-by-office-and-country)
   - [Trends and Patterns](#trends-and-patterns)
   - [Cost and Profitability Correlation](#cost-and-profitability-correlation)
   - [Detailed Breakdown](#detailed-breakdown)
5. [Key Findings](#key-findings)
   - [Product Line Performance](#product-line-performance)
   - [Regional and Market Insights](#regional-and-market-insights)
   - [Seasonal Trends](#seasonal-trends)
   - [Order Value and Trends](#order-value-and-trends)
6. [Business Recommendations](#business-recommendations)
   - [Focus on High-Performing Product Lines](#focus-on-high-performing-product-lines)
   - [Capitalize on Q4 Demand](#capitalize-on-q4-demand)
   - [Expand in Underperforming Regions](#expand-in-underperforming-regions)
   - [Optimize Cost Structures](#optimize-cost-structures)
   - [Enhance Customer Retention Strategies](#enhance-customer-retention-strategies)
   - [Monitor and Leverage Trends](#monitor-and-leverage-trends)
7. [Further SQL/Excel Analyses](#further-sqlexcel-analyses)
   - [Sales Overview 2004](#sales-overview-2004)
   - [Product Association](#product-association)
   - [Credit Limit and Sales](#credit-limit-and-sales)
   - [Purchase Value Change](#purchase-value-change)
   - [Sales By Office Location](#sales-by-office-location)
   - [Late Shipping](#late-shipping)
   - [Over Credit Limit](#over-credit-limit)
8. [Setup and Usage](#setup-and-usage)
9. [Project Structure](#project-structure)
10. [Future Enhancements](#future-enhancements)
11. [Author](#author)
12. [References](#references)
  
## Overview
A comprehensive sales analytics project that analyzes customer behavior, sales performance, and product trends for a retailer specializing in model vehicles. The project includes SQL analysis, data visualization, and a Power BI dashboard that provides actionable insights for business decision-making.


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


## Further SQL/Excel Analyses
### Sales Overview 2004
**Task**: Provide an overview of all sales from 2004. Give a breakdown by product and country and include the sales value, cost of sales, and net profit.

```SQL
SELECT t1.orderDate, t1.orderNumber, quantityOrdered, priceEach, productName, productLine, buyPrice, city, country
FROM orders t1
INNER JOIN orderdetails t2
ON t1.orderNumber = t2.orderNumber
INNER JOIN products t3
ON t2.productCode = t3.productCode
INNER JOIN customers t4
ON t1.customerNumber = t4.customerNumber
WHERE YEAR(orderDate) = 2004
```

#### Overview
This analysis provides an overview of sales from 2004, breaking down data by product and country. It includes sales value, cost of sales, and net profit, enabling a deeper understanding of product performance and regional contributions.

#### Key Findings
- **Top-Performing Countries**:
   - The **USA** dominates in sales value, contributing significantly to overall revenue.
   - Other strong contributors include **Switzerland**, **Japan**, and **Spain**, with notable sales and net profit percentages.

- **Sales Metrics**:
   - **Net Profit**: The percentage of net profit varies across countries, with higher profitability observed in countries like the USA and Switzerland.
   - **Cost of Sales**: This metric highlights countries where operational expenses impact profitability, such as Denmark and Ireland.

- **Product Performance**:
   - Specific product lines and items contribute disproportionately to sales in certain countries.
   - High sales volumes are observed in **Classic Cars**, **Vintage Cars**, and **Trucks and Buses**, with variations in profitability by region.

### Visualization
- **Bar Charts**:
   - Breakdowns of sales, cost of sales, and net profit are presented by product and country to highlight regional and product-specific trends.
   ![image](https://github.com/user-attachments/assets/a7ad078f-82c4-4851-a241-bf54b1e1ff68)
2. **Line and Bar Chart**:
   - The combined chart below shows the total sales value (bar chart) and net profit percentage (line chart) for each country:
     ![image](https://github.com/user-attachments/assets/07c04686-92cc-4593-a04b-82a8e03f54b4)

#### Recommendations
- **Focus on High-Performing Regions**:
  - Strengthen marketing efforts in the USA and Switzerland to capitalize on their high contribution to sales and profitability.
- **Optimize Operations in Lower-Margin Regions**:
  - Investigate operational costs in countries like Denmark and Ireland to improve profit margins.
- **Promote Top-Performing Products**:
  - Leverage sales data to focus on high-performing product lines like Classic Cars and Vintage Cars in regions with strong demand.


### Product Association
**Task**: Give a breakdown of what products are commonly purchased together and any products that are rarely purchased together.

```SQL
with prod_sales as
(
SELECT orderNumber, t1.productCode, productLine
FROM orderdetails t1
INNER JOIN products t2
ON  t1.productCode = t2.productCode
)

SELECT DISTINCT t1.orderNumber, t1.productLine as product_1, t2.productLine as product_2
FROM prod_sales t1
LEFT JOIN prod_sales t2
ON t1.orderNumber = t2.orderNumber and t1.productLine <> t2.productLine
```

#### Visualization
The heatmap below showcases the percentage overlap between product lines to highlight purchasing trends and gaps:

![image](https://github.com/user-attachments/assets/7c8f08e3-e4e7-4a4e-9dec-4782ca6a66f0)

#### Key Findings
- **Strong Associations**:
   - **Classic Cars, Trucks and Buses, and Vintage Cars**: These categories frequently appear together, with notable overlaps (e.g., Trucks and Buses with Classic Cars: 52.17%). This suggests complementary interests and potential for cross-selling opportunities.

- **Low Associations**:
   - **Planes and Others**: Planes show minimal association with other product lines, indicating they appeal to a niche market and are primarily standalone purchases.

- **Strategic Insights**:
   - Leverage strong associations (e.g., Classic Cars with Vintage Cars) to create bundled promotions and encourage cross-selling.
   - Focus targeted marketing efforts on standalone products like Planes or explore untapped pairings between less-associated categories.

#### Recommendations
- **Cross-Selling**: Bundle strongly associated products to increase sales (e.g., Classic Cars and Trucks and Buses).
- **Niche Targeting**: Develop targeted marketing campaigns for standalone product categories, such as Planes.
- **Exploration**: Investigate potential opportunities for untapped product pairings to expand market reach.


### Credit Limit and Sales
**Task**: Breakdown of sales and show credit limit. Find out if customers with higher credit limits also have higher sales.

```SQL
with sales as
(
SELECT t1.orderNumber, t1.customerNumber, productCode, quantityOrdered, priceEach,
priceEach * quantityOrdered AS sales_value, creditLimit
FROM orders t1
INNER JOIN orderdetails t2
ON t1.orderNumber = t2.orderNumber
INNER JOIN customers t3
ON t1.customerNumber = t3.customerNumber
)

SELECT orderNumber, customerNumber, 
CASE WHEN creditLimit < 75000 THEN 'a: Less than $75k'
WHEN creditLimit BETWEEN 75000 and 100000 then 'b: $75k - $100k'
WHEN creditLimit BETWEEN 100000 and 150000 then 'c: $100k - $150k'
WHEN creditLimit > 150000 then 'd: Over $150k'
else 'Other'
end as creditlimit_group,
sum(sales_value) AS sales_value
FROM sales
GROUP BY orderNumber, customerNumber, creditlimit_group
```

#### Overview
This analysis explores the relationship between customer credit limits and sales performance. It categorizes customers by credit limit ranges and calculates the average sales value per order to identify trends.

#### Visualization
The bar chart below illustrates the average sales value per order for each credit limit range:

![image](https://github.com/user-attachments/assets/5bfdc029-4116-47fc-8875-28465d585a9a)

#### Key Findings
- **Higher Credit Limit, Higher Sales?**:
   - Customers with credit limits between **$100k - $150k** have the highest average sales value per order ($38,831.14).
   - Customers with credit limits **over $150k** show slightly lower average sales ($32,849.23) compared to the $100k - $150k range.
   - **Customers with credit limits below $75k** have the lowest average sales per order ($20,329.86), indicating a clear gap in spending capacity.

- **Insights**:
   - Customers in the **$100k - $150k** range seem to have the optimal balance between credit limit and spending behavior.
   - The lower sales for the **>$150k group** could suggest diminishing returns beyond a certain credit limit.

#### Recommendations
- **Target Marketing for Mid-Tier Customers**: Focus promotional efforts on customers with credit limits in the **$100k - $150k range**, as they exhibit the highest average sales value.
- **Encourage Growth in Low-Tier Customers**: Design strategies to incentivize higher spending for customers with credit limits below $75k, such as tailored discounts or credit upgrades.
- **Analyze High-Tier Behavior**: Investigate why customers with credit limits over $150k show lower average sales, as this could represent an untapped opportunity.


### Purchase Value Change
**Task**: Create a view showing customer sales and include a column that shows the difference in value from their previous sale. Are new customers that make their first purchase likely to spend more?

```SQL
WITH main_cte AS
(
SELECT orderNumber, orderDate, customerNumber, SUM(sales_value) AS sales_value
FROM
(SELECT t1.orderNumber, orderDate, t1.customerNumber, productCode, quantityOrdered * priceEach AS sales_value
FROM orders t1
INNER JOIN orderdetails t2
ON t1.orderNumber = t2.orderNumber) main
GROUP BY orderNumber, orderDate, customerNumber
),

sales_query AS
(
SELECT t1.*, customerName, ROW_NUMBER() OVER (PARTITION BY customerName ORDER BY orderDate) AS purchase_number,
LAG(sales_value) OVER (PARTITION BY customerName ORDER BY orderDate) as previous_sales_value
FROM main_cte AS t1
INNER JOIN customers t2
ON t1.customerNumber = t2.customerNumber
)

SELECT *, sales_value - previous_sales_value AS purchase_value_change
FROM sales_query
WHERE previous_sales_value IS NOT NULL
```

#### Overview
This analysis examines changes in customer purchase values over time, comparing each order's sales value to the customer's previous purchase. The data is segmented by **purchase number** (e.g., second purchase, third purchase) to identify trends in customer spending behavior.

#### Key Findings

- **Purchase Number Insights**:
   - **Second Purchase**: Shows varying behavior, with an average change of **-$2,648**, indicating a slight decrease after the first purchase.
   - **Third Purchase and Beyond**: Some customers increase their spending significantly (e.g., **+$19,945** on their third purchase), while others exhibit declines (e.g., **-$30,594** on their 14th purchase).

- **Positive and Negative Trends**:
   - **Upsell Potential**: Significant positive changes in certain purchases (e.g., third and eighth purchases) highlight opportunities to increase spending with targeted promotions.
   - **Declines in Later Purchases**: Larger negative changes (e.g., 14th and 23rd purchases) may indicate disengagement or reduced satisfaction.

- **Insights**:
   - Early purchases (second and third) show opportunities for growth, while later purchases require customer retention efforts.

#### Visualization
The table below highlights the average change in purchase value by purchase number:

![image](https://github.com/user-attachments/assets/21efbdcb-888b-46da-945d-39fee30dce85)

#### Recommendations
- **Focus on Early Purchases**: Engage customers after their first purchase with incentives or personalized offers to encourage higher spending on their second and third purchases.
- **Retain Long-Term Customers**: Monitor spending trends for long-term customers (10th purchase and beyond) to identify potential dissatisfaction and offer re-engagement campaigns.
- **Upsell Opportunities**: Leverage data on significant spending increases to tailor marketing for specific purchase stages.


### Sales By Office Location
**Task**: Show a view of where customers of each office are located.

```SQL
WITH main_cte AS
(
SELECT t1.orderNumber, t2.productCode, t2.quantityOrdered, t2.priceEach, 
t2.quantityOrdered * t2.priceEach AS sales_value,
t3.city AS customer_city, t3.country AS customer_country, t4.productLine, 
t6.city AS office_city, t6.country AS office_country
FROM orders t1
INNER JOIN orderdetails t2
ON t1.orderNumber = t2.orderNumber
INNER JOIN customers t3
ON t1.customerNumber = t3.customerNumber
INNER JOIN products t4
ON t2.productCode = t4.productCode
INNER JOIN employees t5
ON t3.salesRepEmployeeNumber = t5.employeeNumber
INNER JOIN offices t6
ON t5.officeCode = t6.officeCode
)

SELECT orderNumber, customer_city, customer_country, productLine,
office_city, office_country, SUM(sales_value) AS sales_value
FROM main_cte
GROUP BY orderNumber, customer_city, customer_country, productLine,
office_city, office_country
```

#### Overview
This analysis provides an overview of customer sales by country and product categories across different office locations. It highlights regional trends in sales and the distribution of product categories in each location.

#### Key Findings
- **Top Sales by Country**:
   - **Spain** leads in sales with over **$1 million**, followed by **France** and the **UK**.
   - Smaller sales contributions come from countries like **Ireland**, **Belgium**, and **Switzerland**.

- **Sales by Office Location**:
   - **USA** contributes the highest total sales value (**$3.48 million**), with a significant share in **Classic Cars** and **Vintage Cars**.
   - **France** ranks second (**$3.08 million**) with balanced contributions from various product categories, including **Planes** and **Trucks and Buses**.

- **Product Line Highlights**:
   - **Classic Cars** dominate across all locations, contributing nearly **$3.85 million** globally.
   - **Vintage Cars** and **Motorcycles** also make substantial contributions, especially in the USA and France.
   - **Planes** and **Trains** show minimal sales across all regions, suggesting a smaller customer interest.

- **Insights by Region**:
   - **Australia**: Strong performance in **Classic Cars** but lower sales in other categories.
   - **Japan**: Moderate overall sales, with a notable focus on **Classic Cars** and **Planes**.
   - **UK**: Balanced sales across categories but lower overall sales compared to the USA and France.

#### Visualization
- **Total Sales by Customer Country**: A bar chart showcases the sales contributions of top countries, with Spain leading.
- **Sales Distribution by Office Location**: A stacked bar chart shows the proportion of sales by product line for each office location.

![image](https://github.com/user-attachments/assets/82231bc7-87b9-402f-b5f4-6399bf37b77c)

![image](https://github.com/user-attachments/assets/a26663f9-3222-489c-842b-7a2625365879)

#### Recommendations
- **Regional Promotions**: Focus marketing efforts in top-performing countries like Spain, France, and the USA to capitalize on existing demand.
- **Category-Specific Campaigns**: Promote less popular categories (e.g., Planes and Trains) in regions where they show potential.
- **Leverage Top Categories**: Emphasize Classic Cars and Vintage Cars in all regions, given their consistently high performance.


### Late Shipping
**Task**: Shipping is delayed due to inclement weather. They could take up to 3 days to arrive. Give a list of affected orders.

```SQL
SELECT *,
date_add(shippedDate, INTERVAL 3 DAY) AS latest_arrival,
CASE WHEN date_add(shippedDate, INTERVAL 3 DAY) > requiredDate THEN 1 ELSE 0 END AS late_flag
FROM orders
WHERE (CASE WHEN date_add(shippedDate, INTERVAL 3 DAY) > requiredDate THEN 1 ELSE 0 END) = 1
```

#### Overview
This query identifies orders that are delayed due to inclement weather. Shipping delays of up to 3 days are considered, and orders where the adjusted shipping date exceeds the required date are flagged as late.

#### Key Findings
- **Delayed Orders**:
   - The query returns a list of orders where the adjusted shipping date exceeds the required delivery date by up to 3 days.
   - These orders are flagged with a `late_flag` to indicate their status.
- **Potential Impact**:
   - Delays could negatively affect customer satisfaction, especially for time-sensitive orders.
- **Insights**:
   - The `latest_arrival` field provides clarity on the adjusted expected arrival date.
   - Identifying these orders allows proactive communication with affected customers.

#### List of Late Shipments
- 

#### Recommendations
- **Proactive Communication**: Notify customers with delayed orders about the revised delivery date to manage expectations.
- **Process Improvements**: Evaluate shipping logistics to minimize delays during inclement weather.
- **Priority Handling**: For late orders, consider expedited handling to minimize customer impact.


### Over Credit Limit
**Task**: Give a breakdown of each customer and their sales. Include a money owed column to see if any customers have gone over credit limit.

```SQL
WITH cte_sales AS
(
SELECT 
orderDate, 
t1.customerNumber, 
t1.orderNumber,
customerName, 
productCode,
creditLimit,  
t2.quantityOrdered * t2.priceEach AS sales_value
FROM orders t1
INNER JOIN orderdetails t2
ON t1.orderNumber = t2.orderNumber
INNER JOIN customers t3
ON t1.customerNumber = t3.customerNumber
),

running_total_sales_cte AS
(
SELECT *, LEAD(orderDate) OVER (PARTITION BY customerNumber ORDER BY orderDate) AS next_order_date
FROM
	(
	SELECT orderDate, orderNumber, customerNumber, customerName, creditLimit, SUM(sales_value) AS sales_value
	FROM cte_sales
	GROUP BY orderDate, orderNumber, customerNumber, customerName, creditLimit
	) subquery
),

payments_cte AS
(
SELECT *
FROM payments
),

main_cte AS
(
SELECT t1.*,
SUM(sales_value) OVER (PARTITION BY t1.customerNumber ORDER BY orderDate) AS running_total_sales,
SUM(amount) OVER (PARTITION BY t1.customerNumber ORDER BY orderDate) AS running_total_payments
FROM running_total_sales_cte t1
LEFT JOIN payments_cte t2
ON t1.customerNumber = t2.customerNumber AND t2.paymentDate BETWEEN t1.orderDate AND CASE WHEN t1.next_order_date IS NULL THEN current_date ELSE next_order_date END
)

SELECT *, running_total_sales - running_total_payments AS money_owed,
creditLimit - (running_total_sales - running_total_payments) AS difference
FROM main_cte
```

#### Overview
This analysis examines customer sales and credit limits to identify customers who exceeded their credit limits. It calculates the running total of sales and payments for each customer and determines any outstanding balance (money owed) and whether it surpasses the credit limit.

#### Key Findings
- **Customers Over Credit Limit**:
   - The analysis identified several customers who exceeded their credit limits:
       - **Gifts4AllAges.com**
       - **The Sharp Gifts Warehouse**
       - **Tekni Collectables Inc.**
- **Money Owed**:
   - A calculated column (`money_owed`) highlights the amount each customer owes after deducting their payments from the running total of sales.
- **Credit Limit Violations**:
   - Another column (`difference`) shows how much the outstanding balance exceeds the credit limit, providing a clear measure of violation.

#### List of Customers Over Credit Limit
- 

#### Recommendations
- **Credit Policy Enforcement**: Ensure strict adherence to credit limits by setting automated alerts when customers approach their limit.
- **Payment Follow-Ups**: Follow up with customers who have outstanding balances to encourage timely payments and reduce risks.
- **Limit Adjustments**: For customers with frequent violations but strong sales history, consider reviewing and potentially increasing their credit limits to accommodate business needs.


## Setup and Usage
1. Open Classic Models Dashboard in Power BI to view and interact with dashboard.
2. Open Excel Workbook in Microsoft Excel to examine data and graphs.

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
- GitHub: github.com/NahimMK
- LinkedIn: linkedin.com/in/nahim-mk

## References
- Classic Models Sales dataset
- Power BI community for visualization inspirations
- MySQL documentation for query optimization techniques
