# 🏦 Bank Fraud Detection & Risk Analytics

An end-to-end fraud detection project developed using **Google Sheets, SQL, Python, and Tableau**.

---
## 📑 Table of Contents

- [Project Overview](#-project-overview)
- [Business Problem](#-business-problem)
- [Dataset](#-dataset)
- [Tools & Technologies](#-tools--technologies)
- [SQL Analysis](#-sql-analysis)
- [Tableau Dashboard](#-tableau-dashboard)
- [Machine Learning](#-machine-learning)
- [Results](#-results)
- [Project Structure](#-project-structure)
- 
## 📌 Project Overview

Banks process thousands of transactions every day. Detecting fraudulent transactions quickly is critical to reduce financial losses.

In this project, I analyzed banking transactions, explored fraud patterns, built an interactive dashboard, and compared multiple fraud detection methods using statistical techniques and machine learning.

---

## 🎯 Business Problem

The Risk Management team wants to answer the following questions:

- Which customer segments have the highest fraud rates?
- Does transaction amount increase fraud risk?
- Which merchant categories are most vulnerable?
- Are night transactions riskier than daytime transactions?
- Which machine learning model detects fraud most accurately?

---

## 📊 Dataset

| Metric | Value |
|--------|-------|
| Transactions | 8,000 |
| Customers | 500 |
| Fraud Transactions | 497 |
| Fraud Rate | 6.21% |

---

## 🛠 Tools & Technologies

- Google Sheets
- SQL (PostgreSQL)
- Python
- Pandas
- Scikit-learn
- Tableau

---
### Google Sheets Analysis

The initial exploratory analysis was performed in Google Sheets.

Key tasks included:

- Data preparation and validation
- Combining customer and transaction information
- Creating fraud-related calculated fields
- Calculating fraud rates
- Segment-level analysis
- Pivot Table analysis

#### Exploratory Analysis

![Google Sheets EDA](images/google_sheets_eda.png)

#### Fraud Analysis

![Google Sheets Pivot Analysis](images/google_sheets_pivot.png)

## 🗄 SQL Analysis

Business questions answered using SQL:

- Fraud rate by customer segment
- Fraud rate by transaction amount
- Merchant category analysis
- High-risk transactions
- Repeat fraud customers

Technologies used:

- JOIN
- GROUP BY
- CASE WHEN
- Aggregate Functions
- ORDER BY
- 
  ## 📈 Tableau Dashboard

The interactive dashboard includes:

- Fraud Rate by Segment
- Fraud Amount by Category
- Monthly Fraud Trend
- Customer Risk Heatmap
- Amount vs Income Scatter Plot

Dashboard screenshots will be added after completion.

## 🤖 Machine Learning

Fraud detection models compared:

- IQR
- Z-Score
- Isolation Forest
- Logistic Regression
- Random Forest
- XGBoost

Model performance will be compared using:

- Precision
- Recall
- F1-score
- Confusion Matrix
- 
  ## 📊 Results

Final results will be added after completing the analysis.

The report will include:

- Key business insights
- Fraud patterns
- Dashboard screenshots
- Model comparison
- Business recommendations
- 
## 📂 Project Structure

```text
data/
sql/
python/
tableau/
googlesheet/
report/
```

---

## 🚀 Project Status

🚧 In Progress

This project is currently being completed step by step.

Upcoming sections:

- SQL Analysis
- Tableau Dashboard
- Machine Learning Models
- Final Business Report
