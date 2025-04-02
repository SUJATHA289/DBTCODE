{% snapshot stg_employee_profile_snap %}
    {{

        config(
          unique_key='EMP_ID',
          strategy='check',
          check_cols='all',
          target_schema= "DBTL_DV_SCH"       
        )

    }}

select
  *
FROM  {{ source('employee_sources', 'employee_profile') }}
{% endsnapshot %}