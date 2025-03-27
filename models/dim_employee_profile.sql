{{
    config(
        materialized="table",
        unique_key="EMP_ID",
        transient=false,
        incremental_strategy="delete+insert",
    )
}}
select * from {{ ref('stg_employee_profile_snap') }} where dbt_valid_to is null