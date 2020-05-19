create table map_pov
(
    id           serial  not null
        constraint map_pov_pkey
            primary key,
    chapter_id   integer not null
        constraint map_pov_chapter_id_1be1947d_fk_map_chapter_id
            references map_chapter
            deferrable initially deferred,
    character_id integer not null
        constraint map_pov_character_id_3e0eb077_fk_map_character_id
            references map_character
            deferrable initially deferred
);

alter table map_pov
    owner to admin;

create index map_pov_chapter_id_1be1947d
    on map_pov (chapter_id);

create index map_pov_character_id_3e0eb077
    on map_pov (character_id);

