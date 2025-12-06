CREATE TABLE hr_employees (
    EmployeeID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(16),
    Department VARCHAR(64),
    JobRole VARCHAR(128),
    MonthlyIncome INT,
    JobSatisfaction INT,
    EnvironmentSatisfaction INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    OverTime VARCHAR(8),
    Attrition VARCHAR(8)
);

SELECT
    Department,
    COUNT(*) AS EmployeeCount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    AVG(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0.0 END) AS AttritionRate
FROM hr_employees
GROUP BY Department
ORDER BY AttritionRate DESC;

SELECT
    JobRole,
    COUNT(*) AS EmployeeCount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    AVG(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0.0 END) AS AttritionRate
FROM hr_employees
GROUP BY JobRole
ORDER BY AttritionRate DESC;

SELECT
    OverTime,
    COUNT(*) AS EmployeeCount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    AVG(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0.0 END) AS AttritionRate
FROM hr_employees
GROUP BY OverTime
ORDER BY AttritionRate DESC;

SELECT
    CASE
        WHEN MonthlyIncome < 3000 THEN 'VeryLow'
        WHEN MonthlyIncome BETWEEN 3000 AND 5999 THEN 'Low'
        WHEN MonthlyIncome BETWEEN 6000 AND 8999 THEN 'Medium'
        WHEN MonthlyIncome BETWEEN 9000 AND 11999 THEN 'High'
        ELSE 'VeryHigh'
    END AS IncomeBand,
    COUNT(*) AS EmployeeCount,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    AVG(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0.0 END) AS AttritionRate
FROM hr_employees
GROUP BY
    CASE
        WHEN MonthlyIncome < 3000 THEN 'VeryLow'
        WHEN MonthlyIncome BETWEEN 3000 AND 5999 THEN 'Low'
        WHEN MonthlyIncome BETWEEN 6000 AND 8999 THEN 'Medium'
        WHEN MonthlyIncome BETWEEN 9000 AND 11999 THEN 'High'
        ELSE 'VeryHigh'
    END
ORDER BY AttritionRate DESC;

SELECT
    Department,
    JobRole,
    AVG(JobSatisfaction) AS AvgJobSatisfaction,
    AVG(EnvironmentSatisfaction) AS AvgEnvironmentSatisfaction,
    AVG(WorkLifeBalance) AS AvgWorkLifeBalance
FROM hr_employees
GROUP BY Department, JobRole;
