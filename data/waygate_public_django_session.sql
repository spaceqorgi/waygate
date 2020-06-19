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

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('dix4hz7znoj3a4v4uhjczjfsu9sc38sc', 'MzhkZjM5YjI4M2JiYzgzZTdmNWI3NGNkZDQ4ZjhiZGYzZDNlODFjZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxMTJmYTU1MDczYTgyOTAyYjI3NzBlNjNjMWUzZmYxNjRiNmU3Y2RmIn0=', '2020-06-23 07:47:34.470254');