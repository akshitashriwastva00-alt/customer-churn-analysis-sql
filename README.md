# Customer Churn Analysis using SQL

## Project Overview
This project analyses customer churn data using PostgreSQL to identify customer behaviour patterns and factors associated with customer attrition.

The objective is to understand which customer segments have higher churn rates and provide data-driven recommendations to improve customer retention.

## Tools Used
- PostgreSQL
- pgAdmin
- SQL

## Dataset Overview
- Total records: 5,000 customers
- Total columns: 19
- Customer information includes subscription plans, contract types, payment methods, login activity, payment failures, support tickets, and churn status.

## Business Questions
1. What is the total number of customers?
2. How many customers are active?
3. How many customers have churned?
4. What is the overall churn rate?
5. Which subscription plan has the highest churn rate?
6. Which contract type has the highest churn rate?
7. Which payment method has the highest churn rate?
8. How does customer tenure relate to churn?
9. How does auto-renewal status relate to churn?
10. How do payment failures relate to churn?
11. How does customer inactivity relate to churn?
12. How do support tickets relate to churn?
13. Which region has the highest churn rate?

## Key Findings

- Total customers: 5,000
- Active customers: 4,164
- Churned customers: 836
- Overall churn rate: 16.72%
- Basic subscription plan has the highest churn rate at 21.38%.
- Monthly contracts have the highest churn rate at 18.16%.
- Customers with 2 or more payment failures have a churn rate of 28.50%.
- Customers inactive for more than 60 days have a churn rate of 45.76%.
- Customers with 3 or more support tickets have a churn rate of 28.69%.
- The East region has the highest churn rate at 18.32%.

## SQL Concepts Used
- SELECT and WHERE
- COUNT and aggregate functions
- GROUP BY and ORDER BY
- FILTER clause
- ROUND
- CASE WHEN
- Conditional aggregation
- Churn rate calculations

## Business Recommendations

1. Review the Basic subscription plan to understand why customers are leaving.
2. Investigate payment failures and improve payment support.
3. Introduce re-engagement campaigns for inactive customers.
4. Monitor customers who frequently raise support tickets.
5. Review monthly contract retention strategies.

## Project Structure

```text
customer-churn-analysis-sql/
│
├── README.md
│
└── sql-queries/
    ├── 01_customer_overview.sql
    ├── 02_subscription_analysis.sql
    ├── 03_payment_analysis.sql
    ├── 04_customer_behavior.sql
    └── 05_regional_analysis.sql
```

## Conclusion

This project demonstrates how SQL can be used to analyse customer data, calculate churn rates, identify customer segments with higher attrition, and generate actionable business insights.

The analysis provides a foundation for further exploration through interactive dashboards in Power BI.

---

**Author:** Akshita Shriwastva  
**Project:** Customer Churn Analysis using PostgreSQL
