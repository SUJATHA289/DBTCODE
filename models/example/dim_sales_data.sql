{{
    config(
        materialized='table',
        unikey_key ='sale_id',
        on_error ='continue'
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

select hash(sale_id) as SK_sale_id ,
    sale_id,
    total_sale_value
from sales