create table auth_group_permissions
(
    id            serial  not null
        constraint auth_group_permissions_pkey
            primary key,
    group_id      integer not null
        constraint auth_group_permissions_group_id_b120cbf9_fk_auth_group_id
            references auth_group
            deferrable initially deferred,
    permission_id integer not null
        constraint auth_group_permissio_permission_id_84c5c92e_fk_auth_perm
            references auth_permission
            deferrable initially deferred,
    constraint auth_group_permissions_group_id_permission_id_0cd325b0_uniq
        unique (group_id, permission_id)
);

alter table auth_group_permissions
    owner to admin;

create index auth_group_permissions_group_id_b120cbf9
    on auth_group_permissions (group_id);

create index auth_group_permissions_permission_id_84c5c92e
    on auth_group_permissions (permission_id);

