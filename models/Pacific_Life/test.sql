
{{
    config(
        materialized='table'
    )
}}

select id,name from analytics.dbtschema.stud
order by id