/* =========================================================
   03_feature_engineering.sql
   Creates the analysis view with engineered categories
========================================================= */

-- Recreate view safely
IF OBJECT_ID('dbo.vw_diabetes_analysis', 'V') IS NOT NULL
    DROP VIEW dbo.vw_diabetes_analysis;
GO

CREATE VIEW dbo.vw_diabetes_analysis AS
SELECT
    *,

    CASE
        WHEN bmi >= 30 THEN 'Obese'
        WHEN bmi >= 25 THEN 'Overweight'
        ELSE 'Normal'
    END AS bmi_category,

    CASE
        WHEN fasting_glucose_level >= 126 THEN 'Diabetic Range'
        WHEN fasting_glucose_level >= 100 THEN 'Prediabetic'
        ELSE 'Normal'
    END AS glucose_category

FROM dbo.diabetes_clean;
GO

-- Quick validation
SELECT TOP 10 *
FROM dbo.vw_diabetes_analysis;