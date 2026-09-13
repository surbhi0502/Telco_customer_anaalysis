See the table
SELECT *
FROM churn_data
LIMIT 10;

SELECT COUNT(*) AS total_customers
FROM churn_data;

SELECT COUNT(DISTINCT customerID) AS unique_customers
FROM churn_data;

Churn Analysis
SELECT
    Churn,
    COUNT(*) AS customer_count
FROM churn_data
GROUP BY Churn;

SELECT
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM churn_data;

Contract Analysis
SELECT
    Contract,
    COUNT(*) AS total_customers
FROM churn_data
GROUP BY Contract
ORDER BY total_customers DESC;

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM churn_data
GROUP BY Contract
ORDER BY churn_rate DESC;

Revenue Analysis
SELECT
    ROUND(SUM(TotalCharges), 2) AS total_revenue
FROM churn_data;

SELECT
    ROUND(SUM(TotalCharges), 2) AS churned_customer_revenue
FROM churn_data
WHERE Churn = 'Yes';

SELECT
    Churn,
    COUNT(*) AS customers,
    ROUND(SUM(TotalCharges), 2) AS total_revenue,
    ROUND(AVG(TotalCharges), 2) AS average_revenue
FROM churn_data
GROUP BY Churn;

Monthly Charges

SELECT
    customerID,
    MonthlyCharges,
    TotalCharges,
    Contract,
    Churn
FROM churn_data
ORDER BY MonthlyCharges DESC
LIMIT 10;

Average tenure by churn
SELECT
    Churn,
    ROUND(AVG(tenure), 2) AS average_tenure
FROM churn_data
GROUP BY Churn;

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4-6 Years'
    END AS tenure_group,
    
    COUNT(*) AS total_customers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate

FROM churn_data
GROUP BY tenure_group
ORDER BY churn_rate DESC;

Customer Segmentation

SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM churn_data
GROUP BY InternetService
ORDER BY churn_rate DESC;

SELECT
    SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM churn_data
GROUP BY SeniorCitizen;

SELECT
    TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM churn_data
GROUP BY TechSupport
ORDER BY churn_rate DESC;

Advanced Business Queries

SELECT
    customerID,
    Contract,
    tenure,
    MonthlyCharges,
    TotalCharges
FROM churn_data
WHERE Churn = 'Yes'
  AND MonthlyCharges > 70
ORDER BY MonthlyCharges DESC;

SELECT
    customerID,
    Contract,
    tenure,
    MonthlyCharges,
    TotalCharges
FROM churn_data
WHERE Churn = 'Yes'
ORDER BY TotalCharges DESC
LIMIT 20;

SELECT
    customerID,
    tenure,
    Contract,
    MonthlyCharges,
    TotalCharges
FROM churn_data
WHERE Churn = 'Yes'
  AND tenure <= 12
ORDER BY tenure;