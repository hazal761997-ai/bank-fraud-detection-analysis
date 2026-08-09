-- 04_high_risk_transactions.sql
-- Top 20 high-risk fraudulent transactions above $500

SELECT
    t.tx_id,
    t.customer_id,
    t.amount,
    t.merchant_category,
    t.timestamp,

    CASE
        WHEN EXTRACT(HOUR FROM t.timestamp::timestamp)
             BETWEEN 0 AND 5
        THEN 'Night'
        ELSE 'Day'
    END AS time_period

FROM transactions t

JOIN fraud_labels fl
    ON t.tx_id = fl.tx_id

WHERE fl.is_fraud = 1
  AND t.amount > 500

ORDER BY t.amount DESC

LIMIT 20;
