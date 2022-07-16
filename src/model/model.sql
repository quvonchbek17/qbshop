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
fea
    -- NOTEBOOKS
INSERT INTO products(product_name, product_price, product_desc, product_img_link, product_category_id)
VALUES
('Asus VivoBook Pro 15', 13492000, 'AMD® Ryzen™ 7-5800H (3,2 gigagerts - 4,4 gigagerts) (8 yadroli; 16 ta oqim). AMD® Radeon Graphics. RAM: 16 GB DDR4', 'https://pcmarket.uz/wp-content/uploads/2021/04/163045.970.png', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' ),
('HP ENVY x360', 10492000, 'Intel Core i5-1135G7 (2,4 gigagerts – 4,2 gigagerts) (4 yadroli; 8 ta oqim;).Intel Iris Xe Graphics.RAM: 8 GB DDR4', 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c06570789.png', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' ),
('Lenovo IdeaPad Slim 7', 11050000, 'Intel® Core™ i7-1165G7 (1,2 gigagerts - 4,7 gigagerts) (4 yadroli; 8 ta oqim). Intel Iris Xe Graphics. RAM: 16 GB DDR4', 'https://p4-ofp.static.pub/fes/cms/2021/08/25/2grq8fg5u1o1t3b4hy2zo5elbwfcaj075118.png', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' ),
('ASUS ZenBook UM425', 9945000, 'AMD Ryzen 7-5700U (8 yadro - 16 oqim) ( 1,8 gigagerts - 4,3 gigagerts).AMD® Radeon Graphics.RAM: 16 GB LPDDR4X', 'https://za.store.asus.com/media/catalog/product/cache/5b209340b22d2e1fa8016d2c3d769adb/u/m/um425.png', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' ),
('Samsung Galaxy Book Flex2', 9945000, 'Intel Core i5-1135G7 (2,4 gigagerts – 4,2 gigagerts) (4 yadroli; 8 ta oqim;).Intel Iris Xe Graphics.RAM: 8 GB DDR4', 'https://www.notebookcheck.net/fileadmin/_processed_/a/0/csm_NP730QCJ_015_Dynamic3_Royal_Silver_f3b6e2558f.png', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' ),
('ASUS ROG Strix G513', 10497500, 'AMD® Ryzen™ 7-4800H (2,9 gigagerts - 4,2 gigagertsli) (8 yadroli; 16 ta oqim). GeForce GTX™ 1650 NVIDIA 4GB/128Bit/GDDR5.RAM: 16GB DDR4', 'https://dlcdnwebimgs.asus.com/gain/D2BC4161-4275-464B-90BC-C04275EC394A', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' ),
('HP Laptop 15', 6630000, 'Intel® Core™ i5-1235U (3,3 gigagerts - 4,4 gigagerts) (10 yadroli; 12 ta oqim). Intel Iris Xe Graphics. RAM: 8 GB DDR4', 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c07045107.png', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' ),
('Asus ExpertBook 15', 4751500, 'AMD Ryzen 3-3250U (2,6 gigagerts - 3,5 gigagertsli) (2 yadro - 4 ta oqim).AMD® Radeon Graphics.RAM: 4 GB DDR4', 'https://www.notebookcheck.net/fileadmin/_processed_/6/7/csm_ExpertBook_B1500_ASUS_Intelligent_Performance_Technology_ba257df845.png', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' ),
('HP Victus 16', 9171500, 'Intel® Core™ i5-11400H (2,7 gigagerts - 4,5 gigagerts) (6 yadroli; 12 ta oqim).GeForce RTX™ 3050 NVIDIA® 4GB/128Bit/GDDR6.RAM: 8GB DDR4', 'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c07263042.png', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' ),
('Dell XPS 15', 20995000, 'Intel Core i7-11800H (2,3 gigagerts - 4,6 gigagerts) (8 yadroli; 16 oqim). GeForce RTX™ 3050 NVIDIA® 4 GB/128 Bit/GDDR6.RAM: 16 GB DDR4', 'https://e7.pngegg.com/pngimages/886/338/png-clipart-dell-xps-15-9560-laptop-intel-core-i7-dell-xps-13-9365-laptop-gadget-electronics.png', 'a0b5fccf-be81-4fea-9395-0264ec6f469d' );

-- phones

INSERT INTO products(product_name, product_price, product_desc, product_img_link, product_category_id)
VALUES
('Honor X9', 3222000, '6/128 GB Midnight Black. Android 11, Magic UI 4.2. Video protsessor: Adreno 610', 'https://img02.honorfile.com/ap//uomcdn/AE/uom/202205/A80C577E9FE7B786767523436DA82B40.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' ),
('Xiaomi Redmi 10A', 1784000, '3/64 GB ko‘mir qora. Android 11, MIUI 12.5. Video protsessor: PowerVR GE8320', 'https://www.giztop.com/media/catalog/product/cache/dc206057cdd42d7e34b9d36e347785ca/r/e/redmi_10a.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' ),
('Samsung Galaxy A23', 2732000, '4/128GB Apelsin rang. Android 11 Qualcomm Snapdragon 680. Kamera: 50 MP + 5 MP + 2 MP + 2 MP', 'https://www.pakmobizone.pk/wp-content/uploads/2022/06/Samsung-Galaxy-A23-Awesom-Black-1.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' ),
('Apple iPhone 13 Pro Max', 18955000, '6/512 GB Green. iOS 15 Apple A15 Bionic (5 nm). Videoprotsessor: Apple GPU (5-core graphics)', 'http://cdn.shopify.com/s/files/1/0552/9609/8494/products/iphone-13-pro-max-gold-select_1200x1200.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' ),
('Apple Iphone 13 Mini', 10816000, '4/256 GB Midnight. iOS 15 Apple A15 Bionic (5 nm). Videoprotsessor: Apple GPU (4-core graphics)', 'https://res.cloudinary.com/dpfl37yun/image/upload/v1633326492/iphone_13_mini_midnight_select_2021_c05624269b.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' ),
('Nokia 1.4', 1319000, '2/32 GB Grey. Android 10 Qualcomm QM215 Snapdragon 215. Videoprotsessor: Adreno 308', 'image.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' ),
('ZTE Blade V30', 2149000, '4/128 GB Moviy. Android 11 UNISOC SC9863A, 1.6 GGts. Videoprotsessor: PowerVR GE8322', 'https://images.prismic.io/ztemobile/1027db4c-849e-48e6-9beb-ae93b2291aaf_Blade+V30+Vita.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' ),
('OnePlus Nord 5G', 5229000, '8/128 GB Blue. Android 10 Qualcomm SM7250 Snapdragon 765G. Videoprotsessor: Adreno 620', 'https://oasis.opstatics.com/content/dam/oasis/page/2021/ebba/spec/Silver-Ray.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' ),
('Smartfon OPPO A91', 2843000, '8/128 GB Black. Android 11 MediaTek Helio P70. Videoprotsessor: Adreno 620', 'https://mobile-review.com/news/wp-content/uploads/oppo-a91.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' ),
('Xiaomi Redmi K50', 9924000, '12/256 GB Black. Android 12, MIUI 13 MediaTek Dimensity 8100 (5 nm). Videoprotsessor: Mali-G610', 'https://i.ebayimg.com/images/g/U5gAAOSwifJiFgRX/s-l500.png', 'ee439c15-2903-4f43-9b9d-eb35c853aa35' );
