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

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2020-06-08 02:25:31.194477');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2020-06-08 02:25:31.220251');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2020-06-08 02:25:31.255329');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-06-08 02:25:31.268479');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-08 02:25:31.277110');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-06-08 02:25:31.294482');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-06-08 02:25:31.298609');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-06-08 02:25:31.304528');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-06-08 02:25:31.309632');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-06-08 02:25:31.315042');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-06-08 02:25:31.316616');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-08 02:25:31.321633');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-06-08 02:25:31.329765');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-08 02:25:31.335130');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-06-08 02:25:31.340519');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-06-08 02:25:31.347109');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'sessions', '0001_initial', '2020-06-08 02:25:31.352141');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'map', '0001_initial', '2020-06-08 02:26:12.396537');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'map', '0002_point', '2020-06-08 02:26:12.412231');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'map', '0003_auto_20200511_1737', '2020-06-08 02:26:12.435521');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'map', '0004_auto_20200519_1104', '2020-06-08 02:26:12.466155');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'map', '0005_auto_20200519_1142', '2020-06-08 02:26:12.477072');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'map', '0006_auto_20200519_1212', '2020-06-08 02:26:12.492858');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (24, 'map', '0007_auto_20200519_1227', '2020-06-08 02:26:12.516406');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (25, 'map', '0008_auto_20200519_1231', '2020-06-08 02:26:12.525274');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (26, 'map', '0009_auto_20200519_1301', '2020-06-08 02:26:12.537945');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (27, 'map', '0010_auto_20200519_1303', '2020-06-08 02:26:12.548639');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (28, 'map', '0011_auto_20200519_1303', '2020-06-08 02:26:12.556955');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (29, 'map', '0012_auto_20200519_1307', '2020-06-08 02:26:12.567389');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (30, 'map', '0013_auto_20200520_0620', '2020-06-08 02:26:12.584261');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (31, 'map', '0014_remove_pin_pov', '2020-06-08 02:26:12.594016');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (32, 'map', '0015_pin_pov', '2020-06-08 02:26:12.603697');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (33, 'map', '0016_auto_20200520_1428', '2020-06-08 02:26:12.639310');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (34, 'map', '0017_auto_20200520_1545', '2020-06-08 02:26:12.653677');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (35, 'map', '0018_auto_20200520_1651', '2020-06-08 02:26:12.656895');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (36, 'map', '0019_auto_20200528_1459', '2020-06-08 02:26:12.678646');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (37, 'map', '0020_auto_20200601_1540', '2020-06-08 02:26:12.684458');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (38, 'map', '0021_auto_20200607_1837', '2020-06-08 02:26:12.687851');