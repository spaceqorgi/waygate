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

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add point', 1, 'add_point');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change point', 1, 'change_point');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete point', 1, 'delete_point');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view point', 1, 'view_point');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add narrator', 2, 'add_narrator');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change narrator', 2, 'change_narrator');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete narrator', 2, 'delete_narrator');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view narrator', 2, 'view_narrator');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add chapter', 3, 'add_chapter');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change chapter', 3, 'change_chapter');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete chapter', 3, 'delete_chapter');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view chapter', 3, 'view_chapter');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add book', 4, 'add_book');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change book', 4, 'change_book');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete book', 4, 'delete_book');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view book', 4, 'view_book');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add character', 5, 'add_character');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change character', 5, 'change_character');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete character', 5, 'delete_character');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view character', 5, 'view_character');
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