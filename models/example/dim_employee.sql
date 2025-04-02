{{
    config(
        materialized="incremental",
        unique_key="EMP_ID",
        transient=false,
        incremental_strategy="delete+insert",
    )
}}
select * from {{ ref('stg_employee_snap') }}