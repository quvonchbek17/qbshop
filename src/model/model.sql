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


-- appliances

INSERT INTO products(product_name, product_price, product_desc, product_img_link, product_category_id)
VALUES
('Kir yuvish mashinasi Bosch', 9650000, 'Super Tez yuvish dasturi ozgina kirlangan kirlarni atigi 30 daqiqada yangilashning qulay usulidir.', 'https://media3.bosch-home.com/Product_Shots/1600x900/MCSA02642741_WAT2846SIN_def.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' ),
('Vacuum cleaner Bosch', 6079000, 'Quvvat:1200 Vt. Xajmi : 6 l. Rangi : Oq', 'https://zoodmall.com/cdn-cgi/image/w=500,fit=contain,f=auto/https://media3.bosch-home.com/Product_Shots/435x515/MCSA02323079_i0031_1727169_BGL35MOV24_def.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' ),
('Sovutgich Shivaki ', 7872000, 'Sovutgich Shivaki HD 395 FWENH White - elektron boshqaruv paneli bilan jihozlangan zamonaviy ikki kamerali model', 'https://www.artelgroup.org/upload/product_pictures/395-360.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' ),
('Konditsioner LG P12SP', 7400000, 'Qoshimcha funktsiyalar: deodorizatsiya filtri, plazma filtri, havo oqimi yoʻnalishini sozlanishi, muzlashga qarshi tizim', 'https://www.daikin-info.ru/files/LG/imgs/259295-900x492.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' ),
('Muzlatgich Samsung', 7488000, '37 dB gacha past shovqin darajasini taminlovchi raqamli invertorli kompressor bilan jihozlangan', 'https://toppng.com/uploads/preview/samsung-refrigerator-11552762516shd2b8n9k8.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' ),
('Chang yutgich Samsung', 1252000, '2,4 litrli chang idishi bolgan juda kuchli changyutgich (1800 Vt / 440 Vt)', 'https://zoodmall.com/cdn-cgi/image/w=500,fit=contain,f=auto/https://prizma.uz/uploads/product/images/060303-00070/Samsung%20VC18M3120VB-EV_2.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' ),
('Mikrotolqinli pech Panasonic', 1530000, 'GRILL PANASONIC NN-GT261 MIKROTOlqinli pech. olchamlari - kichik oshxona uchun ideal', 'https://zoodmall.com/cdn-cgi/image/w=500,fit=contain,f=auto/https://prizma.uz/uploads/product/images/070203-00022/Panasonic_NN-DF383BZPE_1.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' ),
('Gaz Plitasi Shivaki', 3354000, 'SHIVAKI 6403-E gaz plitasi burnerlar uchun avtomatik elektr ateşleme tizimidan foydalanadi', 'https://zoodmall.com/cdn-cgi/image/w=500,fit=contain,f=auto/https://prizma.uz/uploads/product/images/070201-00089/Femas_22-2_Bre_White_2.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' ),
('Ventilyator Shivaki', 593000, 'Ventilyator Shivaki uyingizda yoki ofisingizda qulay salqin shabada yaratadi', 'https://zoodmall.com/cdn-cgi/image/w=500,fit=contain,f=auto/https://prizma.uz/uploads/product/images/060401-00009/Crown%20FS-4521%20(Iron)_1.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' ),
('Kondisioner Artel Everest', 5499000, 'Past kuchlanish ostida ishlash* 130 v. Maxsus sovuq ishlab chiqarish unumdorligi', 'https://zoodmall.com/cdn-cgi/image/w=500,fit=contain,f=auto/https://upload.zoodmall.com/web/product/picture/70/20631370/165063465742288400191.png', 'c8f67f65-128c-4bcf-aaec-12511eabcce7' );


-- sport

INSERT INTO products(product_name, product_price, product_desc, product_img_link, product_category_id)
VALUES
('Basketbol topi', 135000, 'Top olchami: 7. Brend: Sports. Ishlab chiqarilgan joyi: Xitoy', 'https://www.freeiconspng.com/thumbs/basketball-png/basketball-png-7.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' ),
('Boks uchun dubulga', 299000, 'Havaskor boks uchun dubulga AIBA tomonidan tasdiqlangan.', 'https://e7.pngegg.com/pngimages/547/372/png-clipart-everlast-boxing-punching-training-bags-martial-arts-boxing-sport-boxing-glove.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' ),
('Velo mashq uskunasi', 3260500, 'Jismoniy mashqlar velosipedlari qoshimcha funtlarni samarali engadi', 'https://w7.pngwing.com/pngs/140/13/png-transparent-bicycle-exercise-bikes-indoor-cycling-fitness-centre-spinning-physical-fitness-bicycle-indoor-cycling.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' ),
('Yugurish yolagi', 10450000, 'Innovatsion Shure SH-T9130 yugurish yolagi dizayni kardiyo mashgulotlari uchun maqbul', 'https://toppng.com/uploads/preview/treadmill-11550712504s8omihapjz.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' ),
('Voleybol topi', 220000, 'Nike 1000 Softset mashgulot topi boshlangich voleybolchilar uchun ajoyib tanlov boladi', 'https://www.citypng.com/public/uploads/preview/hd-yellow-blue-and-white-volleyball-ball-png-11650768059jxxkt2zkgu.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' ),
('Rolikli konki', 305000, 'Qulay va ishonchli Cougar konkilari bolalar uchun ajoyib sovgadir', 'https://w7.pngwing.com/pngs/243/61/png-transparent-quad-skates-roller-skates-in-line-skates-roller-skating-inline-skating-roller-skates-purple-retro-outdoor-shoe.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' ),
('CITY BIKE ALTAIR', 210000, 'ALTAIR CITY low 28 dyuymli shahar ayollar velosipedi shaharda qulay harakatlanish uchun', 'https://w7.pngwing.com/pngs/822/569/png-transparent-single-speed-bicycle-mountain-bike-bicycle-derailleurs-cycling-bicycle-bicycle-frame-bicycle-mode-of-transport-thumbnail.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' ),
('Elektr skuter Xiaomi', 6999000, 'Skuter dizayni va muhandislik fikridagi qulaylik va gozallikning ajoyib kombinatsiyasi', 'https://toppng.com/uploads/preview/xiaomi-mijia-electric-scooter-m365-11549765064nvpvsimrdg.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' ),
('Borussia Dortmund kiyimi', 165000, 'Borussia Dortmund 2021-22 mavsum uy formasi', 'https://w7.pngwing.com/pngs/392/649/png-transparent-borussia-dortmund-2016-17-uefa-champions-league-third-jersey-kit-shirt-tshirt-logo-active-shirt.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' ),
('Sport sumkasi', 795000, 'Bardoshli polyesterdan tayyorlangan Head sumkasi mashgulotingiz uchun eng zor tanlovdir', 'https://toppng.com/uploads/preview/sport-duffle-bag-11530978515vq30quznj2.png', '57ed197d-16c5-4dca-8fee-0332ec852a7f' );
