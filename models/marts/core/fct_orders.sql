with orders as (
    select * from {{ ref('stg_orders') }}
),

payments as (
    select * from {{ ref('stg_payments') }}
),

final as (
    select
        payments.order_id,
        payments.customer_id,
        orders.order_date,
        orders.status
    from orders
    left join payments using (customer_id)
)

select * from final