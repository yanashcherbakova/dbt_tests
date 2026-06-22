with source as (
        select * from {{ source('demo_src', 'aircrafts_data') }}
  ),
  renamed as (
      select
          {{ adapter.quote("aircraft_code") }},
        {{ adapter.quote("model") }},
        {{ adapter.quote("range") }}

      from source
  )
  select * from renamed
    