SELECT product_id, product_name, list_price
FROM products
WHERE list_price>
(SELECT AVG(list_price)
FROM products
WHERE list_price > 0)
ORDER BY list_price DESC;
