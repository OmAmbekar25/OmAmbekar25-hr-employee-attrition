# HR Employee Attrition & Performance Analytics

This project analyzes HR employee data to understand patterns of attrition (employees leaving the company) and key drivers of performance. The goal is to help HR teams reduce unwanted attrition, identify high-risk segments, and make data-driven workforce decisions.

---

## 🔍 Objectives

- Analyze employee demographics, job roles, and satisfaction scores
- Identify factors correlated with attrition (e.g., overtime, salary, job role)
- Build a classification model to predict employee attrition
- Create a dashboard to help HR monitor attrition risk and workforce KPIs

---

## 🧱 Dataset

The dataset contains anonymized HR records with columns like:

- `EmployeeID`
- `Age`
- `Gender`
- `Department`
- `JobRole`
- `MonthlyIncome`
- `JobSatisfaction`
- `YearsAtCompany`
- `OverTime` (Yes/No)
- `Attrition` (Yes/No – target)

The file is stored at: `data/hr_employee_attrition.csv`.

---

## 🛠 Tech Stack

- **Python**: pandas, numpy, matplotlib, seaborn, scikit-learn
- **Jupyter Notebooks**
- **Machine Learning**: Logistic Regression / Random Forest
- **Power BI** (or Tableau) for dashboarding

---

## 📓 Project Structure

### 1️⃣ `01_data_cleaning_eda.ipynb`
- Load and inspect the dataset
- Handle missing values and data types
- Encode categorical variables for analysis
- Exploratory Data Analysis (EDA):
  - Distribution of age, income, experience
  - Attrition rates by department, gender, overtime, and job role
  - Correlation heatmap for numeric features

### 2️⃣ `02_attrition_modeling.ipynb`
- Train-test split
- Feature scaling (where needed)
- Baseline models:
  - Logistic Regression
  - Random Forest Classifier
- Model evaluation using:
  - Accuracy
  - Precision, Recall, F1-score
  - Confusion matrix
- Feature importance analysis (which factors drive attrition)

### 3️⃣ `03_performance_insights.ipynb`
- Aggregate metrics:
  - Attrition rate by department and job role
  - Average monthly income by attrition status
  - Satisfaction vs attrition visualizations
- Export aggregated tables for dashboard use (CSV)

---

## 📊 HR Attrition Dashboard

The Power BI report (`dashboards/hr_attrition_powerbi.pbix`) includes:

- **KPIs**:
  - Overall attrition rate
  - Headcount
  - Average monthly income
  - Average job satisfaction

- **Visuals**:
  - Attrition by department and job role
  - Attrition by age band & experience bucket
  - Attrition vs overtime and work-life balance
  - Filters for department, gender, and job role

---

## ✅ Key Insights (Example)

- Employees working overtime with low job satisfaction have a significantly higher attrition rate.
- Certain job roles and departments show consistently higher turnover.
- Mid-level experience employees (2–5 years) are at higher risk of leaving compared to freshers or very senior staff.

---

## 🚀 How to Use

1. Open the notebooks in `notebooks/` to follow the analysis pipeline.
2. Use the exported CSVs from the notebooks as data sources in Power BI.
3. Open `hr_attrition_powerbi.pbix` in Power BI Desktop to explore the dashboard.

---

## 📌 Disclaimer

This project is for educational and analytical demonstration purposes using anonymized HR data.
