CREATE OR REPLACE VIEW classicmodels.sales_data_for_power_bi  AS

SELECT orderDate,
ord.orderNumber,
p.productName,
p.productLine,
c.customerName,
c.city AS customer_city,
c.country AS customer_country,
o.city AS office_city,
o.country AS office_country,
buyPrice, 
priceEach,
QuantityOrdered,
sum(QuantityOrdered) * sum(priceEach) as sales_value,
sum(buyPrice) * sum(quantityOrdered) as cost_of_sales

FROM classicmodels.orders ord
LEFT JOIN classicmodels.orderdetails od
ON ord.orderNumber = od.orderNumber
LEFT JOIN classicmodels.customers c
ON ord.customerNumber = c.customerNumber
LEFT JOIN classicmodels.products p
ON od.productCode = p.productCode

LEFT JOIN classicmodels.employees e
ON c.salesRepEmployeeNumber = e.employeeNumber
LEFT JOIN classicmodels.offices o
ON e.officeCode = o.officeCode
GROUP BY
orderDate,
ord.orderNumber,
p.productName,
p.productLine,
c.customerName,
c.city,
c.country,
o.city,
o.country,
buyPrice, 
priceEach,
QuantityOrdered
;
