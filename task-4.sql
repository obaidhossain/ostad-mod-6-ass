SELECT c.name AS customer_name, SUM(oi.quantity * p.price) AS total_purchase_amount
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.product_id = p.product_id
GROUP BY c.name
ORDER BY total_purchase_amount DESC
LIMIT 5;
