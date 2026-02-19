# 📊 E-Commerce Customer Segmentation & Revenue Intelligence

## 🚀 Project Overview
This project presents an end-to-end data analytics workflow on an e-commerce dataset to understand customer behavior, identify high-value customers, analyze churn risk, and generate business insights through interactive visualization.

The project covers the full analytics pipeline from data cleaning → feature engineering → segmentation → KPI analysis → dashboard creation.

---

## 🎯 Project Objectives
- Perform customer segmentation using RFM Analysis
- Identify revenue-contributing customer groups
- Detect churn-risk customers
- Calculate key business KPIs
- Build an interactive Tableau dashboard

---

## 🛠️ Tools & Technologies Used

| Category | Tools |
|----------|------|
| Programming | Python (Pandas, NumPy) |
| Database | PostgreSQL (SQL) |
| Data Analysis | Excel |
| Visualization | Tableau |
| Version Control | GitHub |

---

## 📂 Project Workflow

### 1️⃣ Data Cleaning (Python)
- Removed missing Customer IDs
- Filtered cancelled transactions
- Eliminated negative quantities and prices
- Created revenue column

---

### 2️⃣ Feature Engineering
- Aggregated transactional data at customer level
- Calculated:
  - Total Orders
  - Total Revenue
  - Purchase Frequency
  - First & Last Purchase Dates

---

### 3️⃣ RFM Segmentation
Customers were segmented based on:

- Recency → Days since last purchase  
- Frequency → Number of orders  
- Monetary → Total spending  

Customers were categorized into:
- High Value
- Medium Value
- Low Value

---

### 4️⃣ SQL Data Analysis
Performed advanced SQL operations including:

- GROUP BY aggregation
- CTEs (Common Table Expressions)
- Window Functions (Ranking customers)
- JOINs for relational analysis

---

### 5️⃣ KPI Analysis (Excel)
Calculated key business metrics:

- Average Order Value (AOV)
- Customer Lifetime Value (CLV)
- Customer Retention Rate

---

### 6️⃣ Tableau Dashboard
Built an interactive dashboard showing:

- Revenue contribution by segment
- Customer distribution analysis
- Top customers by revenue
- Churn risk analysis using recency distribution

---

## 📊 Key Business Insights

- High-value customers contribute the majority of revenue
- A large portion of customers fall into low-value segments
- Significant number of customers show high recency indicating churn risk
- Top customers generate disproportionate revenue

---

## 🖼️ Dashboard Preview

![Dashboard](tableau%20dashboard/dashboard.png)

---

## 📁 Repository Structure
