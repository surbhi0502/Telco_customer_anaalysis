# Telco Customer Churn Analysis

## 📊 Project Overview

This project analyzes customer churn for a telecommunications company
to identify the key factors influencing customer retention and churn.

The analysis was performed using Python, MySQL, and Power BI.

## 🎯 Objectives

- Calculate the overall customer churn rate
- Identify customer segments with high churn
- Analyze churn by contract type
- Analyze churn by payment method
- Analyze churn by internet service
- Study the relationship between tenure and churn
- Analyze monthly charges and customer churn
- Identify potential customer retention opportunities

## 🛠️ Tools & Technologies

- Python
- Pandas
- Matplotlib
- Seaborn
- MySQL
- Power BI
- Jupyter Notebook

## 🔄 Project Workflow

1. Data Collection
2. Data Cleaning
3. Exploratory Data Analysis
4. SQL Analysis
5. Power BI Dashboard
6. Business Insights

## 🧹 Data Cleaning

- Checked missing values
- Checked duplicate records
- Converted `TotalCharges` from text to numeric
- Handled 11 missing `TotalCharges` values
- Verified data types

## 📈 Key Findings

- Overall customer churn rate: **26.54%**
- Customer retention rate: **73.46%**
- Month-to-month contracts show higher churn
- Customer tenure is associated with churn behavior
- Payment method and service-related factors influence churn

## 📊 Power BI Dashboard

### Executive Dashboard

![Dashboard Page 1](images/dashboard_page1.png)

### Churn Drivers

![Dashboard Page 2](images/dashboard_page2.png)

## 📁 Project Structure

- `data/` – Dataset
- `notebooks/` – Python analysis
- `sql/` – MySQL queries
- `powerbi/` – Power BI dashboard
- `images/` – Dashboard screenshots

## 💡 Business Recommendations

- Encourage customers to move from month-to-month contracts to longer-term plans
- Identify new customers at high risk of churn
- Improve customer support and security services
- Develop targeted retention campaigns for high-risk customer segments
