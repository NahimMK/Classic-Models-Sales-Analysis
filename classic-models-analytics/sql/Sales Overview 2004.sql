/* Provide an overview of all sales from 2004. Give a breakdown by product, country, and city and include the sales value, cost of sales, and net profit. */

SELECT t1.orderDate, t1.orderNumber, quantityOrdered, priceEach, productName, productLine, buyPrice, city, country
FROM orders t1
INNER JOIN orderdetails t2
ON t1.orderNumber = t2.orderNumber
INNER JOIN products t3
ON t2.productCode = t3.productCode
INNER JOIN customers t4
ON t1.customerNumber = t4.customerNumber
WHERE YEAR(orderDate) = 2004