SELECT DAYOFWEEK(LEFT(timeField,10)),
  CASE DAYOFWEEK(LEFT(timeField,10)) 
    WHEN 1 THEN 'Sunday'
    WHEN 2 THEN 'Monday'
    WHEN 3 THEN 'Tuesday'
    WHEN 4 THEN 'Wednesday'
    WHEN 5 THEN 'Thursday'
    WHEN 6 THEN 'Friday'
    WHEN 7 THEN 'Saturday'
    Else 'null'
  END AS Weekdays
FROM TABLE_NAME ORDER BY LEFT(timeField,10) DESC LIMIT 10;
