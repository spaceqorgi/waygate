create table map_pin
(
    id               serial           not null
        constraint map_mappin_pkey
            primary key,
    start_x          double precision not null,
    start_y          double precision not null,
    end_x            double precision not null,
    end_y            double precision not null,
    type             varchar(100)     not null,
    chapter_id       integer          not null
        constraint map_pin_chapter_id_57cd406b_fk_map_chapter_id
            references map_chapter
            deferrable initially deferred,
    point_of_view_id integer          not null
);

alter table map_pin
    owner to admin;

create index map_mappin_chapter_number_id_05a45b02
    on map_pin (chapter_id);

create index map_mappin_point_of_view_id_81a99af0
    on map_pin (point_of_view_id);

