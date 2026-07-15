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
> `![Overview Dashboard](images/overview.png)` 
*(Replace the line above with the actual path to your screenshot once uploaded)*

#### 2. Workforce Demographics
Tracks the composition of the workforce, mapping marital status, education fields, and age distributions.
> `![Demographics Dashboard](images/demographics.png)`

#### 3. Compensation & Salaries
Analyzes the financial health of the workforce, plotting total working years against monthly income and comparing average salaries across job roles.
> `![Compensation Dashboard](images/compensation.png)`

#### 4. Employee Satisfaction & Performance
Monitors the internal health of the company by analyzing survey results on environment, job, and relationship satisfaction alongside performance ratings.
> `![Satisfaction Dashboard](images/satisfaction.png)`

---

###  How to Run This Project
1. **Database Setup:** Execute the `ETL_Setup.sql` script in your MySQL environment to build the schema and populate the tables with the IBM dataset.
2. **Dashboard Viewing:** Open `HR_Attrition_Dashboard.pbix` in Power BI Desktop.
3. **Data Connection:** In Power BI, update the Data Source Settings to point to your local MySQL server credentials.
