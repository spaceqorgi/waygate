create table auth_user
(
    id           serial                   not null
        constraint auth_user_pkey
            primary key,
    password     varchar(128)             not null,
    last_login   timestamp with time zone,
    is_superuser boolean                  not null,
    username     varchar(150)             not null
        constraint auth_user_username_key
            unique,
    first_name   varchar(30)              not null,
    last_name    varchar(150)             not null,
    email        varchar(254)             not null,
    is_staff     boolean                  not null,
    is_active    boolean                  not null,
    date_joined  timestamp with time zone not null
);

alter table auth_user
    owner to admin;

create index auth_user_username_6821ab7c_like
    on auth_user (username);

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$180000$g9rW5w3EkHjK$du9T55AJPDeHovjpX+P7tLmB37lkBjoM1iYRi8BhcSY=', '2020-06-09 07:47:34.467651', true, 'admin', '', '', 'spacecorgi@pm.me', true, true, '2020-06-09 07:47:16.525965');