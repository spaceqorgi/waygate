create table auth_user_user_permissions
(
    id            serial  not null
        constraint auth_user_user_permissions_pkey
            primary key,
    user_id       integer not null
        constraint auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id
            references auth_user
            deferrable initially deferred,
    permission_id integer not null
        constraint auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm
            references auth_permission
            deferrable initially deferred,
    constraint auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
        unique (user_id, permission_id)
);

alter table auth_user_user_permissions
    owner to admin;

create index auth_user_user_permissions_user_id_a95ead1b
    on auth_user_user_permissions (user_id);

create index auth_user_user_permissions_permission_id_1fbb5f2c
    on auth_user_user_permissions (permission_id);

