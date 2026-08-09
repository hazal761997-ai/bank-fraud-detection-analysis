-- 01_segment_fraud.sql
-- Fraud rate analysis by customer segment

SELECT
    c.segment,
    COUNT(t.tx_id) AS total_transactions,
    SUM(fl.is_fraud) AS fraud_count,
    ROUND(
        SUM(fl.is_fraud)::numeric / COUNT(t.tx_id) * 100, 2) AS fraud_rate_pct
FROM customers c
JOIN transactions t
    ON c.customer_id = t.customer_id
JOIN fraud_labels fl
    ON t.tx_id = fl.tx_id
GROUP BY c.segment
ORDER BY fraud_rate_pct DESC;
