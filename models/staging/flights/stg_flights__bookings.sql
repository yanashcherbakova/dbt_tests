with source as (
        select * from {{ source('demo_src', 'bookings') }}
  ),
  renamed as (
      select
          {{ adapter.quote("book_ref") }},
        {{ adapter.quote("book_date") }},
        {{ adapter.quote("total_amount") }}

      from source
  )
  select * from renamed
    