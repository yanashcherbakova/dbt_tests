with source as (
        select * from {{ source('demo_src', 'seats') }}
  ),
  renamed as (
      select
          {{ adapter.quote("aircraft_code") }},
        {{ adapter.quote("seat_no") }},
        {{ adapter.quote("fare_conditions") }}

      from source
  )
  select * from renamed
    