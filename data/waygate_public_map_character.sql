create table map_character
(
    id           serial       not null
        constraint map_character_pkey
            primary key,
    display_name varchar(200) not null,
    fullname     varchar(200) not null,
    color        varchar(7)   not null
);

alter table map_character
    owner to admin;

INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (2, 'Lan', 'Al''Lan Mandragoran', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (1, 'Abaldar', 'Abaldar Yulan', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (3, 'Adelorna', 'Adelorna Bastine', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (4, 'Alliandre', 'Alliandre Maritha Kigarin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (5, 'Almen', 'Almen Bunt', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (6, 'Almurat', 'Almurat Mor', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (7, 'Alteima', 'Alteima', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (8, 'Alviarin', 'Alviarin Freidhen', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (9, 'Androl', 'Androl Genhald', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (10, 'Aran', 'Aran''gar', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (11, 'Arymilla', 'Arymilla Marne', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (12, 'Asmodean', 'Asmodean', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (13, 'Asne', 'Asne Zeramene', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (14, 'Assid', 'Assid Bakuun', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (15, 'Atal', 'Atal Mishraile', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (16, 'Aviendha', 'Aviendha', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (17, 'Bain', 'Bain', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (18, 'Barmellin', 'Barmellin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (19, 'Barriga', 'Barriga', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (20, 'Bayle', 'Bayle Domon', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (21, 'Bayrd', 'Bayrd', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (22, 'Beonin', 'Beonin Marinye', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (23, 'Berelain', 'Berelain sur Paendrag', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (24, 'Bertome', 'Bertome Saighan', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (25, 'Bethamin', 'Bethamin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (26, 'Birgitte', 'Birgitte Silverbow', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (27, 'Cadsuane', 'Cadsuane Melaidhrin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (28, 'Chulein', 'Chulein', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (29, 'Cyndane', 'Cyndane', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (30, 'Dain', 'Dain Bornhald', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (31, 'The', 'The Dark One', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (32, 'Daved', 'Daved Hanlon', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (33, 'Davram', 'Davram t''Ghaline Bashere', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (34, 'Delana', 'Delana Mosalaine', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (35, 'Demandred', 'Demandred', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (36, 'Demira', 'Demira Eriff', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (37, 'Dyelin', 'Dyelin Taravin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (38, 'Eamon', 'Eamon Valda', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (39, 'Eben', 'Eben Hopwil', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (40, 'Egeanin', 'Egeanin Tamarath', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (41, 'Egwene', 'Egwene al''Vere', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (42, 'Elaida', 'Elaida do Avriny a''Roihan', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (43, 'Elayne', 'Elayne Trakand', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (44, 'Elenia', 'Elenia Sarand', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (45, 'Ellorien', 'Ellorien Traemane', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (46, 'Elmindreda', 'Elmindreda Farshaw', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (47, 'Elza', 'Elza Penfell', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (48, 'Ethenielle', 'Ethenielle Cosaru Noramaga', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (49, 'Faile', 'Faile ni Bashere t''Aybara', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (50, 'Falendre', 'Falendre', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (51, 'Falion', 'Falion Bhoda', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (52, 'Furyk', 'Furyk Karede', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (53, 'Gabrelle', 'Gabrelle', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (54, 'Galadedrid', 'Galadedrid Damodred', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (55, 'Galina', 'Galina Casban', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (56, 'Gareth', 'Gareth Bryne', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (57, 'Gaul', 'Gaul', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (58, 'Gawyn', 'Gawyn Trakand', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (59, 'Geofram', 'Geofram Bornhald', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (60, 'Gerard', 'Gerard Arganda', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (61, 'Gholam', 'Gholam', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (62, 'Graendal', 'Graendal', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (63, 'Hadnan', 'Hadnan Kadere', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (64, 'Harine', 'Harine din Togara', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (65, 'Herid', 'Herid Fel', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (66, 'Hurin', 'Hurin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (67, 'Ila', 'Ila', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (68, 'Isam', 'Isam/Luc Mantear/Slayer', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (69, 'Jaichim', 'Jaichim Carridin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (70, 'Jaret', 'Jaret Byar', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (71, 'Jesse', 'Jesse Bilal', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (72, 'Joline', 'Joline Maza', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (73, 'Juilin', 'Juilin Sandar', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (74, 'Jur', 'Jur Grady', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (75, 'Katerine', 'Katerine Alruddin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (76, 'Kennar', 'Kennar Miraj', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (77, 'Leane', 'Leane Sharif', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (78, 'Lelaine', 'Lelaine Akashi', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (79, 'Lews', 'Lews Therin Telamon', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (80, 'Liandrin', 'Liandrin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (81, 'Logain', 'Logain Ablar', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (82, 'Loial', 'Loial', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (83, 'Luan', 'Luan Norwelyn', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (84, 'Lyrelle', 'Lyrelle', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (85, 'Maeric', 'Maeric', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (86, 'Malenarin', 'Malenarin Rai', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (87, 'Masema', 'Masema Dagar', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (89, 'Mazrim', 'Mazrim Taim', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (90, 'Merana', 'Merana Ambrey', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (91, 'Mesaana', 'Mesaana', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (92, 'Mili', 'Mili Skane', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (93, 'Moghedien', 'Moghedien', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (94, 'Moiraine', 'Moiraine Damodred', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (95, 'Morgase', 'Morgase Trakand', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (96, 'Moridin', 'Moridin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (97, 'Myrelle', 'Myrelle Berengari', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (98, 'Narrator', 'Narrator', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (99, 'Nesune', 'Nesune Bihara', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (100, 'Noal', 'Noal Charin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (101, 'Nynaeve', 'Nynaeve ti al''Meara Mandragoran', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (102, 'Olver', 'Olver', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (103, 'Osan', 'Osan''gar', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (104, 'Padan', 'Padan Fain/Ordeith/Shaisam', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (105, 'Pedron', 'Pedron Niall', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (106, 'Perrin', 'Perrin t''Bashere Aybara', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (107, 'Pevara', 'Pevara Tazanovni', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (108, 'Raefar', 'Raefar Kisman', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (109, 'Rahvin', 'Rahvin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (110, 'Rand', 'Rand al''Thor', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (111, 'Reanne', 'Reanne Corly', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (112, 'Renald', 'Renald Fanwar', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (113, 'Rhadam', 'Rhadam Asunawa', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (114, 'Rhuarc', 'Rhuarc', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (115, 'Rodel', 'Rodel Ituralde', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (116, 'Romanda', 'Romanda Cassin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (117, 'Saerin', 'Saerin Asnobar', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (118, 'Sahra', 'Sahra Covenry', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (119, 'Samitsu', 'Samitsu Tamagowa', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (120, 'Sammael', 'Sammael', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (121, 'Sarene', 'Sarene Nemdahl', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (122, 'Seaine', 'Seaine Herimon', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (123, 'Semirhage', 'Semirhage', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (124, 'Sevanna', 'Sevanna', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (125, 'Shaidar', 'Shaidar Haran', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (126, 'Shalon', 'Shalon din Togara Morning Tide', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (127, 'Shendla', 'Shendla', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (128, 'Sheriam', 'Sheriam Bayanar', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (129, 'Silviana', 'Silviana Brehon', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (130, 'Siuan', 'Siuan Sanche', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (131, 'Slayer', 'Slayer', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (132, 'Sorilea', 'Sorilea', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (133, 'Sulin', 'Sulin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (134, 'Suroth', 'Suroth Sabelle Meldarath', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (135, 'Talmanes', 'Talmanes Delovinde', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (136, 'Tam', 'Tam al''Thor', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (137, 'Tarna', 'Tarna Feir', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (138, 'Thomdril', 'Thomdril Merrilin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (139, 'Timna', 'Timna', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (140, 'Toveine', 'Toveine Gazal', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (141, 'Tuon', 'Tuon Athaem Kore Paendrag/Fortuona', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (142, 'Tylee', 'Tylee Khirgan', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (143, 'Uno', 'Uno Nomesta', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (144, 'Varek', 'Varek', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (145, 'Verin', 'Verin Mathwin', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (146, 'Vilnar', 'Vilnar Barada', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (147, 'Weilin', 'Weilin Aldragoran', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (148, 'Yukiri', 'Yukiri', '#FFFFFF');
INSERT INTO public.map_character (id, display_name, fullname, color) VALUES (88, 'Mat', 'Matrim Cauthon', '#FFFFFF');