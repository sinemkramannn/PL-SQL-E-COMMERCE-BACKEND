prompt PL/SQL Developer Export Tables for user C##EGITIM@TESTDB
prompt Created by sinem on 26 Ağustos 2024 Pazartesi
set feedback off
set define off

prompt Disabling triggers for CATEGORIES...
alter table CATEGORIES disable all triggers;
prompt Disabling triggers for PRODUCTS...
alter table PRODUCTS disable all triggers;
prompt Disabling triggers for PRODUCTATTRIBUTES...
alter table PRODUCTATTRIBUTES disable all triggers;
prompt Disabling triggers for USERS...
alter table USERS disable all triggers;
prompt Disabling triggers for BASKET...
alter table BASKET disable all triggers;
prompt Disabling triggers for ORDERS...
alter table ORDERS disable all triggers;
prompt Disabling triggers for ORDERITEMS...
alter table ORDERITEMS disable all triggers;
prompt Disabling triggers for USERFAVORITES...
alter table USERFAVORITES disable all triggers;
prompt Disabling foreign key constraints for CATEGORIES...
alter table CATEGORIES disable constraint SYS_C008349;
prompt Disabling foreign key constraints for PRODUCTS...
alter table PRODUCTS disable constraint SYS_C008368;
prompt Disabling foreign key constraints for PRODUCTATTRIBUTES...
alter table PRODUCTATTRIBUTES disable constraint SYS_C008399;
prompt Disabling foreign key constraints for BASKET...
alter table BASKET disable constraint SYS_C008404;
alter table BASKET disable constraint SYS_C008405;
alter table BASKET disable constraint SYS_C008406;
prompt Disabling foreign key constraints for ORDERS...
alter table ORDERS disable constraint SYS_C008410;
prompt Disabling foreign key constraints for ORDERITEMS...
alter table ORDERITEMS disable constraint SYS_C008416;
alter table ORDERITEMS disable constraint SYS_C008417;
alter table ORDERITEMS disable constraint SYS_C008418;
prompt Disabling foreign key constraints for USERFAVORITES...
alter table USERFAVORITES disable constraint SYS_C008390;
alter table USERFAVORITES disable constraint SYS_C008391;
prompt Deleting USERFAVORITES...
delete from USERFAVORITES;
commit;
prompt Deleting ORDERITEMS...
delete from ORDERITEMS;
commit;
prompt Deleting ORDERS...
delete from ORDERS;
commit;
prompt Deleting BASKET...
delete from BASKET;
commit;
prompt Deleting USERS...
delete from USERS;
commit;
prompt Deleting PRODUCTATTRIBUTES...
delete from PRODUCTATTRIBUTES;
commit;
prompt Deleting PRODUCTS...
delete from PRODUCTS;
commit;
prompt Deleting CATEGORIES...
delete from CATEGORIES;
commit;
prompt Loading CATEGORIES...
insert into CATEGORIES (categoryid, parentid, categoryname)
values (1, null, 'Kadin');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (2, null, 'Erkek');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (3, null, 'Cocuk');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (4, null, 'Ev ve Yasam');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (5, null, 'Kozmetik');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (6, null, 'Ayakkabi ve Çanta');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (7, null, 'Elektronik');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (8, 1, 'Giyim');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (9, 1, 'Aksesuar');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (10, 1, 'Kisisel Bakim');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (11, 8, 'Elbise');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (12, 8, 'Pantolon');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (13, 8, 'Bluz');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (14, 2, 'Giyim');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (15, 2, 'Aksesuar');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (16, 2, 'Kisisel Bakim');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (17, 14, 'Gömlek');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (18, 14, 'Pantolon');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (19, 14, 'Ceket');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (20, 3, 'Giyim');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (21, 3, 'Oyuncak');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (22, 3, 'Kitap');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (23, 20, 'Tisort');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (24, 20, 'Pantolon');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (25, 20, 'Mont');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (26, 4, 'Mutfak Gereçleri');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (27, 4, 'Mobilya');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (28, 4, 'Dekorasyon');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (29, 26, 'Tencere');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (30, 26, 'Tabak');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (31, 26, 'Catal Bicak Takimi');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (32, 5, 'Makyaj');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (33, 5, 'Cilt Bakimi');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (34, 5, 'Parfüm');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (35, 32, 'Ruj');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (36, 32, 'Fondöten');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (37, 32, 'Far');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (38, 6, 'Kadin Ayakkabi');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (39, 6, 'Erkek Ayakkabi');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (40, 6, 'Canta');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (41, 38, 'Topuklu Ayakkabi');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (42, 38, 'Spor Ayakkabi');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (43, 38, 'Bot');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (44, 7, 'Telefon');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (45, 7, 'Bilgisayar');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (46, 7, 'Ev Elektronigi');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (47, 44, 'Akilli Telefon');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (48, 44, 'Klasik Telefon');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (49, 45, 'Dizüstü Bilgisayar');
insert into CATEGORIES (categoryid, parentid, categoryname)
values (50, 45, 'Masaüstü Bilgisayar');
commit;
prompt 50 records loaded
prompt Loading PRODUCTS...
insert into PRODUCTS (productid, productname, categoryid, price)
values (51, 'Elbise E', 8, 69.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (52, 'Þal A', 9, 19.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (53, 'Saç Bakým Yaðý A', 10, 29.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (54, 'Tiþört B', 14, 39.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (56, 'Týraþ Makinesi A', 16, 89.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (57, 'Çocuk Mont A', 20, 49.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (58, 'Oyuncak Araba A', 21, 14.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (59, 'Masal Kitabý A', 22, 9.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (60, 'Mutfak Robotu A', 26, 199.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (61, 'Sandalye A', 27, 89.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (62, 'Tablo A', 28, 49.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (63, 'Allýk A', 32, 19.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (64, 'Yüz Temizleme Jeli A', 33, 29.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (65, 'Parfüm A', 34, 99.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (1, 'Elbise A', 11, 49.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (2, 'Pantolon B', 12, 39.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (3, 'Bluz C', 13, 29.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (4, 'Elbise D', 11, 59.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (5, 'Pantolon E', 12, 49.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (6, 'Bluz F', 13, 39.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (7, 'Gömlek A', 17, 59.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (8, 'Pantolon B', 18, 49.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (9, 'Ceket C', 19, 89.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (10, 'Gömlek D', 17, 69.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (11, 'Pantolon E', 18, 59.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (12, 'Ceket F', 19, 99.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (13, 'Tiþört A', 23, 19.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (14, 'Pantolon B', 24, 29.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (15, 'Mont C', 25, 69.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (16, 'Tiþört D', 23, 24.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (17, 'Pantolon E', 24, 34.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (18, 'Mont F', 25, 74.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (19, 'Topuklu Ayakkabý A', 41, 79.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (20, 'Spor Ayakkabý B', 42, 59.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (21, 'Bot C', 43, 99.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (22, 'Topuklu Ayakkabý D', 41, 89.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (23, 'Spor Ayakkabý E', 42, 69.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (24, 'Bot F', 43, 109.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (25, 'Spor Ayakkabý A', 39, 69.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (26, 'Bot B', 39, 89.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (27, 'Günlük Ayakkabý C', 39, 49.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (28, 'Spor Ayakkabý D', 39, 79.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (29, 'Bot E', 39, 99.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (30, 'Günlük Ayakkabý F', 39, 59.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (31, 'Kadýn Çanta A', 40, 99.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (32, 'Kadýn Çanta B', 40, 89.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (33, 'Erkek Çanta C', 40, 79.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (34, 'Kadýn Çanta D', 40, 109.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (35, 'Kadýn Çanta E', 40, 119.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (36, 'Erkek Çanta F', 40, 89.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (37, 'Akýllý Telefon A', 47, 499.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (38, 'Klasik Telefon B', 48, 199.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (39, 'Dizüstü Bilgisayar C', 49, 999.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (40, 'Akýllý Telefon D', 47, 599.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (41, 'Klasik Telefon E', 48, 249.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (42, 'Dizüstü Bilgisayar F', 49, 1099.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (43, 'Tencere Seti A', 29, 79.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (44, 'Tabak Seti B', 30, 49.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (45, 'Çatal Býçak Takýmý C', 31, 39.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (46, 'Tencere Seti D', 29, 89.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (47, 'Tabak Seti E', 30, 59.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (48, 'Çatal Býçak Takýmý F', 31, 49.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (49, 'Ruj A', 35, 19.99);
insert into PRODUCTS (productid, productname, categoryid, price)
values (50, 'Fondöten B', 36, 29.99);
commit;
prompt 64 records loaded
prompt Loading PRODUCTATTRIBUTES...
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (201, 51, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (202, 51, 'Renk', 'Kýrmýzý');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (203, 51, 'Malzeme', 'Pamuk');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (204, 52, 'Boyut', 'Orta');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (205, 53, 'Tasarým', 'Düz');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (1, 1, 'Beden', 'S');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (2, 1, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (3, 1, 'Renk', 'Kýrmýzý');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (4, 1, 'Malzeme', 'Pamuk');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (5, 2, 'Beden', '32');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (6, 2, 'Beden', '34');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (7, 2, 'Renk', 'Mavi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (8, 2, 'Malzeme', 'Kot');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (9, 3, 'Beden', 'S');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (10, 3, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (11, 3, 'Renk', 'Beyaz');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (12, 3, 'Malzeme', 'Ýpek');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (13, 4, 'Beden', 'S');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (14, 4, 'Beden', 'L');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (15, 4, 'Renk', 'Yeþil');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (16, 4, 'Malzeme', 'Pamuk');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (17, 5, 'Beden', '36');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (18, 5, 'Beden', '38');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (19, 5, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (20, 5, 'Malzeme', 'Keten');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (21, 6, 'Beden', 'S');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (22, 6, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (23, 6, 'Renk', 'Mavi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (24, 6, 'Malzeme', 'Polyester');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (25, 7, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (26, 7, 'Beden', 'L');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (27, 7, 'Renk', 'Mavi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (28, 7, 'Malzeme', 'Pamuk');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (29, 8, 'Beden', '32');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (30, 8, 'Beden', '34');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (31, 8, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (32, 8, 'Malzeme', 'Kot');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (33, 9, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (34, 9, 'Beden', 'L');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (35, 9, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (36, 9, 'Malzeme', 'Yün');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (37, 10, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (38, 10, 'Beden', 'L');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (39, 10, 'Renk', 'Lacivert');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (40, 10, 'Malzeme', 'Pamuk');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (41, 11, 'Beden', '32');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (42, 11, 'Beden', '34');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (43, 11, 'Renk', 'Gri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (44, 11, 'Malzeme', 'Keten');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (45, 12, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (46, 12, 'Beden', 'L');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (47, 12, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (48, 12, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (49, 13, 'Beden', 'S');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (50, 13, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (51, 13, 'Renk', 'Kýrmýzý');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (52, 13, 'Malzeme', 'Pamuk');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (53, 14, 'Beden', '32');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (54, 14, 'Beden', '34');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (55, 14, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (56, 14, 'Malzeme', 'Kot');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (57, 15, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (58, 15, 'Beden', 'L');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (59, 15, 'Renk', 'Kýrmýzý');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (60, 15, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (61, 16, 'Beden', 'S');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (62, 16, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (63, 16, 'Renk', 'Mavi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (64, 16, 'Malzeme', 'Polyester');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (65, 17, 'Beden', '32');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (66, 17, 'Beden', '34');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (67, 17, 'Renk', 'Yeþil');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (68, 17, 'Malzeme', 'Pamuk');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (69, 18, 'Beden', 'M');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (70, 18, 'Beden', 'L');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (71, 18, 'Renk', 'Kahverengi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (72, 18, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (73, 19, 'Numara', '37');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (74, 19, 'Numara', '38');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (75, 19, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (76, 19, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (77, 20, 'Numara', '40');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (78, 20, 'Numara', '42');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (79, 20, 'Renk', 'Beyaz');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (80, 20, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (81, 21, 'Numara', '41');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (82, 21, 'Numara', '42');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (83, 21, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (84, 21, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (85, 22, 'Numara', '37');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (86, 22, 'Numara', '38');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (87, 22, 'Renk', 'Kýrmýzý');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (88, 22, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (89, 23, 'Numara', '40');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (90, 23, 'Numara', '42');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (91, 23, 'Renk', 'Mavi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (92, 23, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (93, 24, 'Numara', '41');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (94, 24, 'Numara', '42');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (95, 24, 'Renk', 'Siyah');
commit;
prompt 100 records committed...
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (96, 24, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (97, 25, 'Numara', '37');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (98, 25, 'Numara', '38');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (99, 25, 'Renk', 'Kahverengi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (100, 25, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (101, 26, 'Numara', '39');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (102, 26, 'Numara', '40');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (103, 26, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (104, 26, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (105, 27, 'Numara', '37');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (106, 27, 'Numara', '38');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (107, 27, 'Renk', 'Beyaz');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (108, 27, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (109, 28, 'Numara', '39');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (110, 28, 'Numara', '40');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (111, 28, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (112, 28, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (113, 29, 'Numara', '41');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (114, 29, 'Numara', '42');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (115, 29, 'Renk', 'Kahverengi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (116, 29, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (117, 30, 'Numara', '37');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (118, 30, 'Numara', '38');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (119, 30, 'Renk', 'Kýrmýzý');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (120, 30, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (121, 31, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (122, 31, 'Renk', 'Kýrmýzý');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (123, 32, 'Malzeme', 'Suni Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (124, 32, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (125, 33, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (126, 33, 'Renk', 'Kahverengi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (127, 34, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (128, 34, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (129, 35, 'Malzeme', 'Suni Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (130, 35, 'Renk', 'Beyaz');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (131, 36, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (132, 36, 'Renk', 'Kahverengi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (133, 37, 'Depolama', '64 GB');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (134, 37, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (135, 38, 'Depolama', '32 GB');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (136, 38, 'Renk', 'Beyaz');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (137, 39, 'RAM', '8 GB');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (138, 39, 'Depolama', '256 GB SSD');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (139, 31, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (140, 31, 'Renk', 'Kýrmýzý');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (141, 31, 'Boyut', 'Büyük');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (142, 32, 'Malzeme', 'Suni Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (143, 32, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (144, 32, 'Boyut', 'Orta');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (145, 33, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (146, 33, 'Renk', 'Kahverengi');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (147, 33, 'Boyut', 'Küçük');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (148, 37, 'Depolama', '64 GB');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (149, 37, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (150, 37, 'Ekran Boyutu', '6.1 inç');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (151, 38, 'Depolama', '32 GB');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (152, 38, 'Renk', 'Beyaz');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (153, 38, 'Ekran Boyutu', '4.7 inç');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (154, 39, 'RAM', '8 GB');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (155, 39, 'Depolama', '256 GB SSD');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (156, 39, 'Ekran Boyutu', '15.6 inç');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (157, 19, 'Numara', '37');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (158, 19, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (159, 19, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (160, 20, 'Numara', '40');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (161, 20, 'Renk', 'Beyaz');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (162, 20, 'Malzeme', 'Kanvas');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (163, 21, 'Numara', '41');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (164, 21, 'Renk', 'Siyah');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (165, 21, 'Malzeme', 'Deri');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (166, 43, 'Parça Sayýsý', '5');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (167, 43, 'Malzeme', 'Paslanmaz Çelik');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (168, 43, 'Kaplama', 'Teflon');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (169, 44, 'Parça Sayýsý', '6');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (170, 44, 'Malzeme', 'Seramik');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (171, 44, 'Renk', 'Beyaz');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (172, 45, 'Parça Sayýsý', '24');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (173, 45, 'Malzeme', 'Paslanmaz Çelik');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (174, 45, 'Kaplama', 'Altýn');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (175, 49, 'Renk', 'Kýrmýzý');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (176, 49, 'Renk', 'Pembe');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (177, 49, 'Tür', 'Mat');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (178, 50, 'Ton', 'Açýk');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (179, 50, 'Ton', 'Orta');
insert into PRODUCTATTRIBUTES (attributeid, productid, attributename, attributevalue)
values (180, 50, 'Kapatýcýlýk', 'Yüksek');
commit;
prompt 185 records loaded
prompt Loading USERS...
insert into USERS (userid, username, passwordhash, email)
values (1, 'user1', 'AL32UTF9', 'user1@example.com');
insert into USERS (userid, username, passwordhash, email)
values (2, 'user2', 'AL32UTF8', 'user2@example.com');
insert into USERS (userid, username, passwordhash, email)
values (3, 'user3', 'AL32UTF8', 'user3@example.com');
insert into USERS (userid, username, passwordhash, email)
values (4, 'user4', 'AL32UTF8', 'user4@example.com');
insert into USERS (userid, username, passwordhash, email)
values (5, 'user5', 'AL32UTF8', 'user5@example.com');
insert into USERS (userid, username, passwordhash, email)
values (6, 'user6', 'AL32UTF8', 'user6@example.com');
insert into USERS (userid, username, passwordhash, email)
values (7, 'user7', 'AL32UTF8', 'user7@example.com');
insert into USERS (userid, username, passwordhash, email)
values (8, 'user8', 'AL32UTF8', 'user8@example.com');
insert into USERS (userid, username, passwordhash, email)
values (9, 'user9', 'AL32UTF8', 'user9@example.com');
insert into USERS (userid, username, passwordhash, email)
values (10, 'user10', 'AL32UTF8', 'user10@example.com');
insert into USERS (userid, username, passwordhash, email)
values (11, 'user11', 'AL32UTF8', 'user11@example.com');
insert into USERS (userid, username, passwordhash, email)
values (12, 'user12', 'AL32UTF8', 'user12@example.com');
insert into USERS (userid, username, passwordhash, email)
values (13, 'user13', 'AL32UTF8', 'user13@example.com');
insert into USERS (userid, username, passwordhash, email)
values (14, 'user14', 'AL32UTF8', 'user14@example.com');
insert into USERS (userid, username, passwordhash, email)
values (15, 'user15', 'AL32UTF8', 'user15@example.com');
insert into USERS (userid, username, passwordhash, email)
values (16, 'user16', 'AL32UTF8', 'user16@example.com');
insert into USERS (userid, username, passwordhash, email)
values (17, 'user17', 'AL32UTF8', 'user17@example.com');
insert into USERS (userid, username, passwordhash, email)
values (18, 'user18', 'AL32UTF8', 'user18@example.com');
insert into USERS (userid, username, passwordhash, email)
values (19, 'user19', 'AL32UTF8', 'user19@example.com');
insert into USERS (userid, username, passwordhash, email)
values (20, 'user20', 'AL32UTF8', 'user20@example.com');
insert into USERS (userid, username, passwordhash, email)
values (21, 'user21', 'AL32UTF8', 'user21@example.com');
insert into USERS (userid, username, passwordhash, email)
values (22, 'user22', 'AL32UTF8', 'user22@example.com');
insert into USERS (userid, username, passwordhash, email)
values (23, 'user23', 'AL32UTF8', 'user23@example.com');
insert into USERS (userid, username, passwordhash, email)
values (24, 'user24', 'AL32UTF8', 'user24@example.com');
insert into USERS (userid, username, passwordhash, email)
values (25, 'user25', 'AL32UTF8', 'user25@example.com');
insert into USERS (userid, username, passwordhash, email)
values (26, 'user26', 'AL32UTF8', 'user26@example.com');
insert into USERS (userid, username, passwordhash, email)
values (27, 'user27', 'AL32UTF8', 'user27@example.com');
insert into USERS (userid, username, passwordhash, email)
values (28, 'user28', 'AL32UTF8', 'user28@example.com');
insert into USERS (userid, username, passwordhash, email)
values (29, 'user29', 'AL32UTF8', 'user29@example.com');
insert into USERS (userid, username, passwordhash, email)
values (30, 'user30', 'AL32UTF8', 'user30@example.com');
insert into USERS (userid, username, passwordhash, email)
values (31, 'user31', 'AL32UTF8', 'user31@example.com');
insert into USERS (userid, username, passwordhash, email)
values (32, 'user32', 'AL32UTF8', 'user32@example.com');
insert into USERS (userid, username, passwordhash, email)
values (33, 'user33', 'AL32UTF8', 'user33@example.com');
insert into USERS (userid, username, passwordhash, email)
values (34, 'user34', 'AL32UTF8', 'user34@example.com');
insert into USERS (userid, username, passwordhash, email)
values (35, 'user35', 'AL32UTF8', 'user35@example.com');
insert into USERS (userid, username, passwordhash, email)
values (36, 'user36', 'AL32UTF8', 'user36@example.com');
insert into USERS (userid, username, passwordhash, email)
values (37, 'user37', 'AL32UTF8', 'user37@example.com');
insert into USERS (userid, username, passwordhash, email)
values (38, 'user38', 'AL32UTF8', 'user38@example.com');
insert into USERS (userid, username, passwordhash, email)
values (39, 'user39', 'AL32UTF8', 'user39@example.com');
insert into USERS (userid, username, passwordhash, email)
values (40, 'user40', 'AL32UTF8', 'user40example.com');
insert into USERS (userid, username, passwordhash, email)
values (41, 'user41', 'AL32UTF8', 'user41@example.com');
insert into USERS (userid, username, passwordhash, email)
values (42, 'user42', 'AL32UTF8', 'user42@example.com');
insert into USERS (userid, username, passwordhash, email)
values (43, 'user43', 'AL32UTF8', 'user43@example.com');
insert into USERS (userid, username, passwordhash, email)
values (44, 'user44', 'AL32UTF8', 'user44@example.com');
insert into USERS (userid, username, passwordhash, email)
values (45, 'user45', 'AL32UTF8', 'user45@example.com');
insert into USERS (userid, username, passwordhash, email)
values (46, 'user46', 'AL32UTF8', 'user46@example.com');
insert into USERS (userid, username, passwordhash, email)
values (47, 'user47', 'AL32UTF8', 'user47@example.com');
insert into USERS (userid, username, passwordhash, email)
values (48, 'user48', 'AL32UTF8', 'user48@example.com');
insert into USERS (userid, username, passwordhash, email)
values (49, 'user49', 'AL32UTF8', 'user49@example.com');
insert into USERS (userid, username, passwordhash, email)
values (50, 'user50', 'AL32UTF8', 'user50@example.com');
commit;
prompt 50 records loaded
prompt Loading BASKET...
insert into BASKET (basketid, userid, productid, productattributeid, quantity)
values (5, 2, 12, 8, 3);
commit;
prompt 1 records loaded
prompt Loading ORDERS...
insert into ORDERS (orderid, userid, orderdate, totalamount)
values (1, 1, to_date('22-08-2024 13:50:19', 'dd-mm-yyyy hh24:mi:ss'), 489.93);
commit;
prompt 1 records loaded
prompt Loading ORDERITEMS...
insert into ORDERITEMS (orderitemid, orderid, productid, productattributeid, quantity, price)
values (1, 1, 10, 5, 7, 489.93);
commit;
prompt 1 records loaded
prompt Loading USERFAVORITES...
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (42, 1, 1, 1);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (43, 1, 2, 2);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (44, 1, 3, 3);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (45, 1, 4, 4);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (46, 1, 5, 5);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (47, 1, 6, 6);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (48, 1, 7, 7);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (49, 1, 8, 8);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (50, 1, 9, 9);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (51, 1, 10, 10);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (52, 1, 11, 11);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (53, 1, 12, 12);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (54, 1, 13, 13);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (55, 1, 14, 14);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (56, 1, 15, 15);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (57, 1, 16, 16);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (58, 1, 17, 17);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (59, 1, 18, 18);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (60, 1, 19, 19);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (61, 1, 20, 20);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (62, 2, 1, 1);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (63, 2, 2, 2);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (64, 2, 3, 3);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (65, 2, 4, 4);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (66, 2, 5, 5);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (67, 2, 6, 6);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (68, 3, 6, 6);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (69, 1, 1, 540);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (70, 1, 2, 544);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (71, 1, 3, 548);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (72, 1, 4, 552);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (73, 1, 5, 556);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (74, 1, 6, 560);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (75, 1, 7, 564);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (76, 1, 8, 568);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (77, 1, 9, 572);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (78, 1, 10, 576);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (79, 1, 11, 580);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (80, 1, 12, 584);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (81, 2, 1, 541);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (82, 2, 2, 545);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (83, 2, 3, 549);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (84, 2, 6, 561);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (85, 2, 7, 565);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (86, 2, 10, 577);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (87, 2, 12, 585);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (88, 2, 13, 588);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (89, 2, 14, 592);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (90, 2, 15, 596);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (91, 2, 40, 676);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (92, 2, 43, 705);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (93, 3, 1, 540);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (94, 3, 2, 544);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (95, 3, 4, 553);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (96, 3, 5, 556);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (97, 3, 6, 560);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (98, 3, 10, 576);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (99, 3, 12, 585);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (100, 3, 15, 598);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (101, 3, 40, 678);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (102, 3, 43, 706);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (103, 3, 44, 709);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (104, 3, 45, 712);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (38, 1, 10, 540);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (39, 2, 12, 544);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (40, 3, 15, 548);
insert into USERFAVORITES (favoriteid, userid, productid, productattributeid)
values (41, 3, 40, 553);
commit;
prompt 67 records loaded
prompt Enabling foreign key constraints for CATEGORIES...
alter table CATEGORIES enable constraint SYS_C008349;
prompt Enabling foreign key constraints for PRODUCTS...
alter table PRODUCTS enable constraint SYS_C008368;
prompt Enabling foreign key constraints for PRODUCTATTRIBUTES...
alter table PRODUCTATTRIBUTES enable constraint SYS_C008399;
prompt Enabling foreign key constraints for BASKET...
alter table BASKET enable constraint SYS_C008404;
alter table BASKET enable constraint SYS_C008405;
alter table BASKET enable constraint SYS_C008406;
prompt Enabling foreign key constraints for ORDERS...
alter table ORDERS enable constraint SYS_C008410;
prompt Enabling foreign key constraints for ORDERITEMS...
alter table ORDERITEMS enable constraint SYS_C008416;
alter table ORDERITEMS enable constraint SYS_C008417;
alter table ORDERITEMS enable constraint SYS_C008418;
prompt Enabling foreign key constraints for USERFAVORITES...
alter table USERFAVORITES enable constraint SYS_C008390;
alter table USERFAVORITES enable constraint SYS_C008391;
prompt Enabling triggers for CATEGORIES...
alter table CATEGORIES enable all triggers;
prompt Enabling triggers for PRODUCTS...
alter table PRODUCTS enable all triggers;
prompt Enabling triggers for PRODUCTATTRIBUTES...
alter table PRODUCTATTRIBUTES enable all triggers;
prompt Enabling triggers for USERS...
alter table USERS enable all triggers;
prompt Enabling triggers for BASKET...
alter table BASKET enable all triggers;
prompt Enabling triggers for ORDERS...
alter table ORDERS enable all triggers;
prompt Enabling triggers for ORDERITEMS...
alter table ORDERITEMS enable all triggers;
prompt Enabling triggers for USERFAVORITES...
alter table USERFAVORITES enable all triggers;

set feedback on
set define on
prompt Done
