create table django_migrations
(
    id      serial                   not null
        constraint django_migrations_pkey
            primary key,
    app     varchar(255)             not null,
    name    varchar(255)             not null,
    applied timestamp with time zone not null
);

alter table django_migrations
    owner to admin;

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2020-05-19 09:07:46.007401');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2020-05-19 09:07:46.032981');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2020-05-19 09:07:46.083691');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-05-19 09:07:46.097623');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-19 09:07:46.105005');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-05-19 09:07:46.120135');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-05-19 09:07:46.124620');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-05-19 09:07:46.130592');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-05-19 09:07:46.135606');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-05-19 09:07:46.141281');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-05-19 09:07:46.142983');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-05-19 09:07:46.147435');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-05-19 09:07:46.155015');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-05-19 09:07:46.159951');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-05-19 09:07:46.164788');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-05-19 09:07:46.169210');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'map', '0001_initial', '2020-05-19 09:07:46.180887');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'map', '0002_point', '2020-05-19 09:07:46.188444');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'map', '0003_auto_20200511_1737', '2020-05-19 09:07:46.204527');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'sessions', '0001_initial', '2020-05-19 09:07:46.219608');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'map', '0004_auto_20200519_1104', '2020-05-19 11:04:18.562920');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'map', '0005_auto_20200519_1142', '2020-05-19 11:43:00.139273');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'map', '0006_auto_20200519_1212', '2020-05-19 12:13:10.921275');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'map', '0007_auto_20200519_1227', '2020-05-19 12:27:05.690845');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'map', '0008_auto_20200519_1231', '2020-05-19 12:31:10.408645');