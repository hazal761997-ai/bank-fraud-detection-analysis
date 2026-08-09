-- 02_amount_bucket.sql
-- Fraud rate analysis by transaction amount risk bucket

SELECT
    CASE
        WHEN t.amount <= 200 THEN 'Low Risk'
        WHEN t.amount <= 800 THEN 'Medium Risk'
        ELSE 'High Risk'
    END AS risk_bucket,

    COUNT(t.tx_id) AS total_transactions,

    SUM(fl.is_fraud) AS fraud_count,

    ROUND(
        SUM(fl.is_fraud)::numeric / COUNT(t.tx_id) * 100,
        2
    ) AS fraud_rate_pct

FROM transactions t
JOIN fraud_labels fl
    ON t.tx_id = fl.tx_id

GROUP BY risk_bucket

ORDER BY
    CASE
        WHEN risk_bucket = 'Low Risk' THEN 1
        WHEN risk_bucket = 'Medium Risk' THEN 2
        WHEN risk_bucket = 'High Risk' THEN 3
    END;
