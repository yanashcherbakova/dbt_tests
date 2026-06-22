with source as (
        select * from {{ source('demo_src', 'airports_data') }}
  ),
  renamed as (
      select
          {{ adapter.quote("airport_code") }},
        {{ adapter.quote("airport_name") }},
        {{ adapter.quote("city") }},
        {{ adapter.quote("coordinates") }},
        {{ adapter.quote("timezone") }}

      from source
  )
  select * from renamed
    