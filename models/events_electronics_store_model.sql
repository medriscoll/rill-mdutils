-- clean up timestamp
SELECT 
strptime(event_time, '%Y-%m-%d %H:%M:%S %Z') as timestamp,
* 
EXCLUDE event_time
FROM events_electronics_store
