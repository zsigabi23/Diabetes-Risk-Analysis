/* =========================================================
   02_data_cleaning.sql
   Creates a clean working table and adds data quality flags
========================================================= */

-- Recreate clean table safely
IF OBJECT_ID('dbo.diabetes_clean', 'U') IS NOT NULL
    DROP TABLE dbo.diabetes_clean;
GO

SELECT *
INTO dbo.diabetes_clean
FROM dbo.diabetes_risk_dataset;
GO

-- Add quality flag column
IF COL_LENGTH('dbo.diabetes_clean', 'data_quality_flag') IS NULL
BEGIN
    ALTER TABLE dbo.diabetes_clean
    ADD data_quality_flag VARCHAR(50);
END
GO

-- Populate quality flag
UPDATE dbo.diabetes_clean
SET data_quality_flag =
CASE
    WHEN bmi < 15 OR bmi > 60 THEN 'Check BMI'
    WHEN age < 18 OR age > 100 THEN 'Check Age'
    ELSE 'OK'
END;

-- Preview cleaned data
SELECT TOP 10 *
FROM dbo.diabetes_clean;

-- Basic missing values check
SELECT
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS missing_age,
    SUM(CASE WHEN bmi IS NULL THEN 1 ELSE 0 END) AS missing_bmi,
    SUM(CASE WHEN diabetes_risk_score IS NULL THEN 1 ELSE 0 END) AS missing_score
FROM dbo.diabetes_clean;

-- Range checks
SELECT MIN(age) AS min_age, MAX(age) AS max_age
FROM dbo.diabetes_clean;

SELECT MIN(bmi) AS min_bmi, MAX(bmi) AS max_bmi
FROM dbo.diabetes_clean;

SELECT MIN(blood_pressure) AS min_bp, MAX(blood_pressure) AS max_bp
FROM dbo.diabetes_clean;

-- Outlier check
SELECT *
FROM dbo.diabetes_clean
WHERE bmi > 60 OR bmi < 15;