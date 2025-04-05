{{
    config(
        materialized="table",
        unique_key="EMP_ID",
        transient=false,
    )
}}
select * from {{ ref('stg_employee_snap') }} where dbt_valid_to is null