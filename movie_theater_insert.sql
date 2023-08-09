INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    address,
    billing_info
)VALUES(
    01,
    'Joshua',
    'Lewis',
    '123 Main Street, Westerville, OH 43081',
    '4242-4242-4242-4242 623 08/07'
);

Insert statement for inventory data
INSERT INTO inventory(
    item_id,
    upc,
    product_amount
)VALUES(
    01,
    01,
    15.00
);

-- Insert statement for the inventory data
INSERT INTO in_house_restaurant(
    receipt_id,
    customer_id,
    sub_total,
    total_cost,
    upc
)VALUES(
    01,
    01,
    20.00,
    23.50,
    01
);

-- Insert statement for the product data
INSERT INTO product(
    upc,
    quantity,
    product_name
)VALUES(
    01,
    2,
    'Popcorn'
);

-- Insert statement for order data
INSERT INTO concession(
    concession_id,
    sub_total,
    total_cost,
    upc
)VALUES(
    01,
    43.50,
    46.00,
    01
);

-- Insert statement for the cart data
INSERT INTO tickets(
    ticket_id,
    customer_id,
    quantity,
    sub_total,
    total_cost
)VALUES(
    01,
    01,
    2,
    32.60,
    35.00
);

INSERT INTO movies(
    movie_id,
    ticket_id
)VALUES(
    01,
    01
);