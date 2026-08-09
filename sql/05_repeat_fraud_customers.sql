-- 05_repeat_fraud_customers.sql
-- Customers with multiple fraudulent transactions

SELECT
    t.customer_id,

    COUNT(t.tx_id) AS fraud_transaction_count,

    SUM(t.amount) AS total_fraud_amount,

    ROUND(
        AVG(t.amount)::numeric,
        2
    ) AS avg_fraud_amount

FROM transactions t

JOIN fraud_labels fl
    ON t.tx_id = fl.tx_id

WHERE fl.is_fraud = 1

GROUP BY t.customer_id

HAVING COUNT(t.tx_id) > 1

ORDER BY fraud_transaction_count DESC;
