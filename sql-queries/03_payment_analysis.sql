-- 7. Churn rate by payment method
SELECT
    payment_method,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn_status = 'Churned'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn_status = 'Churned'
        ) * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM customers_churn
GROUP BY payment_method
ORDER BY churn_rate DESC;


-- 9. Churn rate by auto-renew status
SELECT
    auto_renew,
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (
        WHERE churn_status = 'Churned'
    ) AS churned_customers,
    ROUND(
        COUNT(*) FILTER (
            WHERE churn_status = 'Churned'
        ) * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM customers_churn
GROUP BY auto_renew
ORDER BY churn_rate DESC;
