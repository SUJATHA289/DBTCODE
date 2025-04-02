{{
    config(
        materialized="incremental",
        unique_key="sub_id",
        transient=false,
        incremental_strategy="delete+insert",
        on_schema_change = "sync_all_columns"
    )
}}
select * from {{ ref('sub') }} 