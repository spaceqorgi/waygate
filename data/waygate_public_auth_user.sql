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

