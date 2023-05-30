{% snapshot orders_snapshot %}

{{
    config(
      target_database='analytics',
      target_schema='snapshots',
      unique_key='id',

      strategy='timestamp',
      updated_at='hire_date',
    )
}}

select * from {{ source('AmazonBI', 'Employee') }}
{% endsnapshot %}