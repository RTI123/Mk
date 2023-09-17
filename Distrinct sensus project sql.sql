select*from  [District sensus]
select*from Dataset2
--1. count total row in dataset
select count(*)  as Total_row  from [District sensus]
--2. display distinct Sex_Ratio
select distinct Sex_Ratio from [District sensus]
--3. display dataset where State Bihar or manipur
select*from Dataset2
where State in('Bihar','Manipur')
--4. disply dataset where Area_km2>2000
select*from Dataset2
where Area_km2>2000
order by Area_km2 desc
--5 use order by to sort the dataset2
select*from Dataset2
order by Population desc
-- 6.find 10 most populated State
select top 10 State, max(Population) as population from Dataset2
group by State
order by population desc
--7.find 10 most poplualated District
select top 10 District , max(Population) pop_tion from Dataset2
group by District
order by pop_tion desc
--8. avg sex_Ratio of country 
select avg(Sex_Ratio) as avg_sexratio from [District sensus]
-- 9. use join query  to joint both the dataset
select Growth,sex_Ratio,Literacy,Area_km2 , Population from  [District sensus]
join Dataset2
on [District sensus].State=Dataset2.State 






