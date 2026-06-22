with source as (
        select * from {{ source('demo_src', 'ticket_flights') }}
  ),
  renamed as (
      select
          {{ adapter.quote("ticket_no") }},
        {{ adapter.quote("flight_id") }},
        {{ adapter.quote("fare_conditions") }},
        {{ adapter.quote("amount") }}

      from source
  )
  select * from renamed
    