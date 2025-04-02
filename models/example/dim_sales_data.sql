{{
    config(
        materialized='table'
    )
}}
with sales 
    as (select 
    sale_id,
    sale_amt,
    GST,
    ({{sale_tax ('sale_amt','GST')}}) as total_sale_value
    from {{ ref('stg_sales') }}
)
select * from sales