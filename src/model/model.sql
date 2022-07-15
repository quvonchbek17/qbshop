CREATE EXTENSION "uuid-ossp";

-- CREATE TABLES

create table categories(
    category_id uuid DEFAULT uuid_generate_v4() not null primary key,
    category_name VARCHAR(50)
);

create table products(
    product_id uuid DEFAULT uuid_generate_v4() not null primary key,
    product_name VARCHAR(64),
    product_price BIGINT,
    product_desc TEXT,
    product_img_link TEXT,
    product_category_id uuid,
        FOREIGN KEY(product_category_id)
        REFERENCES categories(category_id)
        ON DELETE CASCADE
);

create table users(
    user_id uuid DEFAULT uuid_generate_v4() not null primary key,
    user_username VARCHAR(100),
    user_password VARCHAR(50),
    user_role VARCHAR(50)
);


-- ADD DATA

-- CATEGORIES
INSERT INTO categories(category_name) VALUES('notebooks'),
('phones'),
('furnitures'),
('sport'),
('cars');

-- PRODUCTS

    -- NOTEBOOKS

INSERT INTO products(product_name, product_price, product_desc, product_img_link, product_category_id) VALUES('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Dell Latitude', 11418000, 'Latitude 3520 i7-1165G7 32/1TB SSD 15.6', 'https://pcmarket.uz/wp-content/uploads/2021/04/3286.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),

('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),

('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
('Asus UM433IQ', 13492000, 'AMD R7-4700U 16/1TB HDD 14', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', b8ff0e00-722b-4968-8c04-9076bc3af787 ),
