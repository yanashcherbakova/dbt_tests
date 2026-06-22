with source as (
        select * from {{ source('demo_src', 'aircrafts') }}
  ),
  renamed as (
      select
          {{ adapter.quote("aircraft_code") }},
        {{ adapter.quote("model") }},
        {{ adapter.quote("range") }}

      from source
  )
  select * from renamed
    