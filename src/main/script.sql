DROP TABLE IF EXISTS product_category CASCADE;
DROP TABLE IF EXISTS product CASCADE;

CREATE TABLE product_category (
                                  id INT GENERATED ALWAYS AS IDENTITY,
                                  category_name VARCHAR(255) NULL,
                                  PRIMARY KEY (id)
);


CREATE TABLE product (
                         id INT GENERATED ALWAYS AS IDENTITY,
                         sku VARCHAR(255) NULL,
                         name VARCHAR(255) NULL,
                         description VARCHAR(255) NULL,
                         unit_price DECIMAL(13,2) NULL,
                         image_url VARCHAR(255) NULL,
                         active SMALLINT,
                         units_in_stock INT NULL,
                         date_created TIMESTAMP(6) NULL,
                         last_updated TIMESTAMP(6) NULL,
                         category_id INT NULL,
                         PRIMARY KEY (id)
);

ALTER TABLE product ADD CONSTRAINT FK_PRODUCT_CATEGORY FOREIGN KEY (category_id) REFERENCES product_category(id);



-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('BOOKS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1000', 'JavaScript - The Fun Parts', 'Learn JavaScript',
        'assets/images/products/placeholder.png'
           ,1,100,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1001', 'Spring Framework Tutorial', 'Learn Spring',
        'assets/images/products/placeholder.png'
           ,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1002', 'Kubernetes - Deploying Containers', 'Learn Kubernetes',
        'assets/images/products/placeholder.png'
           ,1,100,24.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1003', 'Internet of Things (IoT) - Getting Started', 'Learn IoT',
        'assets/images/products/placeholder.png'
           ,1,100,29.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('BOOK-TECH-1004', 'The Go Programming Language: A to Z', 'Learn Go',
        'assets/images/products/placeholder.png'
           ,1,100,24.99,1, NOW());