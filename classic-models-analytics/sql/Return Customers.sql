/* Create a view showing customer sales and include a column that shows the difference
in value from their previous sale. Are new customers that make their first purchase
likely to spend more? */


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