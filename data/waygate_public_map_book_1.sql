create table map_book
(
    book_number smallint     not null
        constraint map_book_book_number_a8368448_pk
            primary key
        constraint map_book_book_number_a8368448_uniq
            unique
        constraint map_book_book_number_check
            check (book_number >= 0),
    book_name   varchar(200) not null
);

alter table map_book
    owner to admin;

INSERT INTO public.map_book (book_number, book_name) VALUES (0, 'New Spring');
INSERT INTO public.map_book (book_number, book_name) VALUES (1, 'The Eye of the World');
INSERT INTO public.map_book (book_number, book_name) VALUES (2, 'The Great Hunt');
INSERT INTO public.map_book (book_number, book_name) VALUES (3, 'The Dragon Reborn');
INSERT INTO public.map_book (book_number, book_name) VALUES (4, 'The Shadow Rising');
INSERT INTO public.map_book (book_number, book_name) VALUES (5, 'The Fires of Heaven');
INSERT INTO public.map_book (book_number, book_name) VALUES (6, 'Lord of Chaos');
INSERT INTO public.map_book (book_number, book_name) VALUES (7, 'A Crown of Swords');
INSERT INTO public.map_book (book_number, book_name) VALUES (8, 'The Path of Daggers');
INSERT INTO public.map_book (book_number, book_name) VALUES (9, 'Winter''s Heart');
INSERT INTO public.map_book (book_number, book_name) VALUES (10, 'Crossroads of Twilight');
INSERT INTO public.map_book (book_number, book_name) VALUES (11, 'Knife of Dreams');
INSERT INTO public.map_book (book_number, book_name) VALUES (12, 'The Gathering Storm');
INSERT INTO public.map_book (book_number, book_name) VALUES (13, 'Towers of Midnight');
INSERT INTO public.map_book (book_number, book_name) VALUES (14, 'A Memory of Light');