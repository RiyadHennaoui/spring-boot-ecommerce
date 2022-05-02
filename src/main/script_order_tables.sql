-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------



--
-- Prep work
--

DROP TABLE IF EXISTS order_item;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS address;


--
-- Table structure for table address
--
CREATE TABLE address (
                         id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                         city varchar(255) DEFAULT NULL,
                         country varchar(255) DEFAULT NULL,
                         state varchar(255) DEFAULT NULL,
                         street varchar(255) DEFAULT NULL,
                         zip_code varchar(255) DEFAULT NULL

) ;

--
-- Table structure for table customer
--
CREATE TABLE customer (
                          id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                          first_name varchar(255) DEFAULT NULL,
                          last_name varchar(255) DEFAULT NULL,
                          email varchar(255) DEFAULT NULL

) ;

--
-- Table structure for table orders
--
CREATE TABLE orders (
                        id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                        order_tracking_number varchar(255) DEFAULT NULL,
                        total_price decimal(19,2) DEFAULT NULL,
                        total_quantity int DEFAULT NULL,
                        billing_address_id bigint DEFAULT NULL,
                        customer_id bigint DEFAULT NULL,
                        shipping_address_id bigint DEFAULT NULL,
                        status varchar(128) DEFAULT NULL,
                        date_created TIMESTAMP DEFAULT NULL,
                        last_updated TIMESTAMP DEFAULT NULL,
                        CONSTRAINT FK_customer_id FOREIGN KEY (customer_id) REFERENCES customer (id),
                        CONSTRAINT FK_billing_address_id FOREIGN KEY (billing_address_id) REFERENCES address (id),
                        CONSTRAINT FK_shipping_address_id FOREIGN KEY (shipping_address_id) REFERENCES address (id)
) ;

--
-- Table structure for table order_items
--
CREATE TABLE order_item (
                            id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
                            image_url varchar(255) DEFAULT NULL,
                            quantity int DEFAULT NULL,
                            unit_price decimal(19,2) DEFAULT NULL,
                            order_id bigint DEFAULT NULL,
                            product_id bigint DEFAULT NULL,
                            CONSTRAINT FK_order_id FOREIGN KEY (order_id) REFERENCES orders (id),
                            CONSTRAINT FK_product_id FOREIGN KEY (product_id) REFERENCES product (id)
) ;
