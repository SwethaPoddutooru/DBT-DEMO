select 
* 
from {{ source('DEMO', 'bike_tbl') }} 
limit 3