select
    id as customer_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,
    amount,
    created,
    _BATCHED_AT
from raw.stripe.payment
