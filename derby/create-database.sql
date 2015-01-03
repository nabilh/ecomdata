drop table order_line;
drop table sales_order;
drop table product;
drop table customer;
run 'create-customer.sql';
run 'create-product.sql';
run 'create-order.sql';
run 'create-order-line.sql';
