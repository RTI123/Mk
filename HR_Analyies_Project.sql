select*from [HR Dataset]
-- find out unique Age_group, BusinessTravel,Department,EducationField,

select distinct(AgeGroup) from [HR Dataset]
select distinct(BusinessTravel) from [HR Dataset]
select distinct (Department) from [HR Dataset]
select distinct EducationField from [HR Dataset]

--Find out  department wise EducationField wise ,Age_group  wise, jobRole wise Total number of EmployeeNumber

select Department ,count(EmployeeCount) as Total_employee from [HR Dataset]
group by Department
order by Total_employee desc

select EducationField, count(EmployeeCount) as Total from [HR Dataset]
group by EducationField
order by Total desc

select AgeGroup ,count(EmployeeCount) as Total_count from [HR Dataset]
group by AgeGroup
order by Total_count desc

select JobRole, COUNT(EmployeeCount) as Total_count from [HR Dataset]
group by JobRole
order by Total_count desc
-- find out Total count of' Male' and 'Female' employee MartitalStatus wise 

select MaritalStatus, count(EmployeeCount)  as M_Total from [HR Dataset]
WHERE Gender='Male'
group by MaritalStatus
ORDER BY M_Total desc


select MaritalStatus,count(EmployeeCount)  as F_Total from [HR Dataset]
WHERE Gender='Female'
group by MaritalStatus
order by F_Total DESC

-- unique data Distance from home 

select distinct DistanceFromHome FROM [HR Dataset]
-- maximum distance , Monthlyrate, MonthlyIncome

select max(DistanceFromHome) as Max_Distance, Max(MonthlyRate) as max_Monthlyrate, max(MonthlyIncome) as Max_monthlyIncome from [HR Dataset]

-- Avg  distance , Monthlyrate, MonthlyIncome

select avg(DistanceFromHome) as Avg_Distance, avg(MonthlyRate) as avg_Monthlyrate, avg(MonthlyIncome) as avg_monthlyIncome from [HR Dataset]

--Minimum distance, Monthlyrate, MonthlyIncome

select min(DistanceFromHome) as min_Distance,MIN(MonthlyRate) as min_Monthlyrate, min(MonthlyIncome) as min_monthlyIncome from [HR Dataset]

-- find all record age between 18 to 30 

select* from [HR Dataset]
where age between 18 and 30

-- find out employee count by YearINcompany,YearATcompany, YearinCurrentRole, yearSinceLastpromotion

select YearsATcompany ,count(EmployeeCount) as Emp_no from [HR Dataset]
group by YearsAtCompany
order by Emp_no desc

select YearsInCurrentRole ,count(EmployeeCount) as Emp_no from [HR Dataset]
group by YearsInCurrentRole
order by Emp_no desc

select YearsSinceLastPromotion ,count(EmployeeCount) as Emp_no from [HR Dataset]
group by YearsSinceLastPromotion
order by Emp_no desc

select TotalWorkingYears ,count(EmployeeCount) as Emp_no from [HR Dataset]
group by TotalWorkingYears
order by Emp_no desc

-- count of over time  wise employee

select OverTime, count(EmployeeCount) as T_no from [HR Dataset]
group by OverTime
order by T_no DESC
















