-- 8. Churn rate by customer tenure
SELECT
    CASE
        WHEN tenure_months BETWEEN 0 AND 6 THEN '0-6 Months'
        WHEN tenure_months BETWEEN 7 AND 12 THEN '7-12 Months'
        WHEN tenure_months BETWEEN 13 AND 24 THEN '13-24 Months'
        ELSE 'Above 24 Months'
    END AS tenure_group,
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
GROUP BY tenure_group
ORDER BY churn_rate DESC;


-- 10. Churn rate by payment failures
SELECT
    CASE
        WHEN payment_failures = 0 THEN 'No Failures'
        WHEN payment_failures = 1 THEN '1 Failure'
        ELSE '2+ Failures'
    END AS payment_failure_group,
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
GROUP BY payment_failure_group
ORDER BY churn_rate DESC;


-- 11. Churn rate by customer inactivity
SELECT
    CASE
        WHEN days_since_last_login BETWEEN 0 AND 7 THEN '0-7 Days'
        WHEN days_since_last_login BETWEEN 8 AND 30 THEN '8-30 Days'
        WHEN days_since_last_login BETWEEN 31 AND 60 THEN '31-60 Days'
        ELSE 'Above 60 Days'
    END AS inactivity_group,
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
GROUP BY inactivity_group
ORDER BY churn_rate DESC;


-- 12. Churn rate by support tickets
SELECT
    CASE
        WHEN support_tickets = 0 THEN 'No Tickets'
        WHEN support_tickets BETWEEN 1 AND 2 THEN '1-2 Tickets'
        ELSE '3+ Tickets'
    END AS support_ticket_group,
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
GROUP BY support_ticket_group
ORDER BY churn_rate DESC;
