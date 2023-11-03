select*from digital_campaign_Data
---What is the total number of rows in the dataset?

select count(*)  as total_data from digital_campaign_Data

--What is the total number of users recorded in the dataset?

select sum(Users) as total_user from digital_campaign_Data

--Calculate the average number of new users.

select avg(New_Users) as avg_new_user from digital_campaign_Data


--How many conversions were recorded in the dataset?
select sum(Conversions) as Total_Con_sions from digital_campaign_Data

--Find the highest number of sessions in a single entry.

select max(Sessions)  as max_Sessions from digital_campaign_Data

-- Determine the overall bounce rate across all entries.

select round(avg(Bounce_Rate),3) as overall_bounce from digital_campaign_Data
--Calculate the average number of pages per session.

select round(avg(Pages_Session),3) as _avg_page_session from digital_campaign_Data

-- remove null data 
delete from  digital_campaign_Data
where Avg_Session_Duration is null

--Find the date with the highest number of users.

select Date,Users from digital_campaign_Data
where Users=(Select max(Users) from digital_campaign_Data)

--What is the date with the lowest bounce rate?

select Date,Bounce_Rate from digital_campaign_Data
where Bounce_Rate=(select min(Bounce_Rate) from digital_campaign_Data)

--Calculate the total number of sessions for a specific date.


select Date,SUM(sessions) as Sessions from digital_campaign_Data
group by Date
order by Sessions desc
--What is the average bounce rate for entries with more than 100 sessions
select Round(Avg(Bounce_Rate),2) Avg_Bounce from digital_campaign_Data
where Sessions>100





