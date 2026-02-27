##🩺 Diabetes Risk Analytics

SQL Server + Power BI Healthcare Dashboard Project

📌 Project Overview

This project delivers an end-to-end healthcare analytics solution analyzing diabetes risk factors using SQL Server and Power BI.

The objective was to transform raw patient health data into actionable insights through structured data modeling, exploratory analysis, and an executive-level dashboard.

The final output is a single-page Power BI dashboard summarizing key health indicators, risk distribution, and lifestyle correlations.

---

🎯 Business Objective

To identify high-risk patient groups and understand the primary health and lifestyle drivers contributing to diabetes risk.

Key questions addressed:

What percentage of patients are high risk?

Which health metrics (BMI, glucose) drive risk?

How does age influence diabetes risk?

Does family history significantly impact outcomes?

What lifestyle behaviors correlate with elevated risk?

--

🛠 Tools & Technologies

SQL Server (SSMS)

Power BI

DAX

Data Modeling (Star Schema)

Data Cleaning & Validation

Exploratory Data Analysis

--

🏗 Project Workflow
1️⃣ Data Import & Validation

Imported raw CSV dataset into SQL Server

Verified row counts

Checked missing values and data types

Performed range validation for BMI, glucose, and age

2️⃣ Data Cleaning & Preparation

Created diabetes_clean table

Standardized categorical fields

Engineered age group segments

Prepared risk categorization fields

3️⃣ Analytical SQL Queries

Built structured analysis tables including:

Risk distribution summary

BMI averages by risk category

Age comparison across risk levels

Lifestyle factor breakdown

Family history impact

4️⃣ Power BI Dashboard Development

Designed a single-page executive dashboard highlighting:

Total Patients (6K)

Average BMI (32.94)

Average Glucose (106.11)

High Risk Count (2,245)

Risk Category Distribution

Age & BMI Comparison by Risk Level

Family History Breakdown

Average Stress Level (5.09)

(Values sourced from the dashboard report 

Diabetes Risk Analysis

)

--

📊 Key Insights

High Risk patients show significantly higher BMI and glucose averages.

Elevated glucose levels strongly correlate with risk category.

Older age groups exhibit higher risk distribution.

Family history increases the probability of elevated risk.

Lifestyle factors (stress, physical inactivity) show measurable impact.

--

📈 Dashboard Design Philosophy

The dashboard follows executive reporting principles:

Top-row KPI indicators

Clear risk segmentation visualization

Focused driver analysis

Clean layout with minimal clutter

Insight-driven chart titles

--

🧠 Skills Demonstrated

SQL data cleaning & transformation

Data modeling for BI tools

Analytical query design

KPI creation using DAX

Executive dashboard design

Insight storytelling

End-to-end analytics workflow

--

🚀 How to Reproduce

Create database in SQL Server.

Run SQL scripts in order:

01_database_setup.sql

02_data_cleaning.sql

03_feature_engineering.sql

04_analysis_queries.sql

Connect Power BI to SQL Server.

Build visuals using prepared tables and measures.

--

📂 Repository Contents

Raw dataset

SQL transformation scripts

Power BI dashboard (.pbix)

Exported dashboard PDF

Documentation

--

👩🏽‍💻 Author

Zolile Sigabi
Data Analytics Portfolio Project
