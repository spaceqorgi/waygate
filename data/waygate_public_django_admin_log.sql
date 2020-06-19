create table django_admin_log
(
    id              serial                   not null
        constraint django_admin_log_pkey
            primary key,
    action_time     timestamp with time zone not null,
    object_id       text,
    object_repr     varchar(200)             not null,
    action_flag     smallint                 not null
        constraint django_admin_log_action_flag_check
            check (action_flag >= 0),
    change_message  text                     not null,
    content_type_id integer
        constraint django_admin_log_content_type_id_c4bce8eb_fk_django_co
            references django_content_type
            deferrable initially deferred,
    user_id         integer                  not null
        constraint django_admin_log_user_id_c564eba6_fk_auth_user_id
            references auth_user
            deferrable initially deferred
);

alter table django_admin_log
    owner to admin;

create index django_admin_log_content_type_id_c4bce8eb
    on django_admin_log (content_type_id);

create index django_admin_log_user_id_c564eba6
    on django_admin_log (user_id);

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2020-06-09 08:44:27.750363', '59', 'Moiraine in Chapter 53: The Wheel Turns', 2, '[{"added": {"name": "point", "object": "Moiraine in Chapter 53: The Wheel Turns"}}, {"added": {"name": "point", "object": "Moiraine in Chapter 53: The Wheel Turns"}}]', 2, 1);