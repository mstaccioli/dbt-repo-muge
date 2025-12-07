with product_source as (
    select * from {{ source('raw', 'product') }}
),

renamed as (
    select
        products_id,
        CAST(purchSE_PRICE AS FLOAT64) as purchase_price
    from product_source
)

select * from renamed

