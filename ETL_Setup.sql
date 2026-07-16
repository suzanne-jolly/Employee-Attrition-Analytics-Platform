USE ibm_data;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS fact_tenure;
DROP TABLE IF EXISTS fact_satisfaction;
DROP TABLE IF EXISTS fact_compensation;
DROP TABLE IF EXISTS dim_job_role;
DROP TABLE IF EXISTS dim_employee;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE ibmrawdata
CHANGE COLUMN `ï»¿Age` Age INT;

CREATE TABLE dim_employee (
    EmployeeNumber INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(20),
    MaritalStatus VARCHAR(20),
    Education INT,
    EducationField VARCHAR(50),
    Over18 VARCHAR(5)
);

INSERT INTO dim_employee
(EmployeeNumber, Age, Gender, MaritalStatus, Education, EducationField, Over18)
SELECT
EmployeeNumber,
Age,
Gender,
MaritalStatus,
Education,
EducationField,
Over18
FROM ibmrawdata;

CREATE TABLE dim_job_role (
    EmployeeNumber INT PRIMARY KEY,
    Department VARCHAR(50),
    JobRole VARCHAR(50),
    JobLevel INT,
    BusinessTravel VARCHAR(50),
    DistanceFromHome INT,
    FOREIGN KEY (EmployeeNumber)
    REFERENCES dim_employee(EmployeeNumber)
);

INSERT INTO dim_job_role
(EmployeeNumber, Department, JobRole, JobLevel, BusinessTravel, DistanceFromHome)
SELECT
EmployeeNumber,
Department,
JobRole,
JobLevel,
BusinessTravel,
DistanceFromHome
FROM ibmrawdata;

CREATE TABLE fact_compensation (
    EmployeeNumber INT PRIMARY KEY,
    MonthlyIncome INT,
    MonthlyRate INT,
    DailyRate INT,
    HourlyRate INT,
    PercentSalaryHike INT,
    StockOptionLevel INT,
    OverTime VARCHAR(5),
    FOREIGN KEY (EmployeeNumber)
    REFERENCES dim_employee(EmployeeNumber)
);

INSERT INTO fact_compensation
(EmployeeNumber, MonthlyIncome, MonthlyRate, DailyRate, HourlyRate, PercentSalaryHike, StockOptionLevel, OverTime)
SELECT
EmployeeNumber,
MonthlyIncome,
MonthlyRate,
DailyRate,
HourlyRate,
PercentSalaryHike,
StockOptionLevel,
OverTime
FROM ibmrawdata;

CREATE TABLE fact_satisfaction (
    EmployeeNumber INT PRIMARY KEY,
    EnvironmentSatisfaction INT,
    JobSatisfaction INT,
    RelationshipSatisfaction INT,
    WorkLifeBalance INT,
    JobInvolvement INT,
    PerformanceRating INT,
    FOREIGN KEY (EmployeeNumber)
    REFERENCES dim_employee(EmployeeNumber)
);

INSERT INTO fact_satisfaction
(EmployeeNumber, EnvironmentSatisfaction, JobSatisfaction, RelationshipSatisfaction, WorkLifeBalance, JobInvolvement, PerformanceRating)
SELECT
EmployeeNumber,
EnvironmentSatisfaction,
JobSatisfaction,
RelationshipSatisfaction,
WorkLifeBalance,
JobInvolvement,
PerformanceRating
FROM ibmrawdata;

CREATE TABLE fact_tenure (
    EmployeeNumber INT PRIMARY KEY,
    Attrition VARCHAR(10),
    TotalWorkingYears INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT,
    NumCompaniesWorked INT,
    TrainingTimesLastYear INT,
    FOREIGN KEY (EmployeeNumber)
    REFERENCES dim_employee(EmployeeNumber)
);

INSERT INTO fact_tenure
(EmployeeNumber, Attrition, TotalWorkingYears, YearsAtCompany, YearsInCurrentRole, YearsSinceLastPromotion, YearsWithCurrManager, NumCompaniesWorked, TrainingTimesLastYear)
SELECT
EmployeeNumber,
Attrition,
TotalWorkingYears,
YearsAtCompany,
YearsInCurrentRole,
YearsSinceLastPromotion,
YearsWithCurrManager,
NumCompaniesWorked,
TrainingTimesLastYear
FROM ibmrawdata;

SHOW TABLES;
drop table if exists test_table;

SELECT COUNT(*) FROM dim_employee;
SELECT COUNT(*) FROM dim_job_role;
SELECT COUNT(*) FROM fact_compensation;
SELECT COUNT(*) FROM fact_satisfaction;
SELECT COUNT(*) FROM fact_tenure;