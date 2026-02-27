/* =========================================================
   04_analysis_queries.sql
   Core analysis + reporting table creation (from your script)
========================================================= */

-- Risk Analysis
SELECT diabetes_risk_category, COUNT(*) AS patients
FROM dbo.vw_diabetes_analysis
GROUP BY diabetes_risk_category;

-- Average Risk Score By Gender
SELECT gender, CAST(AVG(diabetes_risk_score) AS DECIMAL(10,2)) AS avg_risk
FROM dbo.vw_diabetes_analysis
GROUP BY gender;

-- Risk vs BMI Category
SELECT bmi_category, CAST(AVG(diabetes_risk_score) AS DECIMAL(10,2)) AS avg_risk
FROM dbo.vw_diabetes_analysis
GROUP BY bmi_category;

-- Impact of Family History (fixed from vw_diabetes_ana... typo)
SELECT family_history_diabetes,
       CAST(AVG(diabetes_risk_score) AS DECIMAL(10,2)) AS avg_risk
FROM dbo.vw_diabetes_analysis
GROUP BY family_history_diabetes;

-- High Risk Patients
SELECT *
FROM dbo.vw_diabetes_analysis
WHERE diabetes_risk_category = 'High Risk';

-- Reporting Table (recreate safely)
IF OBJECT_ID('dbo.diabetes_risk_summary', 'U') IS NOT NULL
    DROP TABLE dbo.diabetes_risk_summary;
GO

SELECT
    diabetes_risk_category,
    COUNT(*) AS patient_count,
    AVG(diabetes_risk_score) AS avg_score
INTO dbo.diabetes_risk_summary
FROM dbo.vw_diabetes_analysis
GROUP BY diabetes_risk_category;
GO

-- Does Obesity Matter
SELECT bmi_category,
       CAST(AVG(diabetes_risk_score) AS DECIMAL(10,2)) AS avg_risk
FROM dbo.vw_diabetes_analysis
GROUP BY bmi_category;

-- Does Sleep Matter
SELECT sleep_hours,
       CAST(AVG(diabetes_risk_score) AS DECIMAL(10,2)) AS avg_risk
FROM dbo.vw_diabetes_analysis
GROUP BY sleep_hours
ORDER BY sleep_hours ASC;

-- Stress Impact
SELECT stress_level,
       CAST(AVG(diabetes_risk_score) AS DECIMAL(10,2)) AS avg_risk
FROM dbo.vw_diabetes_analysis
GROUP BY stress_level;