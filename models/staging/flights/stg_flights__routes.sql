with source as (
        select * from {{ source('demo_src', 'routes') }}
  ),
  renamed as (
      select
          {{ adapter.quote("flight_no") }},
        {{ adapter.quote("departure_airport") }},
        {{ adapter.quote("departure_airport_name") }},
        {{ adapter.quote("departure_city") }},
        {{ adapter.quote("arrival_airport") }},
        {{ adapter.quote("arrival_airport_name") }},
        {{ adapter.quote("arrival_city") }},
        {{ adapter.quote("aircraft_code") }},
        {{ adapter.quote("duration") }},
        {{ adapter.quote("days_of_week") }}

      from source
  )
  select * from renamed
    