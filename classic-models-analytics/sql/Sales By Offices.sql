/* Show a view of where customers of each office are located. */
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
