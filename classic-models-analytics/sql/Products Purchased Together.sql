/* Give a breakdown of what products are commonly purchased together and any products that
are rarely purchased together. */
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