create table auth_user_groups
(
    id       serial  not null
        constraint auth_user_groups_pkey
            primary key,
    user_id  integer not null
        constraint auth_user_groups_user_id_6a12ed8b_fk_auth_user_id
            references auth_user
            deferrable initially deferred,
    group_id integer not null
        constraint auth_user_groups_group_id_97559544_fk_auth_group_id
            references auth_group
            deferrable initially deferred,
    constraint auth_user_groups_user_id_group_id_94350c0c_uniq
        unique (user_id, group_id)
);

alter table auth_user_groups
    owner to admin;

create index auth_user_groups_user_id_6a12ed8b
    on auth_user_groups (user_id);

create index auth_user_groups_group_id_97559544
    on auth_user_groups (group_id);

