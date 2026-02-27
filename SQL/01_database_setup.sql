/* =========================================================
   01_database_setup.sql
   Project: Diabetes Risk Analytics
   Tool: SQL Server (SSMS)
   Notes:
   - Assumes you imported the CSV into a table named: dbo.diabetes_risk_dataset
     (via Tasks > Import Flat File)
========================================================= */

-- Optional: create/use a dedicated database (uncomment if you want)
-- CREATE DATABASE DiabetesRiskAnalyticsDB;
-- GO

-- USE DiabetesRiskAnalyticsDB;
-- GO

-- Confirm the source table exists
IF OBJECT_ID('dbo.diabetes_risk_dataset', 'U') IS NULL
BEGIN
    PRINT 'ERROR: dbo.diabetes_risk_dataset not found. Import the CSV first (Tasks > Import Flat File).';
END
ELSE
BEGIN
    PRINT 'OK: dbo.diabetes_risk_dataset found.';
END;

-- Quick look at the raw data
SELECT TOP 10 *
FROM dbo.diabetes_risk_dataset;

-- Row count check
SELECT COUNT(*) AS total_rows
FROM dbo.diabetes_risk_dataset;