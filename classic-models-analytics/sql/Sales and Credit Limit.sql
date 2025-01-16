/* Breakdown of sales and show credit limit. Find out if customers with higher credit
limits also have higher sales. */
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