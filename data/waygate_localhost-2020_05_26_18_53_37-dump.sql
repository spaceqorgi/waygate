--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO admin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO admin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO admin;

--
-- Name: map_book; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.map_book (
    book_number smallint NOT NULL,
    book_name character varying(200) NOT NULL,
    CONSTRAINT map_book_book_number_check CHECK ((book_number >= 0))
);


ALTER TABLE public.map_book OWNER TO admin;

--
-- Name: map_chapter; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.map_chapter (
    chapter_number smallint NOT NULL,
    chapter_name character varying(200) NOT NULL,
    period character varying(200) NOT NULL,
    summary text NOT NULL,
    book_id integer NOT NULL,
    CONSTRAINT map_chapter_chapter_number_check CHECK ((chapter_number >= 0))
);


ALTER TABLE public.map_chapter OWNER TO admin;

--
-- Name: TABLE map_chapter; Type: COMMENT; Schema: public; Owner: admin
--

COMMENT ON TABLE public.map_chapter IS 'Import data from csv';


--
-- Name: map_character; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.map_character (
    id integer NOT NULL,
    display_name character varying(200) NOT NULL,
    fullname character varying(200) NOT NULL,
    color character varying(7) NOT NULL,
    use_white_text boolean NOT NULL
);


ALTER TABLE public.map_character OWNER TO admin;

--
-- Name: map_character_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.map_character_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.map_character_id_seq OWNER TO admin;

--
-- Name: map_character_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.map_character_id_seq OWNED BY public.map_character.id;


--
-- Name: map_point; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.map_point (
    id integer NOT NULL,
    x double precision NOT NULL,
    type character varying(100) NOT NULL,
    narrator_id integer NOT NULL,
    y double precision NOT NULL
);


ALTER TABLE public.map_point OWNER TO admin;

--
-- Name: map_mappin_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.map_mappin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.map_mappin_id_seq OWNER TO admin;

--
-- Name: map_mappin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.map_mappin_id_seq OWNED BY public.map_point.id;


--
-- Name: map_narrator; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.map_narrator (
    id integer NOT NULL,
    chapter_id integer NOT NULL,
    character_id integer NOT NULL
);


ALTER TABLE public.map_narrator OWNER TO admin;

--
-- Name: map_pov_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.map_pov_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.map_pov_id_seq OWNER TO admin;

--
-- Name: map_pov_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.map_pov_id_seq OWNED BY public.map_narrator.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: map_character id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_character ALTER COLUMN id SET DEFAULT nextval('public.map_character_id_seq'::regclass);


--
-- Name: map_narrator id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_narrator ALTER COLUMN id SET DEFAULT nextval('public.map_pov_id_seq'::regclass);


--
-- Name: map_point id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_point ALTER COLUMN id SET DEFAULT nextval('public.map_mappin_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add book	1	add_book
2	Can change book	1	change_book
3	Can delete book	1	delete_book
4	Can view book	1	view_book
5	Can add character	2	add_character
6	Can change character	2	change_character
7	Can delete character	2	delete_character
8	Can view character	2	view_character
9	Can add chapter	3	add_chapter
10	Can change chapter	3	change_chapter
11	Can delete chapter	3	delete_chapter
12	Can view chapter	3	view_chapter
13	Can add map pin	4	add_mappin
14	Can change map pin	4	change_mappin
15	Can delete map pin	4	delete_mappin
16	Can view map pin	4	view_mappin
17	Can add point of view	5	add_pointofview
18	Can change point of view	5	change_pointofview
19	Can delete point of view	5	delete_pointofview
20	Can view point of view	5	view_pointofview
21	Can add log entry	6	add_logentry
22	Can change log entry	6	change_logentry
23	Can delete log entry	6	delete_logentry
24	Can view log entry	6	view_logentry
25	Can add permission	7	add_permission
26	Can change permission	7	change_permission
27	Can delete permission	7	delete_permission
28	Can view permission	7	view_permission
29	Can add group	8	add_group
30	Can change group	8	change_group
31	Can delete group	8	delete_group
32	Can view group	8	view_group
33	Can add user	9	add_user
34	Can change user	9	change_user
35	Can delete user	9	delete_user
36	Can view user	9	view_user
37	Can add content type	10	add_contenttype
38	Can change content type	10	change_contenttype
39	Can delete content type	10	delete_contenttype
40	Can view content type	10	view_contenttype
41	Can add session	11	add_session
42	Can change session	11	change_session
43	Can delete session	11	delete_session
44	Can view session	11	view_session
45	Can add po v	12	add_pov
46	Can change po v	12	change_pov
47	Can delete po v	12	delete_pov
48	Can view po v	12	view_pov
49	Can add pin	4	add_pin
50	Can change pin	4	change_pin
51	Can delete pin	4	delete_pin
52	Can view pin	4	view_pin
53	Can add narrator	12	add_narrator
54	Can change narrator	12	change_narrator
55	Can delete narrator	12	delete_narrator
56	Can view narrator	12	view_narrator
57	Can add point	4	add_point
58	Can change point	4	change_point
59	Can delete point	4	delete_point
60	Can view point	4	view_point
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$el72SmEwI9XN$GtxdOzwAVoby6804zs5Xyy67DgmJm6+D3GLc1DUJusg=	2020-05-20 22:22:10.156585+07	t	admin			spacecorgi@pm.me	t	t	2020-05-20 22:17:36.668618+07
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-05-20 22:18:45.635988+07	2	Lews Therin in Dragonmount	1	[{"added": {}}]	12	1
2	2020-05-20 22:18:58.012884+07	3	Rand in An Empty Road	1	[{"added": {}}]	12	1
3	2020-05-20 22:20:27.912274+07	2	Lews Therin in Dragonmount	1	[{"added": {}}]	4	1
4	2020-05-20 22:29:03.544043+07	3	Rand in An Empty Road	1	[{"added": {}}]	4	1
5	2020-05-20 23:09:51.048507+07	4	Rand in Chapter 1: An Empty Road	1	[{"added": {}}]	4	1
6	2020-05-20 23:10:00.601156+07	4	Lews Therin in Chapter 0: Dragonmount	2	[{"changed": {"fields": ["Narrator"]}}]	4	1
7	2020-05-20 23:10:37.528287+07	5	Rand in Chapter 1: An Empty Road	1	[{"added": {}}]	4	1
8	2020-05-20 23:10:51.822038+07	6	Rand in Chapter 1: An Empty Road	1	[{"added": {}}]	4	1
9	2020-05-20 23:14:15.077801+07	7	Rand in Chapter 1: An Empty Road	1	[{"added": {}}]	4	1
10	2020-05-20 23:16:29.837157+07	4	Rand in Chapter 2: Strangers	1	[{"added": {}}]	12	1
11	2020-05-20 23:17:58.699239+07	8	Rand in Chapter 2: Strangers	1	[{"added": {}}]	4	1
12	2020-05-20 23:49:35.438949+07	8	Rand in Chapter 2: Strangers	2	[]	4	1
13	2020-05-20 23:49:49.02903+07	9	Rand in Chapter 3: The Peddler	1	[{"added": {}}]	4	1
14	2020-05-20 23:50:10.858649+07	9	Rand in Chapter 3: The Peddler	2	[{"changed": {"fields": ["Y"]}}]	4	1
15	2020-05-20 23:50:21.266536+07	9	Rand in Chapter 3: The Peddler	2	[{"changed": {"fields": ["Type"]}}]	4	1
16	2020-05-20 23:51:00.282473+07	9	Rand in Chapter 3: The Peddler	2	[]	4	1
17	2020-05-20 23:51:08.26629+07	9	Rand in Chapter 3: The Peddler	2	[]	4	1
18	2020-05-20 23:51:25.074715+07	10	Rand in Chapter 4: The Gleeman	1	[{"added": {}}]	4	1
19	2020-05-20 23:52:13.052305+07	11	Rand in Chapter 5: Winternight	1	[{"added": {}}]	4	1
20	2020-05-20 23:53:38.104977+07	11	Rand in Chapter 5: Winternight	2	[]	4	1
21	2020-05-20 23:53:48.392475+07	11	Rand in Chapter 5: Winternight	2	[]	4	1
22	2020-05-20 23:54:40.326816+07	12	Rand in Chapter 5: Winternight	1	[{"added": {}}]	4	1
23	2020-05-20 23:54:55.715162+07	12	Rand in Chapter 5: Winternight	2	[{"changed": {"fields": ["Type"]}}]	4	1
24	2020-05-20 23:56:42.627712+07	12	Rand in Chapter 5: Winternight	2	[]	4	1
25	2020-05-20 23:56:49.456053+07	12	Rand in Chapter 5: Winternight	2	[]	4	1
26	2020-05-20 23:57:13.302515+07	13	Rand in Chapter 6: The Westwood	1	[{"added": {}}]	4	1
27	2020-05-20 23:59:42.477492+07	14	Rand in Chapter 6: The Westwood	1	[{"added": {}}]	4	1
28	2020-05-20 23:59:44.511831+07	14	Rand in Chapter 6: The Westwood	2	[]	4	1
29	2020-05-21 00:02:28.132355+07	15	Rand in Chapter 7: Out of the Woods	1	[{"added": {}}]	4	1
30	2020-05-21 00:02:42.131456+07	16	Rand in Chapter 7: Out of the Woods	1	[{"added": {}}]	4	1
31	2020-05-21 00:05:31.284191+07	17	Rand in Chapter 8: A Place of Safety	1	[{"added": {}}]	4	1
32	2020-05-21 00:12:48.510539+07	18	Rand in Chapter 9: Tellings of the Wheel	1	[{"added": {}}]	4	1
33	2020-05-21 00:16:12.858403+07	19	Rand in Chapter 10: Leavetaking	1	[{"added": {}}]	4	1
34	2020-05-21 00:16:33.442252+07	10	Rand in Chapter 4: The Gleeman	2	[{"changed": {"fields": ["X", "Y"]}}]	4	1
35	2020-05-21 00:16:38.491639+07	10	Rand in Chapter 4: The Gleeman	2	[{"changed": {"fields": ["Type"]}}]	4	1
36	2020-05-21 00:16:41.172357+07	10	Rand in Chapter 4: The Gleeman	2	[]	4	1
37	2020-05-21 00:17:04.961666+07	10	Rand in Chapter 4: The Gleeman	2	[{"changed": {"fields": ["X", "Y", "Type"]}}]	4	1
38	2020-05-21 00:17:08.67592+07	19	Rand in Chapter 10: Leavetaking	2	[]	4	1
39	2020-05-21 00:17:18.624996+07	20	Rand in Chapter 10: Leavetaking	1	[{"added": {}}]	4	1
40	2020-05-21 00:18:26.191076+07	20	Rand in Chapter 10: Leavetaking	2	[]	4	1
41	2020-05-21 00:19:02.8473+07	21	Rand in Chapter 11: The Road to Taren Ferry	1	[{"added": {}}]	4	1
42	2020-05-21 00:20:01.448083+07	22	Rand in Chapter 11: The Road to Taren Ferry	1	[{"added": {}}]	4	1
43	2020-05-21 00:20:55.165369+07	23	Rand in Chapter 11: The Road to Taren Ferry	1	[{"added": {}}]	4	1
44	2020-05-21 00:22:40.647284+07	24	Rand in Chapter 12: Across the Taren	1	[{"added": {}}]	4	1
45	2020-05-21 00:23:18.307491+07	25	Rand in Chapter 12: Across the Taren	1	[{"added": {}}]	4	1
46	2020-05-21 00:24:22.437837+07	26	Rand in Chapter 13: Choices	1	[{"added": {}}]	4	1
47	2020-05-21 00:25:12.270896+07	27	Rand in Chapter 13: Choices	1	[{"added": {}}]	4	1
48	2020-05-21 00:25:51.723337+07	28	Rand in Chapter 13: Choices	1	[{"added": {}}]	4	1
49	2020-05-21 00:30:12.922386+07	29	Rand in Chapter 14: The Stag and Lion	1	[{"added": {}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	map	book
2	map	character
3	map	chapter
5	map	pointofview
6	admin	logentry
7	auth	permission
8	auth	group
9	auth	user
10	contenttypes	contenttype
11	sessions	session
12	map	narrator
4	map	point
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-05-19 16:07:46.007401+07
2	auth	0001_initial	2020-05-19 16:07:46.032981+07
3	admin	0001_initial	2020-05-19 16:07:46.083691+07
4	admin	0002_logentry_remove_auto_add	2020-05-19 16:07:46.097623+07
5	admin	0003_logentry_add_action_flag_choices	2020-05-19 16:07:46.105005+07
6	contenttypes	0002_remove_content_type_name	2020-05-19 16:07:46.120135+07
7	auth	0002_alter_permission_name_max_length	2020-05-19 16:07:46.12462+07
8	auth	0003_alter_user_email_max_length	2020-05-19 16:07:46.130592+07
9	auth	0004_alter_user_username_opts	2020-05-19 16:07:46.135606+07
10	auth	0005_alter_user_last_login_null	2020-05-19 16:07:46.141281+07
11	auth	0006_require_contenttypes_0002	2020-05-19 16:07:46.142983+07
12	auth	0007_alter_validators_add_error_messages	2020-05-19 16:07:46.147435+07
13	auth	0008_alter_user_username_max_length	2020-05-19 16:07:46.155015+07
14	auth	0009_alter_user_last_name_max_length	2020-05-19 16:07:46.159951+07
15	auth	0010_alter_group_name_max_length	2020-05-19 16:07:46.164788+07
16	auth	0011_update_proxy_permissions	2020-05-19 16:07:46.16921+07
17	map	0001_initial	2020-05-19 16:07:46.180887+07
18	map	0002_point	2020-05-19 16:07:46.188444+07
19	map	0003_auto_20200511_1737	2020-05-19 16:07:46.204527+07
20	sessions	0001_initial	2020-05-19 16:07:46.219608+07
21	map	0004_auto_20200519_1104	2020-05-19 18:04:18.56292+07
22	map	0005_auto_20200519_1142	2020-05-19 18:43:00.139273+07
23	map	0006_auto_20200519_1212	2020-05-19 19:13:10.921275+07
24	map	0007_auto_20200519_1227	2020-05-19 19:27:05.690845+07
25	map	0008_auto_20200519_1231	2020-05-19 19:31:10.408645+07
26	map	0009_auto_20200519_1301	2020-05-19 20:01:39.350767+07
27	map	0010_auto_20200519_1303	2020-05-19 20:03:09.216103+07
28	map	0011_auto_20200519_1303	2020-05-19 20:03:53.084144+07
29	map	0012_auto_20200519_1307	2020-05-19 20:08:00.970389+07
30	map	0013_auto_20200520_0620	2020-05-20 13:20:08.794539+07
31	map	0014_remove_pin_pov	2020-05-20 13:56:21.934728+07
32	map	0015_pin_pov	2020-05-20 13:57:55.799374+07
33	map	0016_auto_20200520_1428	2020-05-20 21:28:33.007507+07
34	map	0017_auto_20200520_1545	2020-05-20 22:45:16.679515+07
35	map	0018_auto_20200520_1651	2020-05-20 23:51:54.408498+07
36	map	0019_auto_20200521_0830	2020-05-21 15:30:31.013282+07
37	map	0020_character_use_white_text	2020-05-25 10:17:18.514499+07
38	map	0021_auto_20200525_0425	2020-05-25 11:25:54.256926+07
39	map	0022_auto_20200525_0440	2020-05-25 11:40:09.424477+07
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
fcqbweck2p690haywpnx6lcv449buti7	MzM3ZTUwZTE4NmYxYWM2MTZlMWU1NTYyZTQ0ZjcyNTZhNWUzNjMxODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiY2M4NmEzYmNmNjU2NmUwYjJlMjVlNmNhNjgwYjIyYTI3YjY4ZWZmIn0=	2020-06-03 22:17:41.921281+07
mr7q2iiz0d7gr27dddvyvxslgyrhap6s	MzM3ZTUwZTE4NmYxYWM2MTZlMWU1NTYyZTQ0ZjcyNTZhNWUzNjMxODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiY2M4NmEzYmNmNjU2NmUwYjJlMjVlNmNhNjgwYjIyYTI3YjY4ZWZmIn0=	2020-06-03 22:22:10.157794+07
\.


--
-- Data for Name: map_book; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.map_book (book_number, book_name) FROM stdin;
0	New Spring
1	The Eye of the World
2	The Great Hunt
3	The Dragon Reborn
4	The Shadow Rising
5	The Fires of Heaven
6	Lord of Chaos
7	A Crown of Swords
8	The Path of Daggers
9	Winter's Heart
10	Crossroads of Twilight
11	Knife of Dreams
12	The Gathering Storm
13	Towers of Midnight
14	A Memory of Light
\.


--
-- Data for Name: map_chapter; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.map_chapter (chapter_number, chapter_name, period, summary, book_id) FROM stdin;
0	Dragonmount	c.a. Breaking of the World	The madman Lews Therin Telamon—called the Dragon—wanders his broken house, calling for a wife and children who lay dead on the floor. His enemy, Elan Morin Tedronai, comes to kill Lews Therin, but decides to give him a moment of lucidity before the end. Lews Therin, horrified by his deeds, flees and then kills himself by drawing too much of saidin, a tainted source of magic that only men can wield. Elan Morin observes the volcano created by Lews Therin’s death and promises that their battle will continue.	1
1	An Empty Road	Aine 8 N.E. 998	Rand al’Thor and his father Tam walk from their farm to the village of Emond’s Field, intending to celebrate Bel Tine there. Along the way, a mysterious rider in black appears, then vanishes. Rand’s friend Mat has also seen the rider.	1
2	Strangers	Aine 8 N.E. 998	The village youth are excited about strangers from far away. A raven stares at Mat and Rand, but is scared off by Moiraine, a lady in fancy clothing who gives the boys each a silver mark.	1
3	The Peddler	Aine 8 N.E. 998	The peddler Padan Fain arrives with news of a man in Ghealdan proclaiming himself the Dragon Reborn. Rand and Mat discuss rumors with their friend Perrin, who has also seen the rider. They mention him to Rand’s crush, Egwene, who thinks they are making things up.	1
4	The Gleeman	Aine 8 N.E. 998	The Gleeman Thom Merrilin recruits Egwene and the boys to help him with his act, then gives them a taste of his juggling and storytelling. Egwene’s request for stories about adventures makes Rand worry that she intends to leave Emond’s Field, or maybe the Two Rivers area entirely. Moiraine returns, spooking Thom for some reason; he retreats inside the inn. Tam decides he and Rand will return to their farm for the night.	1
5	Winternight	Aine 8 N.E. 998	Tam cooks dinner and pulls out an old sword Rand didn’t know he owned; it is marked with a heron. A knock at the door reveals a dozen monstrous Trollocs—taller than a man, with the head of an animal—which try to kill them. Rand flees into the woods; Tam fights them and is wounded. Rand sneaks back into the house for bandages and water, and somehow manages to kill a lone Trolloc with Tam’s sword.	1
6	The Westwood	Aine 8 N.E. 998	Rand drags Tam through the woods toward Emond’s Field, dodging the black-cloaked rider. Tam, feverish and rambling, reveals that he found Rand as a baby, orphaned on the side of a mountain.	1
7	Out of the Woods	Aine 9 N.E. 998	Rand reaches Emond’s Field and finds half of it in ashes; they were attacked by Trollocs as well. The village Wisdom, Nynaeve, believes Tam is beyond saving. Rand learns that Moiraine is an Aes Sedai, a wielder of a magic called the One Power, and asks her if she can Heal Tam.	1
8	A Place of Safety	Aine 9 N.E. 998	Moiraine and her Warder—an armsman named Lan—tell Rand that the black rider is something called a Myrddraal. The raven was spying for it. Moiraine does what she can for Tam, then tells Rand he must leave the Two Rivers. She believes the Dark One is looking for a boy exactly Rand’s age; either Rand himself, or Mat, or Perrin.	1
9	Tellings of the Wheel	Aine 9 N.E. 998	Rand dreams of the Dark One chasing him to a beautiful white city and trapping him there. He wakes to find Tam recovering; Tam tells him that Aes Sedai cannot lie, but often bend the truth. Tam believes Moiraine is right about Rand leaving, and gives him his sword. Outside the inn, Moiraine is confronted by villagers who believe she is a Darkfriend. Moiraine tells them the origin of their village, the place where the last king of Manetheren died defending his people from an army of Trollocs. Ashamed, the villagers leave.	1
10	Leavetaking	Aine 9 N.E. 998	Rand, Mat, Perrin, Lan, Moiraine, Egwene, and Thom set out for the Aes Sedai city of Tar Valon. They are followed by a flying creature called a Draghkar.	1
11	The Road to Taren Ferry	Aine 9 N.E. 998	Moiraine’s party rides for their lives; Rand is concerned that Egwene and her mount, Bela, will be left behind, and wills the pony to run faster. Moiraine stops to refresh the horses with the One Power, and is surprised that Bela already seems rested. The Draghkar chases the party past Watch Hill to a village called Taren Ferry, where Moiraine rousts the ferryman from his bed.	1
12	Across the Taren	Aine 9 N.E. 998	Moiraine’s party crosses the river Taren, after which the ferry sinks … mysteriously. Moiraine summons a bank of fog which covers the river in both directions, then leads them away from it. They camp in a hidden copse, where Moiraine tells Egwene she can learn to channel saidar, the female half of the One Power.	1
13	Choices	Aine 9–15 N.E. 998	As they travel north, Lan teaches Rand to use his sword, and Perrin to use the axe he got from his master, the blacksmith. Rand tries to talk Egwene out of becoming Aes Sedai, but Egwene doggedly continues her lessons.  The party arrives in Baerlon; the Children of the Light (colloquially known as Whitecloaks) have brought a small contingent to the city, hunting Darkfriends and Aes Sedai. Moiraine is unconcerned, and takes them to an inn.	1
14	The Stag and Lion	Aine 15 N.E. 998	Mat begins to tell the innkeeper about Trollocs; Lan cautions them not to tell anyone about who is chasing them. The news in Baerlon is all about the false Dragon Logain defeating an army in Ghealdan.  Rand dreams of a man whose eyes and mouth are flame; he calls himself Ba’alzamon, another name for the Dark One. Ba’alzamon tells Rand the Aes Sedai intend to use him the same way they are using Logain. He kills a rat by breaking its back.	1
15	Strangers and Friends	Aine 16 N.E. 998	Rand wakes to learn that several rats were found with their backs broken. He finds Perrin, who had the same dream, then meets a girl named Min who claims to see auras around people.  Rand sees Padan Fain in the city; the peddler runs from him, but not before Rand tells him where they’re staying. Rand runs into Mat, who plays a prank on a Whitecloak. Suddenly lightheaded, Rand draws attention to himself by laughing; the Whitecloaks are scared off by the heron mark on his sword. Rand and Mat ask Thom for advice.	1
16	The Wisdom	Aine 16 N.E. 998	Nynaeve has followed the group to Baerlon. She insists Egwene and the boys return home; Moiraine has a talk with her. Rand asks Nynaeve whether there was any truth to Tam’s feverish mumblings; Nynaeve confirms that Rand was born outside the Two Rivers.	1
17	Watchers and Hunters	Aine 16–17 N.E. 998	Rand and his friends go the the common room to listen to Thom play; a scar-faced fellow watches them dance. A Myrddraal confronts Rand in the kitchen, but Lan chases it away. Moiraine’s party, plus Nynaeve, leaves in the night. At the gate, Moiraine is forced to reveal herself as Aes Sedai to frighten off several Whitecloaks.	1
18	The Caemlyn Road	Aine 19 N.E. 998	Trollocs chase Moiraine’s party off the Caemlyn Road, then surround them. They break through, Mat shouting battle cries in the Old Tongue. Moiraine uses an angreal to delay the Trollocs and set a false trail, buying them time to reach the ruins of Shadar Logoth.	1
19	Shadow’s Waiting	Aine 19 N.E. 998	While Moiraine rests, the boys explore the ruins. They meet a man named Mordeth, who asks them to help him carry away a great treasure. Rand realizes Mordeth doesn’t have a shadow; they abandon the treasure and run. Moiraine tells the story of how Shadar Logoth died. She believes Trollocs will not enter the city, but Lan reports that someone has forced them inside.	1
20	Dust on the Wind	Aine 19 N.E. 998	Moiraine’s party is separated by Mashadar, a murderous mist drifting through Shadar Logoth. Perrin and Egwene reach the river; Perrin crosses but loses sight of Egwene. Rand, Mat, and Thom find a ship and climb aboard; a mast beam mysteriously saves Rand from a Trolloc. The captain of the Spray—an Illianer named Bayle Domon—allows them to book passage to Whitebridge.	1
21	Listen to the Wind	Aine 20 N.E. 998	Nynaeve tracks down Lan and Moiraine, and eavesdrops before they notice her. Moiraine tells Nynaeve that she can also channel, but doesn’t realize it. Moiraine tells of the sickness that comes with uncontrolled channeling; Nynaeve remembers suffering the events she describes, but continues to deny the ability.	1
22	A Path Chosen	Aine 20 N.E. 998	Perrin finds Egwene and Bela on the riverbank. They determine to cut across the wilderness and head for Caemlyn.	1
23	Wolfbrother	Aine 23 N.E. 998	Egwene admits she started a campfire with the Power. They are unable to find game along their path, but eventually stumble upon the campfire of Elyas Machera, a yellow-eyed man who claims that he—and Perrin—can talk to wolves. Elyas will escort them south.	1
24	Flight Down the Arinelle	Aine 23 N.E. 998	Rand dreams of Ba’alzamon again. Thom pretends Mat and Rand are his apprentices, and teaches them juggling and the flute, respectively. They entertain the crew and spot a metal tower with no doors or windows on the bank. Rand climbs the mast and is hit with a wave of giddiness, nearly falling before Thom snaps him out of it. Mat has taken a ruby-hilted dagger from Shadar Logoth—against Moiraine’s warning.	1
25	The Traveling People	Aine 26 N.E. 998	Elyas and his wolves lead Perrin and Egwene to a camp of the pacifist Tuatha’an, which the Emond’s Fielders know as Tinkers. Perrin learns of their Way of the Leaf from their leader, Raen; Egwene dances with Raen’s grandson, Aram.	1
26	Whitebridge	Adar 4 N.E. 998	The Spray arrives at Whitebridge, a city named for a great, Power-made bridge spanning the river Arinelle. Bayle Domon tries to convince Thom to stay aboard, but Thom believes Rand and Mat will need his help reaching Caemlyn. They learn that the false Dragon Logain can channel, but has been captured by Aes Sedai.  Thom explains that he had a nephew who died because of Aes Sedai. A Myrddraal attacks them in the streets; Thom distracts it so Rand and Mat can flee. They leave him for dead.	1
27	Shelter From the Storm	Adar 5 N.E. 998	Egwene dances with the Tuatha’an. Perrin dreams of Ba’alzamon and the wolves; Elyas decides it is time to leave the Tinkers’ camp.	1
28	Footprints in Air	Adar 5 N.E. 998	Nynaeve, Moiraine, and Lan arrive in Whitebridge and learn of the Myrddraal. Lan tries to send Nynaeve home before she gets hurt; Moiraine hints that she will take Nynaeve to the White Tower whether she wants to go or not.	1
29	Eyes Without Pity	Adar 10 N.E. 998	Elyas takes Perrin and Egwene cautiously across Caralain Grass; they barely avoid notice by a flock of ravens. Perrin can hear the wolves. The trio hides in a stedding, a place where the One Power cannot touch, and where the Shadow’s creatures fear to come.	1
30	Children of Shadow	Adar 10 N.E. 998	Riders enter the stedding—Whitecloaks sneaking their way across Andor. They spot Perrin, who goes berserk when he feels the death of the wolf called Hopper.  Perrin wakes, a prisoner; Elyas escaped, but Perrin and Egwene are interrogated by Lord Captain Bornhald. Perrin will be executed for killing two Whitecloaks.	1
31	Play for Your Supper	Adar 5–10 N.E. 998	Rand and Mat find their way east, working at farms in exchange for food or a place to sleep. At the Grinwell farm Rand pulls out his flute and plays, to much applause. They realize they can play and juggle at inns instead.	1
32	Four Kings in Shadow	Adar 15 N.E. 998	In Four Kings, all but one inn already has an entertainer. Rand and Mat reluctantly play at the last, where a greedy innkeeper eyes their belongings. A merchant has followed them from Whitebridge.  Rand and Mat are locked in a storeroom for the night. The merchant, Howal Gode, reveals himself as a Darkfriend and offers them power if they submit to the Dark One. Lightning hits the inn, blinding Mat and freeing the boys. They flee into the rain.	1
33	The Dark Waits	Adar 16–18 N.E. 998	Darkfriends chase Rand and Mat out of the next two inns. Rand falls ill, then recovers. The boys hitch a ride on a cart, then try to blend in with people going to see the false Dragon in Caemlyn.	1
34	The Last Village	Adar 18–19 N.E. 998	In Carysford, Rand and Mat see a Myrddraal looking for them. It has offered a reward for them, supposedly for stealing a heron-marked sword. The boys hitch a ride with a farmer who tells them all about Andoran royalty.	1
35	Caemlyn	Adar 20 N.E. 998	Rand and Mat arrive in Caemlyn. Rand wraps his sword in red cloth to hide the heron. The boys arrive at an inn recommended to them by Thom, who they learn was once a court bard to the city’s ruler, Queen Morgase.	1
36	Web of the Pattern	Adar 20 N.E. 998	Mat refuses to leave his room in the inn; he has been growing more and more suspicious of people since Shadar Logoth. Rand meets an Ogier named Loial in the library and mistakes him for a Trolloc. Loial mistakes Rand for an Aielman, then identifies him as ta’veren—someone who bends the Pattern into a new shape.	1
37	The Long Chase	Adar 20 N.E. 998	Nynaeve sneaks into the Whitecloak camp and cuts their picket lines. She grabs Bela and another horse while Lan searches the tents.	1
38	Rescue	Adar 20 N.E. 998	Child Byar, who believes Perrin and Egwene are slowing them down, suggests that they might be “accidentally” allowed to escape. A wolf tells Perrin help is coming. Lan incapacitates Byar and the guards; Perrin and Egwene don white cloaks and escape in the confusion as Moiraine weaves lightning among the tents. Perrin’s eyes have turned yellow.	1
39	Weaving of the Web	Adar 23 N.E. 998	Rand attempts to get a look at the false Dragon, but a filthy beggar chases him away from the main road. Rand climbs the wall for a better look at Logain, then falls over the other side.	1
40	The Web Tightens	Adar 23 N.E. 998	Rand comes to in the palace gardens, tended by the Daughter-Heir of Andor—Elayne Trakand—and her brother Gawyn. They are discovered by Elayne’s half brother Galad and taken to Queen Morgase.  Rand is interrogated by Morgase, her Aes Sedai advisor Elaida, and Captain-General Gareth Bryne. Elaida Foretells pain and division for the whole world, with Rand at the center. She tries to convince Morgase to take him prisoner, but the queen believes Rand’s story and sets him free.	1
41	Old Friends and New Threats	Adar 23 N.E. 998	Rand recounts his adventure to Loial and the innkeeper, Master Gill. Moiraine and the others arrive at last, but Mat—under the influence of the Shadar Logoth dagger—tries to kill Moiraine.	1
42	Remembrance of Dreams	Adar 23 N.E. 998	While Moiraine attempts to Heal Mat using her angreal, the others catch up. Rand introduces his friends to Loial.  Mat comes down, not fully healed but with the dagger’s power contained. Loial asks Moiraine about a story he heard from an Aielman about something called the Eye of the World. Perrin and Egwene heard the same tale from the Tinkers. Rand, Mat, and Perrin admit to hearing the phrase in their dreams. Moiraine asks whether Loial can take them to Fal Dara using the Ways.	1
43	Decisions and Apparitions	Adar 23 N.E. 998	Loial explains that the Ways are no longer safe, but Moiraine believes the world is in danger, and will use them anyway. Rand wakes from yet another dream of Ba’alzamon, this time bleeding from a wound he received during the dream.	1
44	The Dark Along the Ways	Adar 24 N.E. 998	Loial leads Moiraine’s party to the Waygate, which is hidden in a cellar. They step through into darkness, and travel along winding ramps and crumbling bridges.	1
45	What Follows in Shadow	Adar 24–25 N.E. 998	A broken bridge forces Moiraine’s party to backtrack. They camp; Lan believes someone is following them. Moiraine finds proof that Trollocs have been using the Ways.  Almost to their destination, Rand hears the sound of wind—a ghostly wind called Machin Shin, which eats people’s souls. The Waygate is locked; Moiraine cuts through it, and they escape.	1
46	Fal Dara	Adar 25 N.E. 998	Moiraine’s party exits the Ways near Fal Dara, hundreds of miles from where they started. Lan is welcomed like royalty. The pursuer from the Ways turns out to be the peddler Padan Fain, who somehow survived Machin Shin, but appears to have been driven mad.	1
47	More Tales of the Wheel	Adar 25 N.E. 998	The Emond’s Fielders learn that Lan is the uncrowned king of Malkier, a nation swallowed by the Great Blight. Moiraine interrogates Padan Fain, who admits to being worse than a Darkfriend. Fain believes the Dark One is free, or almost free, from his prison at Shayol Ghul in the Blight.	1
48	The Blight	Adar 26 N.E. 998	While Fal Daran soldiers head north to Tarwin’s Gap, Moiraine’s party slips into the Blight by another way. The plant life there is sickly and dangerous; the animals are worse. Nynaeve bares her heart to Lan, who clearly loves her back but will not admit it.	1
49	The Dark One Stirs	Adar 27 N.E. 998	The terrors of the Blight close in, despite Moiraine’s channeling. Though they are still miles from where Moiraine last found the Eye of the World, it comes to them, changing the land around it. Its guardian, the Green Man, welcomes the party.	1
50	Meetings at the Eye	Adar 27 N.E. 998	Moiraine leads the party inside a hill, to a pool of untainted saidin. Two strange men follow them down, introducing themselves as Aginor and Balthamel—two of the Forsaken, who were once bound at Shayol Ghul with the Dark One.  Even Moiraine is no match for two Forsaken. She urges the others not to fight, but they ignore her. The Green Man kills Balthamel, but is mortally wounded. Moiraine buys time for the others to flee.	1
51	Against the Shadow	Adar 27 N.E. 998	Rand runs, pursued by Aginor. They fight over the flow of saidin from the Eye of the World; Aginor cannot hold it all, and bursts into flame. Rand sees in vision the battle at Tarwin’s Gap, then finds Ba’alzamon and strikes at him with a sword made of light. Ba’alzamon is apparently defeated.	1
52	There Is Neither Beginning Nor End	Adar 27 N.E. 998	Rand finds the rest of his friends injured but alive. He realizes what he has done, and tells Moiraine that he won’t be used as a false Dragon.  Where the Eye of the World once lay, they find the Dragon’s banner, the fabled Horn of Valere, and one of the seven seals for the Dark One’s prison—broken.	1
53	The Wheel Turns	Adar 28–Saven 8 N.E. 998	The Blight is silent during their return journey, and spring—coming two months late—is making up for lost time. Rand decides to leave his friends behind before he goes mad from the taint on saidin. Moiraine believes that the true Dragon has been reborn.	1
\.


--
-- Data for Name: map_character; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.map_character (id, display_name, fullname, color, use_white_text) FROM stdin;
2	Lan	Al'Lan Mandragoran	#FFFFFF	t
79	Lews Therin	Lews Therin Telamon	#E65100	t
41	Egwene	Egwene al'Vere	#69F0AE	t
1	Abaldar	Abaldar Yulan	#FFFFFF	t
3	Adelorna	Adelorna Bastine	#FFFFFF	t
4	Alliandre	Alliandre Maritha Kigarin	#FFFFFF	t
5	Almen	Almen Bunt	#FFFFFF	t
6	Almurat	Almurat Mor	#FFFFFF	t
7	Alteima	Alteima	#FFFFFF	t
8	Alviarin	Alviarin Freidhen	#FFFFFF	t
9	Androl	Androl Genhald	#FFFFFF	t
10	Aran	Aran'gar	#FFFFFF	t
11	Arymilla	Arymilla Marne	#FFFFFF	t
12	Asmodean	Asmodean	#FFFFFF	t
13	Asne	Asne Zeramene	#FFFFFF	t
14	Assid	Assid Bakuun	#FFFFFF	t
15	Atal	Atal Mishraile	#FFFFFF	t
16	Aviendha	Aviendha	#FFFFFF	t
17	Bain	Bain	#FFFFFF	t
18	Barmellin	Barmellin	#FFFFFF	t
19	Barriga	Barriga	#FFFFFF	t
20	Bayle	Bayle Domon	#FFFFFF	t
21	Bayrd	Bayrd	#FFFFFF	t
22	Beonin	Beonin Marinye	#FFFFFF	t
23	Berelain	Berelain sur Paendrag	#FFFFFF	t
24	Bertome	Bertome Saighan	#FFFFFF	t
25	Bethamin	Bethamin	#FFFFFF	t
26	Birgitte	Birgitte Silverbow	#FFFFFF	t
27	Cadsuane	Cadsuane Melaidhrin	#FFFFFF	t
28	Chulein	Chulein	#FFFFFF	t
29	Cyndane	Cyndane	#FFFFFF	t
30	Dain	Dain Bornhald	#FFFFFF	t
31	The	The Dark One	#FFFFFF	t
32	Daved	Daved Hanlon	#FFFFFF	t
33	Davram	Davram t'Ghaline Bashere	#FFFFFF	t
34	Delana	Delana Mosalaine	#FFFFFF	t
35	Demandred	Demandred	#FFFFFF	t
36	Demira	Demira Eriff	#FFFFFF	t
37	Dyelin	Dyelin Taravin	#FFFFFF	t
38	Eamon	Eamon Valda	#FFFFFF	t
39	Eben	Eben Hopwil	#FFFFFF	t
40	Egeanin	Egeanin Tamarath	#FFFFFF	t
42	Elaida	Elaida do Avriny a'Roihan	#FFFFFF	t
43	Elayne	Elayne Trakand	#FFFFFF	t
44	Elenia	Elenia Sarand	#FFFFFF	t
45	Ellorien	Ellorien Traemane	#FFFFFF	t
46	Elmindreda	Elmindreda Farshaw	#FFFFFF	t
47	Elza	Elza Penfell	#FFFFFF	t
48	Ethenielle	Ethenielle Cosaru Noramaga	#FFFFFF	t
49	Faile	Faile ni Bashere t'Aybara	#FFFFFF	t
50	Falendre	Falendre	#FFFFFF	t
51	Falion	Falion Bhoda	#FFFFFF	t
52	Furyk	Furyk Karede	#FFFFFF	t
53	Gabrelle	Gabrelle	#FFFFFF	t
54	Galadedrid	Galadedrid Damodred	#FFFFFF	t
55	Galina	Galina Casban	#FFFFFF	t
56	Gareth	Gareth Bryne	#FFFFFF	t
57	Gaul	Gaul	#FFFFFF	t
58	Gawyn	Gawyn Trakand	#FFFFFF	t
59	Geofram	Geofram Bornhald	#FFFFFF	t
60	Gerard	Gerard Arganda	#FFFFFF	t
61	Gholam	Gholam	#FFFFFF	t
62	Graendal	Graendal	#FFFFFF	t
63	Hadnan	Hadnan Kadere	#FFFFFF	t
64	Harine	Harine din Togara	#FFFFFF	t
65	Herid	Herid Fel	#FFFFFF	t
66	Hurin	Hurin	#FFFFFF	t
67	Ila	Ila	#FFFFFF	t
68	Isam	Isam/Luc Mantear/Slayer	#FFFFFF	t
69	Jaichim	Jaichim Carridin	#FFFFFF	t
70	Jaret	Jaret Byar	#FFFFFF	t
71	Jesse	Jesse Bilal	#FFFFFF	t
72	Joline	Joline Maza	#FFFFFF	t
73	Juilin	Juilin Sandar	#FFFFFF	t
74	Jur	Jur Grady	#FFFFFF	t
75	Katerine	Katerine Alruddin	#FFFFFF	t
76	Kennar	Kennar Miraj	#FFFFFF	t
77	Leane	Leane Sharif	#FFFFFF	t
78	Lelaine	Lelaine Akashi	#FFFFFF	t
80	Liandrin	Liandrin	#FFFFFF	t
81	Logain	Logain Ablar	#FFFFFF	t
82	Loial	Loial	#FFFFFF	t
83	Luan	Luan Norwelyn	#FFFFFF	t
84	Lyrelle	Lyrelle	#FFFFFF	t
85	Maeric	Maeric	#FFFFFF	t
86	Malenarin	Malenarin Rai	#FFFFFF	t
87	Masema	Masema Dagar	#FFFFFF	t
89	Mazrim	Mazrim Taim	#FFFFFF	t
90	Merana	Merana Ambrey	#FFFFFF	t
91	Mesaana	Mesaana	#FFFFFF	t
92	Mili	Mili Skane	#FFFFFF	t
93	Moghedien	Moghedien	#FFFFFF	t
95	Morgase	Morgase Trakand	#FFFFFF	t
96	Moridin	Moridin	#FFFFFF	t
97	Myrelle	Myrelle Berengari	#FFFFFF	t
98	Narrator	Narrator	#FFFFFF	t
99	Nesune	Nesune Bihara	#FFFFFF	t
100	Noal	Noal Charin	#FFFFFF	t
102	Olver	Olver	#FFFFFF	t
103	Osan	Osan'gar	#FFFFFF	t
104	Padan	Padan Fain/Ordeith/Shaisam	#FFFFFF	t
105	Pedron	Pedron Niall	#FFFFFF	t
107	Pevara	Pevara Tazanovni	#FFFFFF	t
108	Raefar	Raefar Kisman	#FFFFFF	t
109	Rahvin	Rahvin	#FFFFFF	t
111	Reanne	Reanne Corly	#FFFFFF	t
112	Renald	Renald Fanwar	#FFFFFF	t
113	Rhadam	Rhadam Asunawa	#FFFFFF	t
114	Rhuarc	Rhuarc	#FFFFFF	t
115	Rodel	Rodel Ituralde	#FFFFFF	t
116	Romanda	Romanda Cassin	#FFFFFF	t
117	Saerin	Saerin Asnobar	#FFFFFF	t
118	Sahra	Sahra Covenry	#FFFFFF	t
119	Samitsu	Samitsu Tamagowa	#FFFFFF	t
120	Sammael	Sammael	#FFFFFF	t
121	Sarene	Sarene Nemdahl	#FFFFFF	t
122	Seaine	Seaine Herimon	#FFFFFF	t
123	Semirhage	Semirhage	#FFFFFF	t
124	Sevanna	Sevanna	#FFFFFF	t
125	Shaidar	Shaidar Haran	#FFFFFF	t
126	Shalon	Shalon din Togara Morning Tide	#FFFFFF	t
127	Shendla	Shendla	#FFFFFF	t
128	Sheriam	Sheriam Bayanar	#FFFFFF	t
129	Silviana	Silviana Brehon	#FFFFFF	t
130	Siuan	Siuan Sanche	#FFFFFF	t
131	Slayer	Slayer	#FFFFFF	t
132	Sorilea	Sorilea	#FFFFFF	t
133	Sulin	Sulin	#FFFFFF	t
134	Suroth	Suroth Sabelle Meldarath	#FFFFFF	t
135	Talmanes	Talmanes Delovinde	#FFFFFF	t
136	Tam	Tam al'Thor	#FFFFFF	t
137	Tarna	Tarna Feir	#FFFFFF	t
138	Thomdril	Thomdril Merrilin	#FFFFFF	t
139	Timna	Timna	#FFFFFF	t
140	Toveine	Toveine Gazal	#FFFFFF	t
141	Tuon	Tuon Athaem Kore Paendrag/Fortuona	#FFFFFF	t
142	Tylee	Tylee Khirgan	#FFFFFF	t
143	Uno	Uno Nomesta	#FFFFFF	t
144	Varek	Varek	#FFFFFF	t
145	Verin	Verin Mathwin	#FFFFFF	t
146	Vilnar	Vilnar Barada	#FFFFFF	t
147	Weilin	Weilin Aldragoran	#FFFFFF	t
148	Yukiri	Yukiri	#FFFFFF	t
110	Rand	Rand al'Thor	#D50000	t
88	Mat	Matrim Cauthon	#212121	t
94	Moiraine	Moiraine Damodred	#0D47A1	t
106	Perrin	Perrin t'Bashere Aybara	#FFD600	t
101	Nynaeve	Nynaeve ti al'Meara Mandragoran	#FFFF00	t
\.


--
-- Data for Name: map_narrator; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.map_narrator (id, chapter_id, character_id) FROM stdin;
2	0	79
3	1	110
4	2	110
6	3	110
7	4	110
8	5	110
9	6	110
10	7	110
11	8	110
12	9	110
13	10	110
14	11	110
15	12	110
16	13	110
17	14	110
18	15	110
19	16	110
20	17	110
21	18	110
22	19	110
23	19	106
24	19	110
25	20	101
26	21	106
27	22	106
28	23	110
29	24	106
30	25	110
31	26	106
32	27	101
33	28	106
34	29	106
35	30	110
36	31	110
37	32	110
38	33	110
39	34	110
40	35	110
41	36	101
42	37	106
43	38	110
44	39	110
45	40	110
46	41	110
47	42	110
48	43	110
49	44	110
50	45	110
51	46	110
52	47	110
53	48	110
54	49	110
55	50	110
56	51	110
57	52	110
58	52	94
\.


--
-- Data for Name: map_point; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.map_point (id, x, type, narrator_id, y) FROM stdin;
4	2536	ev	2	924
5	1504	ld	3	1290
6	1530	ld	3	1292
7	1530	ld	3	1292
8	1530	ev	4	1292
9	1530	ev	6	1292
11	1530	ld	8	1292
12	1494	bt	8	1280
13	1494	ld	9	1280
14	1511	ev	9	1283
15	1511	ld	10	1283
16	1530	ev	10	1292
17	1530	ev	11	1920
18	1530	ev	12	1292
10	1530	ev	7	1292
19	1530	ld	13	1292
20	1543	ld	13	1275
21	1543	ld	14	1275
22	1548	ld	14	1273
23	1558	ld	14	1251
24	1558	se	15	1251
25	1560	se	15	1240
26	1560	ld	16	1240
27	1564	ld	16	1219
28	1569	ld	16	1186
29	1569	ev	17	1186
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 49, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 39, true);


--
-- Name: map_character_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.map_character_id_seq', 148, true);


--
-- Name: map_mappin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.map_mappin_id_seq', 29, true);


--
-- Name: map_pov_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.map_pov_id_seq', 58, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: map_book map_book_book_number_a8368448_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_book
    ADD CONSTRAINT map_book_book_number_a8368448_pk PRIMARY KEY (book_number);


--
-- Name: map_book map_book_book_number_a8368448_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_book
    ADD CONSTRAINT map_book_book_number_a8368448_uniq UNIQUE (book_number);


--
-- Name: map_chapter map_chapter_chapter_number_1f7b87bd_pk; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_chapter
    ADD CONSTRAINT map_chapter_chapter_number_1f7b87bd_pk PRIMARY KEY (chapter_number);


--
-- Name: map_chapter map_chapter_chapter_number_1f7b87bd_uniq; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_chapter
    ADD CONSTRAINT map_chapter_chapter_number_1f7b87bd_uniq UNIQUE (chapter_number);


--
-- Name: map_character map_character_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_character
    ADD CONSTRAINT map_character_pkey PRIMARY KEY (id);


--
-- Name: map_point map_mappin_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_point
    ADD CONSTRAINT map_mappin_pkey PRIMARY KEY (id);


--
-- Name: map_narrator map_pov_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_narrator
    ADD CONSTRAINT map_pov_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: map_chapter_book_id_b20180e9; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX map_chapter_book_id_b20180e9 ON public.map_chapter USING btree (book_id);


--
-- Name: map_pin_pov_id_e9f1cb9c; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX map_pin_pov_id_e9f1cb9c ON public.map_point USING btree (narrator_id);


--
-- Name: map_pov_chapter_id_1be1947d; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX map_pov_chapter_id_1be1947d ON public.map_narrator USING btree (chapter_id);


--
-- Name: map_pov_character_id_3e0eb077; Type: INDEX; Schema: public; Owner: admin
--

CREATE INDEX map_pov_character_id_3e0eb077 ON public.map_narrator USING btree (character_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: map_narrator map_narrator_character_id_5fd902f8_fk_map_character_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_narrator
    ADD CONSTRAINT map_narrator_character_id_5fd902f8_fk_map_character_id FOREIGN KEY (character_id) REFERENCES public.map_character(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: map_point map_point_narrator_id_be84f647_fk_map_narrator_id; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.map_point
    ADD CONSTRAINT map_point_narrator_id_be84f647_fk_map_narrator_id FOREIGN KEY (narrator_id) REFERENCES public.map_narrator(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

