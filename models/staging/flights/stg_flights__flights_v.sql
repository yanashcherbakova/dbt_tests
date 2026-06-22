with source as (
        select * from {{ source('demo_src', 'flights_v') }}
  ),
  renamed as (
      select
          {{ adapter.quote("flight_id") }},
        {{ adapter.quote("flight_no") }},
        {{ adapter.quote("scheduled_departure") }},
        {{ adapter.quote("scheduled_departure_local") }},
        {{ adapter.quote("scheduled_arrival") }},
        {{ adapter.quote("scheduled_arrival_local") }},
        {{ adapter.quote("scheduled_duration") }},
        {{ adapter.quote("departure_airport") }},
        {{ adapter.quote("departure_airport_name") }},
        {{ adapter.quote("departure_city") }},
        {{ adapter.quote("arrival_airport") }},
        {{ adapter.quote("arrival_airport_name") }},
        {{ adapter.quote("arrival_city") }},
        {{ adapter.quote("status") }},
        {{ adapter.quote("aircraft_code") }},
        {{ adapter.quote("actual_departure") }},
        {{ adapter.quote("actual_departure_local") }},
        {{ adapter.quote("actual_arrival") }},
        {{ adapter.quote("actual_arrival_local") }},
        {{ adapter.quote("actual_duration") }}

      from source
  )
  select * from renamed
    