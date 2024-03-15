select
    o."Created" :: date,
    o."OrderStatusId",
    count(o."OrderUid")
from
    middleware."Order" o
    group by 1,2
    having (o."Created" :: date between 
    '2024-02-01' and '2024-02-29')
    
    and o."OrderStatusId" = 200;