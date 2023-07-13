use mavenfuzzyfactory;

SELECT 
	website_session_id, 
    created_at,
    HOUR(created_at) AS hr,
    WEEKDAY(created_at) AS wkday, -- 0= Mon, 1 = Tues, etc
    CASE 
		WHEN weekday(created_at) = 0 THEN 'Monday'
		WHEN weekday(created_at) = 1 THEN 'Tuesday'
		WHEN weekday(created_at) = 2 THEN 'Wednesday'
		WHEN weekday(created_at) = 3 THEN 'Thursday'
		WHEN weekday(created_at) = 4 THEN 'Friday'   
        ELSE 'other_day'
	END AS clean_weekday,
    QUARTER(created_at) AS qtr,
    MONTH(created_at) AS mo, 
    DATE(created_at) AS date, 
    WEEK(created_at) AS wk
FROM website_sessions
	