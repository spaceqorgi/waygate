create table auth_permission
(
    id              serial       not null
        constraint auth_permission_pkey
            primary key,
    name            varchar(255) not null,
    content_type_id integer      not null
        constraint auth_permission_content_type_id_2f476e4b_fk_django_co
            references django_content_type
            deferrable initially deferred,
    codename        varchar(100) not null,
    constraint auth_permission_content_type_id_codename_01ab375a_uniq
        unique (content_type_id, codename)
);

alter table auth_permission
    owner to admin;

create index auth_permission_content_type_id_2f476e4b
    on auth_permission (content_type_id);

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add book', 1, 'add_book');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change book', 1, 'change_book');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete book', 1, 'delete_book');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view book', 1, 'view_book');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add character', 2, 'add_character');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change character', 2, 'change_character');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete character', 2, 'delete_character');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view character', 2, 'view_character');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add chapter', 3, 'add_chapter');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change chapter', 3, 'change_chapter');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete chapter', 3, 'delete_chapter');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view chapter', 3, 'view_chapter');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add map pin', 4, 'add_mappin');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change map pin', 4, 'change_mappin');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete map pin', 4, 'delete_mappin');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view map pin', 4, 'view_mappin');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add point of view', 5, 'add_pointofview');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change point of view', 5, 'change_pointofview');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete point of view', 5, 'delete_pointofview');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view point of view', 5, 'view_pointofview');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add log entry', 6, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change log entry', 6, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete log entry', 6, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view log entry', 6, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add permission', 7, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change permission', 7, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete permission', 7, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view permission', 7, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add group', 8, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change group', 8, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete group', 8, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view group', 8, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add user', 9, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change user', 9, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete user', 9, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view user', 9, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add content type', 10, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change content type', 10, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete content type', 10, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view content type', 10, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add session', 11, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change session', 11, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete session', 11, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view session', 11, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add po v', 12, 'add_pov');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change po v', 12, 'change_pov');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete po v', 12, 'delete_pov');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view po v', 12, 'view_pov');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (49, 'Can add pin', 4, 'add_pin');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (50, 'Can change pin', 4, 'change_pin');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (51, 'Can delete pin', 4, 'delete_pin');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (52, 'Can view pin', 4, 'view_pin');