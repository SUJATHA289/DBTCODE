{% snapshot stg_emp_comp_snap %}
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
FROM  {{ source('employee_sources', 'emp_comp') }}
{% endsnapshot %}