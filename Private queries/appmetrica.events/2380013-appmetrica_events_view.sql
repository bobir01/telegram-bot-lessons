-- select
--     event_json :: jsonb
--     -- event_name,
--     -- appmetrica_device_id
    
-- from
--     appmetrica.events
-- where
--     -- (
--     --     event_datetime between '2023-09-01 00:00:00' and '2023-10-01 00:00:00'
--     -- )
--      event_name = 'Superapp.Showcase.Event.eda.lavka.main_page.opened'

-- limit 10;



SELECT 
    event_json::jsonb -> 'CommonParams' as CommonParams,
    appmetrica_device_id
FROM 
    appmetrica.events
WHERE 
    event_name = 'Superapp.Showcase.Event.eda.lavka.main_page.opened' AND
    event_datetime >= '2023-09-01 00:00:00' AND
    event_datetime < '2023-10-01 00:00:00'
LIMIT 100;