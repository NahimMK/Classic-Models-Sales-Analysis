/* Give a breakdown of each customer and their sales. Include a money owed column to see if
any customers have gone over credit limit. 
Results: Gifts4AllAges.com, The Sharp Gifts Warehouse, Tekni Collectables Inc. went over their
credit limits.
*/
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