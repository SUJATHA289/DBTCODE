{{
    config(
        materialized="incremental",
        unique_key="EMP_ID",
        transient=false,
        incremental_strategy="delete+insert",
    )
}}
select * from {{ source('employee_sources', 'EMP_COMP_RANGE') }}