--q1
SELECT COUNT(DISTINCT user_id) AS mau
FROM UserActivity 
WHERE activity_date >= '2024-01-01' 
  AND activity_date < '2024-02-01'; 



--q2
SELECT SUM(amount) AS total_revenue
FROM Sales
WHERE sale_date >= '2024-01-01' 
  AND sale_date < '2024-02-01';


--q3
SELECT p.category_id, AVG(s.amount) AS avg_sale_amount
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
WHERE s.sale_date >= '2024-01-01' 
  AND s.sale_date < '2024-02-01'
GROUP BY p.category_id; 


--q4
SELECT COUNT(*) AS new_users
FROM Users
WHERE join_date >= '2024-01-01' 
  AND join_date < '2024-02-01'; 


--q5
SELECT p.category_id, SUM(s.amount) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
WHERE s.sale_date >= '2024-01-01' 
  AND s.sale_date < '2024-02-01'
GROUP BY p.category_id
ORDER BY total_sales DESC
LIMIT 1;
