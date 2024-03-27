--q1
SELECT (COUNT(DISTINCT a.customer_id) / 
        COUNT(DISTINCT customer_id)) * 100 AS percentage_paid_both
FROM CustomerPurchases a
JOIN CustomerPurchases b ON a.customer_id = b.customer_id
WHERE a.product_id = 'Product A' 
  AND b.product_id = 'Product B' 
  AND a.payment_status = 'paid'
  AND b.payment_status = 'paid';


--q2
SELECT (SUM(CASE 
               WHEN s.sale_date = p.start_date OR s.sale_date = p.end_date 
               THEN s.amount
               ELSE 0 
            END) / SUM(s.amount)) * 100 AS percentage_first_last_day
FROM Sales s
JOIN Promotions p ON s.promotion_id = p.promotion_id;



--q3
SELECT b.product_id, COUNT(b.product_id) as purchase_count
FROM CustomerPurchases a
JOIN CustomerPurchases b ON a.customer_id = b.customer_id 
                        AND a.purchase_date = b.purchase_date
WHERE a.product_id = 'Product A' 
  AND b.product_id != 'Product A' 
GROUP BY b.product_id
ORDER BY purchase_count DESC
LIMIT 5; 


