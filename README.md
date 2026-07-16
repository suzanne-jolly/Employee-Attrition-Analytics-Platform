# Employee Attrition Analytics Platform

###  Project Overview
Engineered an end-to-end HR analytics dashboard to analyze workforce demographics, compensation, and employee turnover. This project integrates 5 datasets to provide actionable insights for workforce planning and attrition analysis.

**Tools & Technologies Used:**
* **Database Management:** MySQL
* **Business Intelligence:** Power BI
* **Data Modeling:** Star Schema (1 Fact Table, 4 Dimension Tables)
* **Calculations:** DAX (12+ Measures)

---

###  Data Architecture & Pipeline
The raw IBM HR dataset was transformed using SQL to build a robust relational model. Foreign key constraints were established to link the main dimension table to multiple fact and role tables.

**Star Schema Structure:**
* `dim_employee`: Core demographic data (Age, Gender, Marital Status, Education)
* `dim_job_role`: Department, Role, Travel Frequency, Commute Distance
* `fact_compensation`: Salary, Hourly Rates, Stock Options, Salary Hikes
* `fact_satisfaction`: Environment, Job, and Relationship Satisfaction scores
* `fact_tenure`: Years at Company, Promotion History, Manager History, Attrition Status

---

###  Key Performance Indicators (10+ KPIs)
Developed interactive dashboards tracking critical HR metrics:
* **Workforce Demographics:** Total Employees, Active Employees, Average Age
* **Turnover Metrics:** Attrition Count, Attrition Rate, Attrition by Gender & Department
* **Performance & Compensation:** Average Monthly Income, Average Tenure, Job Satisfaction Average, Recent Promotion Rates

---

###  Executive Dashboards (4 Views)
*(Note: Click on the images to enlarge)*

#### 1. Overview & Attrition Analysis
Provides a high-level view of overall employee turnover rates, breaking down attrition by department and gender.
> <img width="1117" height="623" alt="overview" src="https://github.com/user-attachments/assets/266dae7f-1773-47e2-87a7-8c00ed8d6f58" />



#### 2. Workforce Demographics
Tracks the composition of the workforce, mapping marital status, education fields, and age distributions.
> <img width="1120" height="626" alt="demographics" src="https://github.com/user-attachments/assets/94b49e33-8d89-4036-bcca-3741fff220a6" />


#### 3. Compensation & Salaries
Analyzes the financial health of the workforce, plotting total working years against monthly income and comparing average salaries across job roles.
> <img width="1116" height="625" alt="compensation" src="https://github.com/user-attachments/assets/9e2dc5a1-d822-4e11-aad1-b4f657371739" />


#### 4. Employee Satisfaction & Performance
Monitors the internal health of the company by analyzing survey results on environment, job, and relationship satisfaction alongside performance ratings.
> <img width="1116" height="623" alt="satisfaction" src="https://github.com/user-attachments/assets/de15a5cb-568f-4d81-af7a-bfa351139f05" />


---

###  How to Run This Project
1. **Database Setup:** Execute the `ETL_Setup.sql` script in your MySQL environment to build the schema and populate the tables with the IBM dataset.
2. **Dashboard Viewing:** Open `HR_Attrition_Dashboard.pbix` in Power BI Desktop.
3. **Data Connection:** In Power BI, update the Data Source Settings to point to your local MySQL server credentials.
