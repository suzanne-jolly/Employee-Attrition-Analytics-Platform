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
* `ibm_data dim_employee`: Core demographic data (Age, Gender, Marital Status, Education)
* `ibm_data dim_job_role`: Department, Role, Travel Frequency, Commute Distance
* `ibm_data fact_compensation`: Salary, Hourly Rates, Stock Options, Salary Hikes
* `ibm_data fact_satisfaction`: Environment, Job, and Relationship Satisfaction scores
* `ibm_data fact_tenure`: Years at Company, Promotion History, Manager History, Attrition Status

---

### Key Performance Indicators (KPIs)
I made exact DAX measures to track these numbers across the pages:
* **Overview:** Total Employees (1470), Attrition Rate (16.12%), Active Employees (1233), Avg Income ($6.50K), Avg Tenure (7.01 years)
* **Demographics:** Avg Age (36.92 years), Avg Commute Distance (9.19 km), Number of Departments (3)
* **Compensation:** Avg Salary Hike (15.21%), High Salary Attrition (25), Avg Hourly Rate ($65.89)
* **Satisfaction & Performance:** Environment (2.72), Job (2.73), Relationship (2.71), Work-Life Balance (2.76)

---

###  Executive Dashboards (4 Views)
*(Note: Click on the images to enlarge)*

#### 1. Overview & Attrition Analysis
Shows a quick summary of turnover rates. It breaks down the people who left the company by their Department, Gender, Education Field, and Age.
> <img width="1117" height="623" alt="overview" src="https://github.com/user-attachments/assets/266dae7f-1773-47e2-87a7-8c00ed8d6f58" />



#### 2. Workforce Demographics
Looks at who the workers are. It shows Job Roles, Gender splits, Education vs. Marital Status, Commute Distances, and Business Travel habits.
> <img width="1120" height="626" alt="demographics" src="https://github.com/user-attachments/assets/94b49e33-8d89-4036-bcca-3741fff220a6" />


#### 3. Compensation & Benefits
Shows how pay works at the company. It tracks Salary Growth by Experience, Average Pay by Role and Department, and checks who gets Overtime and Stock Options.
> <img width="1116" height="625" alt="compensation" src="https://github.com/user-attachments/assets/9e2dc5a1-d822-4e11-aad1-b4f657371739" />


#### 4. Employee Satisfaction & Performance
Shows if unhappy workers are the ones leaving. It maps out satisfaction scores by Job Role, charts Attrition against Job Satisfaction and Work-Life Balance, and shows the Performance Rating spread.
> <img width="1116" height="623" alt="satisfaction" src="https://github.com/user-attachments/assets/de15a5cb-568f-4d81-af7a-bfa351139f05" />


---

###  How to Run This Project
1. **Database Setup:** Execute the `ETL_Setup.sql` script in your MySQL environment to build the schema and populate the tables with the IBM dataset.
2. **Dashboard Viewing:** Open `HR Analytics.pbix` in Power BI Desktop.
3. **Data Connection:** In Power BI, update the Data Source Settings to point to your local MySQL server credentials.
