{{config(materialized='table')}}

SELECT 
    data ->> 'price' AS price,
    data ->> 'quantity' AS quantity,
    data ->> 'order_date' AS order_date,
    data ->> 'product_name' AS product_name,
    data -> 'product_details' ->> 'brand' AS brand,
    data -> 'product_details' ->> 'category' AS category
FROM {{source("aiven_mongo","orders")}}