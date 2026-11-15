-- 13. Churn rate by region
SELECT
    region,
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
GROUP BY region
ORDER BY churn_rate DESC;
