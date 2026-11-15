-- 5. Churn rate by subscription plan
SELECT
    subscription_plan,
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
GROUP BY subscription_plan
ORDER BY churn_rate DESC;


-- 6. Churn rate by contract type
SELECT
    contract_type,
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
GROUP BY contract_type
ORDER BY churn_rate DESC;
