{% snapshot stg_sales %}
    {{

        config(
          unique_key='sale_id',
          strategy='check',
          check_cols='all',     
        )

    }}

select
  *
FROM  {{ source('dbtstg', 'SALES') }}
{% endsnapshot %}