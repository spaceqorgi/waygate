create table map_point
(
    id          serial           not null
        constraint map_mappin_pkey
            primary key,
    x           double precision not null,
    type        varchar(100)     not null,
    narrator_id integer          not null
        constraint map_point_narrator_id_be84f647_fk_map_narrator_id
            references map_narrator
            deferrable initially deferred,
    y           double precision not null
);

alter table map_point
    owner to admin;

create index map_pin_pov_id_e9f1cb9c
    on map_point (narrator_id);

INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (7, 2536, 'ev', 2, 924);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (8, 1504, 'ld', 3, 1290);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (9, 1530, 'ld', 3, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (11, 1530, 'ev', 4, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (12, 1530, 'ev', 5, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (13, 1530, 'ld', 8, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (14, 1494, 'bt', 8, 1280);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (15, 1494, 'ld', 9, 1280);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (16, 1511, 'ev', 9, 1283);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (17, 1511, 'ld', 10, 1283);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (18, 1530, 'ev', 10, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (20, 1530, 'ev', 12, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (21, 1530, 'ev', 7, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (22, 1530, 'ld', 13, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (23, 1543, 'ld', 13, 1275);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (24, 1543, 'ld', 14, 1275);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (25, 1548, 'ld', 14, 1273);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (26, 1558, 'ld', 14, 1251);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (27, 1558, 'se', 15, 1251);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (28, 1560, 'se', 15, 1240);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (29, 1560, 'ld', 16, 1240);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (30, 1564, 'ld', 16, 1219);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (31, 1569, 'ld', 16, 1186);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (32, 1569, 'ev', 17, 1186);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (19, 1530, 'ev', 11, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (33, 1569, 'ev', 18, 1186);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (34, 1569, 'ev', 19, 1186);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (35, 1569, 'ev', 20, 1186);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (37, 1622, 'ld', 21, 1207);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (38, 1659, 'ld', 21, 1227);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (39, 1750, 'ld', 21, 1301);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (40, 1817, 'bt', 21, 1311);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (41, 1842, 'ld', 21, 1260);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (36, 1622, 'ld', 20, 1207);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (42, 1853, 'ld', 22, 1251);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (44, 1852, 'ld', 23, 1252);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (45, 1860, 'ld', 23, 1250);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (46, 1851, 'ld', 24, 1250);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (47, 1860, 'ld', 24, 1249);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (48, 1870, 'se', 24, 1249);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (49, 1860, 'bt', 25, 1250);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (50, 1867, 'ld', 25, 1250);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (51, 1875, 'se', 25, 1270);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (52, 1862, 'ev', 26, 1252);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (53, 1868, 'ld', 26, 1266);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (54, 1877, 'ld', 27, 1252);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (55, 1901, 'ld', 27, 1266);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (56, 1901, 'ld', 28, 1266);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (57, 1900, 'cp', 28, 1252);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (58, 1928, 'ld', 28, 1251);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (59, 1878, 'se', 29, 1272);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (60, 1905, 'se', 29, 1285);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (61, 1925, 'se', 29, 1314);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (62, 1929, 'se', 29, 1337);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (63, 1939, 'ld', 30, 1268);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (64, 1978, 'cp', 30, 1275);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (65, 1930, 'ev', 31, 1337);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (66, 1932, 'ev', 31, 1363);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (67, 1930, 'ev', 31, 1377);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (68, 1961, 'ev', 31, 1382);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (69, 2009, 'ld', 32, 1292);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (70, 2045, 'ld', 32, 1287);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (71, 2095, 'ld', 32, 1286);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (72, 1908, 'ev', 33, 1383);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (73, 1930, 'ev', 33, 1384);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (74, 1953, 'ld', 33, 1381);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (75, 2105, 'ld', 34, 1267);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (76, 2180, 'ld', 34, 1264);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (77, 2239, 'ld', 34, 1262);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (78, 2239, 'bt', 35, 1262);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (79, 1990, 'ld', 36, 1379);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (80, 2013, 'ld', 36, 1379);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (81, 2033, 'ld', 36, 1381);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (82, 2079, 'ld', 36, 1386);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (107, 2149, 'ev', 43, 1341);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (93, 2325, 'bt', 37, 1388);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (83, 2110, 'ld', 36, 1388);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (84, 2164, 'ld', 36, 1393);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (85, 2201, 'ld', 36, 1399);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (86, 2221, 'ld', 36, 1394);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (87, 2245, 'ld', 36, 1396);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (88, 2264, 'ld', 36, 1387);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (89, 2280, 'ld', 36, 1390);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (90, 2298, 'ld', 36, 1392);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (92, 2325, 'ld', 36, 1388);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (94, 2324, 'ev', 38, 1387);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (95, 2346, 'ld', 38, 1387);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (96, 2357, 'ld', 38, 1387);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (97, 2363, 'ld', 38, 1387);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (98, 2363, 'ev', 39, 1387);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (99, 2369, 'ev', 39, 1388);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (100, 2385, 'ev', 39, 1387);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (101, 2409, 'ev', 39, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (102, 2409, 'ev', 40, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (103, 2409, 'ev', 41, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (104, 2103, 'ld', 42, 1387);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (105, 2148, 'ld', 42, 1389);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (106, 2149, 'ev', 42, 1341);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (108, 2178, 'ev', 43, 1353);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (109, 2193, 'ev', 43, 1372);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (110, 2206, 'ev', 43, 1397);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (111, 2409, 'ev', 44, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (112, 2409, 'ev', 45, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (113, 2409, 'ev', 46, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (114, 2409, 'ev', 47, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (115, 2409, 'ev', 48, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (116, 2409, 'wg', 49, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (117, 2409, 'wg', 50, 1385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (118, 3061, 'ev', 50, 427);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (121, 3058, 'ld', 52, 407);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (127, 3073, 'ev', 54, 354);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (119, 3061, 'ld', 51, 427);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (120, 3058, 'ld', 51, 407);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (128, 3073, 'bt', 55, 354);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (122, 3089, 'ld', 53, 365);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (126, 3073, 'ld', 53, 354);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (123, 3071, 'ld', 52, 385);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (124, 3087, 'ld', 52, 374);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (125, 3089, 'ld', 52, 365);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (129, 3073, 'bt', 56, 354);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (130, 3208, 'wg', 56, 326);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (131, 3073, 'ev', 57, 354);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (137, 3073, 'ld', 58, 354);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (138, 3090, 'ld', 58, 365);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (139, 3064, 'ld', 58, 380);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (140, 3058, 'ld', 58, 407);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (136, 3058, 'ev', 59, 407);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (1, 3024, 'ld', 59, 458);
INSERT INTO public.map_point (id, x, type, narrator_id, y) VALUES (2, 2923, 'ld', 59, 445);