{{config(materialized='table')}}
select 
price,
quantity,
order_id,
order_date,
product_name,
product_brand,
product_category
from {{source("ingested_data","ecommerce_data")}}