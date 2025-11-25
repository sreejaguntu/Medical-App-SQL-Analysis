--Total feature events
Select * from feature_events;

--Count of Total feature events
SELECT COUNT(*) AS total_events
FROM feature_events;

--Events per feature
Select feature_name, Count(*) as usage_counts
FROM feature_events
Group By feature_name
Order By usage_counts desc

--Unique users per feature
Select feature_name, Count(Distinct user_id) as unique_users
From feature_events
Group by feature_name
Order by unique_users desc

--Daily Active Users (DAU)
SELECT CAST(event_date AS DATE) AS activity_date,
       COUNT(DISTINCT user_id) AS DAU
FROM feature_events
GROUP BY CAST(event_date AS DATE)
ORDER BY activity_date;

--Events per user
Select user_id, count(feature_name) as events_count
from feature_events
Group By user_id
Order By events_count desc


--Power Users (users using 3+ features)
SELECT user_id, COUNT(DISTINCT feature_name) AS features_used
FROM feature_events
GROUP BY user_id
HAVING COUNT(DISTINCT feature_name) >= 2;

--Feature adoption over time
SELECT feature_name, CAST(event_date AS DATE) AS date, COUNT(DISTINCT user_id) AS users_count
FROM feature_events
GROUP BY feature_name, CAST(event_date AS DATE)
ORDER BY date, feature_name;

--Session duration per user
SELECT user_id,
       DATEDIFF(MINUTE, session_start, session_end) AS session_duration_minutes
FROM sessions;

--Basic funnel: Search → Buy → Subscribe
SELECT 
    COUNT(DISTINCT CASE WHEN feature_name='Search' THEN user_id END) AS search_users,
    COUNT(DISTINCT CASE WHEN feature_name='Buy' THEN user_id END) AS buy_users,
    COUNT(DISTINCT CASE WHEN feature_name='Subscribe' THEN user_id END) AS subscribe_users
from feature_events

--Retention by first feature used (Cohort Analysis)
WITH first_event AS (
    SELECT user_id, MIN(event_date) AS first_event_date, 
           feature_name AS first_feature
    FROM feature_events
    GROUP BY user_id, feature_name
)
SELECT first_feature, COUNT(user_id) AS users_count
FROM first_event
GROUP BY first_feature
ORDER BY users_count DESC;

--Funnel analysis with conversion rate
SELECT 
    COUNT(DISTINCT CASE WHEN feature_name='Search' THEN user_id END) AS search_users,
    COUNT(DISTINCT CASE WHEN feature_name='Buy' THEN user_id END) AS buy_users,
    COUNT(DISTINCT CASE WHEN feature_name='Subscribe' THEN user_id END) AS subscribe_users,
    CAST(COUNT(DISTINCT CASE WHEN feature_name='Buy' THEN user_id END) AS FLOAT) /
    NULLIF(COUNT(DISTINCT CASE WHEN feature_name='Search' THEN user_id END), 0) AS search_to_buy_rate,
    CAST(COUNT(DISTINCT CASE WHEN feature_name='Subscribe' THEN user_id END) AS FLOAT) /
    NULLIF(COUNT(DISTINCT CASE WHEN feature_name='Buy' THEN user_id END), 0) AS buy_to_subscribe_rate
FROM feature_events;

--Feature stickiness (users repeating a feature multiple times)
SELECT feature_name, COUNT(*) AS total_events, COUNT(DISTINCT user_id) AS unique_users,
       CAST(COUNT(*) AS FLOAT)/COUNT(DISTINCT user_id) AS avg_events_per_user
FROM feature_events
GROUP BY feature_name
ORDER BY avg_events_per_user DESC;
