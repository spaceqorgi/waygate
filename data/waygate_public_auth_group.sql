create table auth_group
(
    id   serial       not null
        constraint auth_group_pkey
            primary key,
    name varchar(150) not null
        constraint auth_group_name_key
            unique
);

alter table auth_group
    owner to admin;

create index auth_group_name_a6ea08ec_like
    on auth_group (name);

