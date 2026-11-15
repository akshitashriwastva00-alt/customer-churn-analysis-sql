-- 1. Total customers
SELECT COUNT(*) AS total_customers
FROM customers_churn;

-- 2. Active customers
SELECT COUNT(*) AS active_customers
FROM customers_churn
WHERE churn_status = 'Active';

-- 3. Churned customers
SELECT COUNT(*) AS churned_customers
FROM customers_churn
WHERE churn_status = 'Churned';

-- 4. Overall churn rate
SELECT
    ROUND(
        COUNT(*) FILTER (
            WHERE churn_status = 'Churned'
        ) * 100.0 / COUNT(*), 2
    ) AS churn_rate
FROM customers_churn;
