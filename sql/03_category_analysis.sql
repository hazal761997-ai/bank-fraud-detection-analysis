-- 03_category_analysis.sql
-- Fraud profile by merchant category

SELECT
    t.merchant_category,

    COUNT(t.tx_id) AS total_transactions,

    SUM(fl.is_fraud) AS fraud_count,

    ROUND(
        SUM(fl.is_fraud)::numeric / COUNT(t.tx_id) * 100,
        2
    ) AS fraud_rate_pct,

    ROUND(
        AVG(t.amount)::numeric,
        2
    ) AS avg_transaction_amount

FROM transactions t
JOIN fraud_labels fl
    ON t.tx_id = fl.tx_id

GROUP BY t.merchant_category

ORDER BY fraud_rate_pct DESC;
