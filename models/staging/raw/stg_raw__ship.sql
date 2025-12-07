with ship_source as (
    select * from {{ source('raw', 'ship') }}
),
renamed as (
    select
        orders_id,
        shipping_fee,
        logCost,
        CAST(ship_cost AS FLOAT64) as ship_cost
    from ship_source
)
select * from renamed
