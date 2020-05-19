create table django_session
(
    session_key  varchar(40)              not null
        constraint django_session_pkey
            primary key,
    session_data text                     not null,
    expire_date  timestamp with time zone not null
);

alter table django_session
    owner to admin;

create index django_session_session_key_c0390e0f_like
    on django_session (session_key);

create index django_session_expire_date_a5c62663
    on django_session (expire_date);

