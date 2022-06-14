select
Orders.customer_id, Customers.name, Customers.email, Orders.created_at as first_order_at, Orders.total as number_of_orders
from `analytics-engineers-club.coffee_shop.customers` Customers
inner join `analytics-engineers-club.coffee_shop.orders` Orders
on Orders.customer_id = Customers.id
order by Orders.total
limit 5;