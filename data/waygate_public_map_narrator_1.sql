create table map_narrator
(
    id           serial  not null
        constraint map_pov_pkey
            primary key,
    chapter_id   integer not null
        constraint map_narrator_chapter_id_b2b6a8ba_fk_map_chapter_id
            references map_chapter
            deferrable initially deferred,
    character_id integer not null
        constraint map_narrator_character_id_5fd902f8_fk_map_character_id
            references map_character
            deferrable initially deferred
);

alter table map_narrator
    owner to admin;

create index map_pov_chapter_id_1be1947d
    on map_narrator (chapter_id);

create index map_pov_character_id_3e0eb077
    on map_narrator (character_id);

INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (2, 1, 79);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (3, 2, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (4, 3, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (5, 4, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (7, 5, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (8, 6, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (9, 7, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (10, 8, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (11, 9, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (12, 10, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (13, 11, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (14, 12, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (15, 13, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (16, 14, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (17, 15, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (18, 16, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (56, 52, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (19, 17, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (57, 53, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (21, 19, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (20, 18, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (22, 20, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (23, 21, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (24, 21, 106);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (25, 21, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (26, 22, 101);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (27, 23, 106);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (28, 24, 106);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (29, 25, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (30, 26, 106);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (31, 27, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (32, 28, 106);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (33, 29, 101);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (34, 30, 106);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (35, 31, 106);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (58, 54, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (37, 33, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (36, 32, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (38, 34, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (39, 35, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (40, 36, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (41, 37, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (42, 38, 101);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (43, 39, 106);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (44, 40, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (45, 41, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (46, 42, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (47, 43, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (48, 44, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (50, 46, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (49, 45, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (54, 50, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (55, 51, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (53, 49, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (52, 48, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (51, 47, 110);
INSERT INTO public.map_narrator (id, chapter_id, character_id) VALUES (59, 54, 94);