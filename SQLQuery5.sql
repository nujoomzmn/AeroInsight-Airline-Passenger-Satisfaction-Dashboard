select * from Airline_data


select [Type of Travel],
sum( 
	case when satisfaction ='satisfied' then 1 else 0 end )  as total_satisfied,
sum(
	case when satisfaction='neutral or dissatisfied' then 1 else 0 end) as total_dissatisfied,
count(*)*100.01/sum(count(*)) over() as percentage

from Airline_Data
Group by [Type of Travel]


select Gender,
sum( 
	case when satisfaction ='satisfied' then 1 else 0 end )  as total_satisfied,
sum(
	case when satisfaction='neutral or dissatisfied' then 1 else 0 end) as total_dissatisfied,
count(*)*100.01/sum(count(*)) over() as percentage

from Airline_Data
Group by Gender

 
select [Customer Type],
sum( 
	case when satisfaction ='satisfied' then 1 else 0 end )  as total_satisfied,
sum(
	case when satisfaction='neutral or dissatisfied' then 1 else 0 end) as total_dissatisfied,
count(*)*100.01/sum(count(*)) over() as percentage

from Airline_Data
Group by [Customer Type]




select count(*) as Total_passenger,
sum( 
	case when satisfaction ='satisfied' then 1 else 0 end )  as total_satisfied,
sum(
	case when satisfaction='neutral or dissatisfied' then 1 else 0 end) as total_dissatisfied,
round
(cast(sum( 
	case when satisfaction ='satisfied' then 1 else 0 end ) as float)   /
	count(*)* 100,2) as satisfiedrate,
round(
cast(sum( 
	case when satisfaction ='neutral or dissatisfied' then 1 else 0 end ) as float)   /
	count(*)* 100,2) as satisfiedrate

from Airline_data


SELECT 
    MAX([Departure Delay in Minutes]) AS MaxDelay,
    MIN([Departure Delay in Minutes]) AS MinDelay
FROM Airline_data
WHERE [Departure Delay in Minutes] > 10;




SELECT 
    satisfaction,
    CASE 
        WHEN [Departure Delay in Minutes] = 0 THEN 'no delay'
        WHEN [Departure Delay in Minutes] <= 30 THEN 'short delay'
        WHEN [Departure Delay in Minutes] <= 60 THEN 'medium delay'
        ELSE 'long delay'
    END AS DelayCategory,

    COUNT(*) AS Passenger_count,

    -- Percentage of total passengers
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS Passenger_Percentage,
    AVG([Departure Delay in Minutes]) AS AvgDelayMinutes
FROM Airline_data
GROUP BY 
    satisfaction,
    CASE 
        WHEN [Departure Delay in Minutes] = 0 THEN 'no delay'
        WHEN [Departure Delay in Minutes] <= 30 THEN 'short delay'
        WHEN [Departure Delay in Minutes] <= 60 THEN 'medium delay'
        ELSE 'long delay'
    END
ORDER BY satisfaction;


SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 30 THEN 'Young Professional (18-30)'
        WHEN Age BETWEEN 31 AND 45 THEN 'Mid-Career (31-45)'
        WHEN Age BETWEEN 46 AND 60 THEN 'Senior Professional (46-60)'
        ELSE 'Retired/Executive (60+)'
    END as AgeSegment,
    COUNT(*) as [PassengernCount],
    AVG([Flight Distance]) as AvgDistance,
    ROUND(
        AVG(CAST(CASE WHEN satisfaction = 'satisfied' THEN 1 ELSE 0 END as FLOAT)) * 100, 2
    ) as SatisfactionRate,
    SUM(CASE WHEN Class = 'Business' THEN 1 ELSE 0 END) as BusinessClassCount,
    SUM(CASE WHEN [Customer Type] = 'Loyal Customer' THEN 1 ELSE 0 END) as LoyalCustomers
FROM Airline_data
WHERE [Type Of Travel] = 'Business travel'
GROUP BY 
    CASE 
        WHEN Age BETWEEN 18 AND 30 THEN 'Young Professional (18-30)'
        WHEN Age BETWEEN 31 AND 45 THEN 'Mid-Career (31-45)'
        WHEN Age BETWEEN 46 AND 60 THEN 'Senior Professional (46-60)'
        ELSE 'Retired/Executive (60+)'
    END
ORDER BY SatisfactionRate DESC;



SELECT *,

-- Age Group
CASE 
    WHEN age <= 25 THEN 'Young'
    WHEN age BETWEEN 26 AND 35 THEN 'Young Adult'
    WHEN age BETWEEN 36 AND 50 THEN 'Adult'
    WHEN age BETWEEN 51 AND 60 THEN 'Middle Age'
    ELSE 'Senior'
END AS [Age Group],

-- Flight Distance Group
CASE
    WHEN [Flight Distance] <= 500 THEN 'Short Haul'
    WHEN [Flight Distance] BETWEEN 501 AND 1500 THEN 'Medium Haul'
    WHEN [Flight Distance] BETWEEN 1501 AND 3000 THEN 'Long Haul'
    ELSE 'Ultra Long Haul'
END AS [Distance Group],

-- Arrival Delay Group
CASE
    WHEN [Arrival Delay in Minutes] = 0 THEN 'On Time'
    WHEN [Arrival Delay in Minutes] BETWEEN 1 AND 30 THEN 'Minor Delay'
    WHEN [Arrival Delay in Minutes] BETWEEN 31 AND 120 THEN 'Moderate Delay'
    ELSE 'Severe Delay'
END AS [Arrival Delay Group],

-- Departure Delay Group
CASE
    WHEN [Departure Delay in Minutes] = 0 THEN 'On Time'
    WHEN [Departure Delay in Minutes] BETWEEN 1 AND 30 THEN 'Minor Delay'
    WHEN [Departure Delay in Minutes] BETWEEN 31 AND 120 THEN 'Moderate Delay'
    ELSE 'Severe Delay'
END AS [Departure Delay Group]

FROM Airline_data;

