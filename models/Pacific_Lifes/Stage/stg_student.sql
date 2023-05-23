
with stage as (
select id,name from analytics.dbtschema.stud
order by id
)

select * from stage