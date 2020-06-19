create table django_content_type
(
    id        serial       not null
        constraint django_content_type_pkey
            primary key,
    app_label varchar(100) not null,
    model     varchar(100) not null,
    constraint django_content_type_app_label_model_76bd3d3b_uniq
        unique (app_label, model)
);

alter table django_content_type
    owner to admin;

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'map', 'point');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'map', 'narrator');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'map', 'chapter');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'map', 'book');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'map', 'character');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'sessions', 'session');