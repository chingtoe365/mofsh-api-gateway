--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: mofsh_ai_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_ai_services (
    id integer NOT NULL,
    ai_service_name character varying NOT NULL,
    ai_service_description character varying,
    endpoint character varying(255) NOT NULL,
    request_method character varying(255) NOT NULL,
    port integer NOT NULL
);


ALTER TABLE public.mofsh_ai_services OWNER TO postgres;

--
-- Name: mofsh_ai_services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_ai_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_ai_services_id_seq OWNER TO postgres;

--
-- Name: mofsh_ai_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_ai_services_id_seq OWNED BY public.mofsh_ai_services.id;


--
-- Name: mofsh_argument_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_argument_types (
    id integer NOT NULL,
    argument_type character varying
);


ALTER TABLE public.mofsh_argument_types OWNER TO postgres;

--
-- Name: mofsh_argument_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_argument_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_argument_types_id_seq OWNER TO postgres;

--
-- Name: mofsh_argument_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_argument_types_id_seq OWNED BY public.mofsh_argument_types.id;


--
-- Name: mofsh_arguments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_arguments (
    id integer NOT NULL,
    argument_name character varying
);


ALTER TABLE public.mofsh_arguments OWNER TO postgres;

--
-- Name: mofsh_arguments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_arguments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_arguments_id_seq OWNER TO postgres;

--
-- Name: mofsh_arguments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_arguments_id_seq OWNED BY public.mofsh_arguments.id;


--
-- Name: mofsh_cloud_content_manager_services; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_cloud_content_manager_services (
    id integer NOT NULL,
    content_manager_service_name character varying
);


ALTER TABLE public.mofsh_cloud_content_manager_services OWNER TO postgres;

--
-- Name: mofsh_cloud_content_manager_services_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_cloud_content_manager_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_cloud_content_manager_services_id_seq OWNER TO postgres;

--
-- Name: mofsh_cloud_content_manager_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_cloud_content_manager_services_id_seq OWNED BY public.mofsh_cloud_content_manager_services.id;


--
-- Name: mofsh_cloud_manager_meta_keys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_cloud_manager_meta_keys (
    id integer NOT NULL,
    key_name character varying
);


ALTER TABLE public.mofsh_cloud_manager_meta_keys OWNER TO postgres;

--
-- Name: mofsh_cloud_manager_meta_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_cloud_manager_meta_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_cloud_manager_meta_keys_id_seq OWNER TO postgres;

--
-- Name: mofsh_cloud_manager_meta_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_cloud_manager_meta_keys_id_seq OWNED BY public.mofsh_cloud_manager_meta_keys.id;


--
-- Name: mofsh_data_cubes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_data_cubes (
    id integer NOT NULL,
    cube_name character varying,
    cube_description character varying
);


ALTER TABLE public.mofsh_data_cubes OWNER TO postgres;

--
-- Name: mofsh_data_cubes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_data_cubes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_data_cubes_id_seq OWNER TO postgres;

--
-- Name: mofsh_data_cubes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_data_cubes_id_seq OWNED BY public.mofsh_data_cubes.id;


--
-- Name: mofsh_data_user_relation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_data_user_relation (
    id integer NOT NULL,
    relation character varying
);


ALTER TABLE public.mofsh_data_user_relation OWNER TO postgres;

--
-- Name: mofsh_data_user_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_data_user_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_data_user_relation_id_seq OWNER TO postgres;

--
-- Name: mofsh_data_user_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_data_user_relation_id_seq OWNED BY public.mofsh_data_user_relation.id;


--
-- Name: mofsh_fact_ai_services_arguments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_fact_ai_services_arguments (
    id integer NOT NULL,
    id_ai_service integer,
    id_argument integer,
    id_argument_type integer
);


ALTER TABLE public.mofsh_fact_ai_services_arguments OWNER TO postgres;

--
-- Name: mofsh_fact_ai_services_arguments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_fact_ai_services_arguments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_fact_ai_services_arguments_id_seq OWNER TO postgres;

--
-- Name: mofsh_fact_ai_services_arguments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_fact_ai_services_arguments_id_seq OWNED BY public.mofsh_fact_ai_services_arguments.id;


--
-- Name: mofsh_fact_data_cube_meta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_fact_data_cube_meta (
    id integer NOT NULL,
    id_data_cube integer,
    id_cm_key integer,
    id_cm_service integer,
    cm_key_value character varying
);


ALTER TABLE public.mofsh_fact_data_cube_meta OWNER TO postgres;

--
-- Name: mofsh_fact_data_cube_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_fact_data_cube_meta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_fact_data_cube_meta_id_seq OWNER TO postgres;

--
-- Name: mofsh_fact_data_cube_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_fact_data_cube_meta_id_seq OWNED BY public.mofsh_fact_data_cube_meta.id;


--
-- Name: mofsh_fact_data_cube_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_fact_data_cube_user (
    id integer NOT NULL,
    id_data_cube integer,
    id_data_user_relation integer,
    uuid_user uuid
);


ALTER TABLE public.mofsh_fact_data_cube_user OWNER TO postgres;

--
-- Name: mofsh_fact_data_cube_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_fact_data_cube_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_fact_data_cube_user_id_seq OWNER TO postgres;

--
-- Name: mofsh_fact_data_cube_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_fact_data_cube_user_id_seq OWNED BY public.mofsh_fact_data_cube_user.id;


--
-- Name: mofsh_fact_services_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_fact_services_users (
    id integer NOT NULL,
    id_service integer,
    id_service_user_relation integer,
    uuid_user uuid
);


ALTER TABLE public.mofsh_fact_services_users OWNER TO postgres;

--
-- Name: mofsh_fact_services_users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_fact_services_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_fact_services_users_id_seq OWNER TO postgres;

--
-- Name: mofsh_fact_services_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_fact_services_users_id_seq OWNED BY public.mofsh_fact_services_users.id;


--
-- Name: mofsh_services_users_relation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_services_users_relation (
    id integer NOT NULL,
    relation character varying
);


ALTER TABLE public.mofsh_services_users_relation OWNER TO postgres;

--
-- Name: mofsh_services_users_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.mofsh_services_users_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mofsh_services_users_relation_id_seq OWNER TO postgres;

--
-- Name: mofsh_services_users_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.mofsh_services_users_relation_id_seq OWNED BY public.mofsh_services_users_relation.id;


--
-- Name: mofsh_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mofsh_users (
    username character varying(255),
    email character varying,
    organization character varying,
    uuid uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    password character varying(255)
);


ALTER TABLE public.mofsh_users OWNER TO postgres;

--
-- Name: mofsh_ai_services id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_ai_services ALTER COLUMN id SET DEFAULT nextval('public.mofsh_ai_services_id_seq'::regclass);


--
-- Name: mofsh_argument_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_argument_types ALTER COLUMN id SET DEFAULT nextval('public.mofsh_argument_types_id_seq'::regclass);


--
-- Name: mofsh_arguments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_arguments ALTER COLUMN id SET DEFAULT nextval('public.mofsh_arguments_id_seq'::regclass);


--
-- Name: mofsh_cloud_content_manager_services id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_cloud_content_manager_services ALTER COLUMN id SET DEFAULT nextval('public.mofsh_cloud_content_manager_services_id_seq'::regclass);


--
-- Name: mofsh_cloud_manager_meta_keys id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys ALTER COLUMN id SET DEFAULT nextval('public.mofsh_cloud_manager_meta_keys_id_seq'::regclass);


--
-- Name: mofsh_data_cubes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_data_cubes ALTER COLUMN id SET DEFAULT nextval('public.mofsh_data_cubes_id_seq'::regclass);


--
-- Name: mofsh_data_user_relation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_data_user_relation ALTER COLUMN id SET DEFAULT nextval('public.mofsh_data_user_relation_id_seq'::regclass);


--
-- Name: mofsh_fact_ai_services_arguments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_ai_services_arguments_id_seq'::regclass);


--
-- Name: mofsh_fact_data_cube_meta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_data_cube_meta_id_seq'::regclass);


--
-- Name: mofsh_fact_data_cube_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_data_cube_user_id_seq'::regclass);


--
-- Name: mofsh_fact_services_users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_services_users ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_services_users_id_seq'::regclass);


--
-- Name: mofsh_services_users_relation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_services_users_relation ALTER COLUMN id SET DEFAULT nextval('public.mofsh_services_users_relation_id_seq'::regclass);


--
-- Data for Name: mofsh_ai_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_ai_services (id, ai_service_name, ai_service_description, endpoint, request_method, port) FROM stdin;
13	cleverclog	AI telling dog brand	https://service.cleverclogs.com/tellDogBrand/	GET	5000
15	Contrain-clause-topic-claissifer	Legal clause topic classifier	https://localhost:5000/api/v1/taxonomiser	POST	5000
18	cleverclog-catteller	AI telling cat brand	https://service.cleverclogs.com/tellCatBrand/	GET	5000
\.


--
-- Data for Name: mofsh_argument_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_argument_types (id, argument_type) FROM stdin;
1	text
2	number
3	bit
4	blob
5	csv
\.


--
-- Data for Name: mofsh_arguments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_arguments (id, argument_name) FROM stdin;
1	clause
4	dog
11	cat
20	sound
\.


--
-- Data for Name: mofsh_cloud_content_manager_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_cloud_content_manager_services (id, content_manager_service_name) FROM stdin;
1	box.com
2	Amazon S3
6	PostgreSQL
7	Neo4j
8	MongoDB
9	Twitter Stream
10	Youtube Live Streaming
\.


--
-- Data for Name: mofsh_cloud_manager_meta_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_cloud_manager_meta_keys (id, key_name) FROM stdin;
1	client_id
2	client_secret
3	folder_id
4	file_id
9	account_type
10	endpoint
11	consumer_key
12	consumer_secret
21	username
22	password
33	api_key
45	database
\.


--
-- Data for Name: mofsh_data_cubes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_data_cubes (id, cube_name, cube_description) FROM stdin;
1	moorcrofts contract examples	Moorcrofts contract examples
\.


--
-- Data for Name: mofsh_data_user_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_data_user_relation (id, relation) FROM stdin;
1	subscribe
2	own
\.


--
-- Data for Name: mofsh_fact_ai_services_arguments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_fact_ai_services_arguments (id, id_ai_service, id_argument, id_argument_type) FROM stdin;
14	13	4	1
16	15	1	1
19	18	11	1
21	18	20	4
\.


--
-- Data for Name: mofsh_fact_data_cube_meta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_fact_data_cube_meta (id, id_data_cube, id_cm_key, id_cm_service, cm_key_value) FROM stdin;
1	1	2	1	eypNtDShRbYPq2XDEztq5WlfWMA9gjX0
2	1	1	1	n8vws2kz5oiq781xrll3iuw6qgesbxtn
3	1	3	1	130942436938
\.


--
-- Data for Name: mofsh_fact_data_cube_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_fact_data_cube_user (id, id_data_cube, id_data_user_relation, uuid_user) FROM stdin;
\.


--
-- Data for Name: mofsh_fact_services_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_fact_services_users (id, id_service, id_service_user_relation, uuid_user) FROM stdin;
\.


--
-- Data for Name: mofsh_services_users_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_services_users_relation (id, relation) FROM stdin;
1	provide
2	subscribe
\.


--
-- Data for Name: mofsh_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mofsh_users (username, email, organization, uuid, password) FROM stdin;
boston_legal	admin@bostonlegal.com	Boston Legal	88adf8a0-17ca-401f-a0ad-1875db6e3f77	\N
contrai_technology	admin@contraitechnologies.com	Contrai Technology	c105fda2-32e1-4046-bb25-cd71cb74e649	\N
jintao	jintaolong@brookes.ac.uk	Ethical AI Institute, Oxford Brookes University	517fcba2-e0e5-454f-af3b-22aac9e2699d	\N
jlinja	jlong@brookes.ac.uk	OBU	8cd29479-a84c-47a4-8226-cf07f8bfed32	{bcrypt}$2a$10$cKSl3nZ7x90UpEQn9uHA6upqTURYROxBw1jNtsPW8knIg3nypHF2m
whatever	braon@random.com	OOBU	70740c96-20ff-4cf8-81fa-c16db66fe496	{bcrypt}$2a$10$g01deJtykBaMVosVG.LB8.lNlu5d2wOA45LADV5yQSTMr69es.BeW
\.


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 21, true);


--
-- Name: mofsh_ai_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_ai_services_id_seq', 4, true);


--
-- Name: mofsh_argument_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_argument_types_id_seq', 5, true);


--
-- Name: mofsh_arguments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_arguments_id_seq', 1, true);


--
-- Name: mofsh_cloud_content_manager_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_cloud_content_manager_services_id_seq', 10, true);


--
-- Name: mofsh_cloud_manager_meta_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_cloud_manager_meta_keys_id_seq', 45, true);


--
-- Name: mofsh_data_cubes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_data_cubes_id_seq', 1, true);


--
-- Name: mofsh_data_user_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_data_user_relation_id_seq', 2, true);


--
-- Name: mofsh_fact_ai_services_arguments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_fact_ai_services_arguments_id_seq', 1, true);


--
-- Name: mofsh_fact_data_cube_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_fact_data_cube_meta_id_seq', 3, true);


--
-- Name: mofsh_fact_data_cube_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_fact_data_cube_user_id_seq', 2, true);


--
-- Name: mofsh_fact_services_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_fact_services_users_id_seq', 7, true);


--
-- Name: mofsh_services_users_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mofsh_services_users_relation_id_seq', 2, true);


--
-- Name: mofsh_ai_services mofsh_ai_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_ai_services
    ADD CONSTRAINT mofsh_ai_services_pkey PRIMARY KEY (id);


--
-- Name: mofsh_argument_types mofsh_argument_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_argument_types
    ADD CONSTRAINT mofsh_argument_types_pkey PRIMARY KEY (id);


--
-- Name: mofsh_arguments mofsh_arguments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_arguments
    ADD CONSTRAINT mofsh_arguments_pkey PRIMARY KEY (id);


--
-- Name: mofsh_cloud_content_manager_services mofsh_cloud_content_manager_services_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_cloud_content_manager_services
    ADD CONSTRAINT mofsh_cloud_content_manager_services_pkey PRIMARY KEY (id);


--
-- Name: mofsh_cloud_manager_meta_keys mofsh_cloud_manager_meta_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys
    ADD CONSTRAINT mofsh_cloud_manager_meta_keys_pkey PRIMARY KEY (id);


--
-- Name: mofsh_data_cubes mofsh_data_cubes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_data_cubes
    ADD CONSTRAINT mofsh_data_cubes_pkey PRIMARY KEY (id);


--
-- Name: mofsh_data_user_relation mofsh_data_user_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_data_user_relation
    ADD CONSTRAINT mofsh_data_user_relation_pkey PRIMARY KEY (id);


--
-- Name: mofsh_fact_ai_services_arguments mofsh_fact_ai_services_arguments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments
    ADD CONSTRAINT mofsh_fact_ai_services_arguments_pkey PRIMARY KEY (id);


--
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_pkey PRIMARY KEY (id);


--
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_pkey PRIMARY KEY (id);


--
-- Name: mofsh_fact_services_users mofsh_fact_services_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_services_users
    ADD CONSTRAINT mofsh_fact_services_users_pkey PRIMARY KEY (id);


--
-- Name: mofsh_services_users_relation mofsh_services_users_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_services_users_relation
    ADD CONSTRAINT mofsh_services_users_relation_pkey PRIMARY KEY (id);


--
-- Name: mofsh_users mofsh_users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT mofsh_users_pkey PRIMARY KEY (uuid);


--
-- Name: mofsh_users uklt7gdkbr7m53irohmvkvi3kws; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT uklt7gdkbr7m53irohmvkvi3kws UNIQUE (username);


--
-- Name: mofsh_users ukqcfwpgramxfl3qmkdaq3etl0f; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT ukqcfwpgramxfl3qmkdaq3etl0f UNIQUE (email);


--
-- Name: mofsh_ai_services unique_ai_service_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_ai_services
    ADD CONSTRAINT unique_ai_service_name UNIQUE (ai_service_name);


--
-- Name: mofsh_arguments unique_argument_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_arguments
    ADD CONSTRAINT unique_argument_name UNIQUE (argument_name);


--
-- Name: mofsh_cloud_content_manager_services unique_cms_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_cloud_content_manager_services
    ADD CONSTRAINT unique_cms_name UNIQUE (content_manager_service_name);


--
-- Name: mofsh_fact_data_cube_meta unique_data_cube_meta_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT unique_data_cube_meta_key UNIQUE (id_data_cube, id_cm_key, id_cm_service);


--
-- Name: mofsh_users unique_email; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT unique_email UNIQUE (email);


--
-- Name: mofsh_fact_ai_services_arguments unique_fact_ai_service_argument; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments
    ADD CONSTRAINT unique_fact_ai_service_argument UNIQUE (id_ai_service, id_argument);


--
-- Name: mofsh_cloud_manager_meta_keys unique_meta_key_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys
    ADD CONSTRAINT unique_meta_key_name UNIQUE (key_name);


--
-- Name: mofsh_data_user_relation unique_relation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_data_user_relation
    ADD CONSTRAINT unique_relation UNIQUE (relation);


--
-- Name: mofsh_services_users_relation unique_service_user_relation; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_services_users_relation
    ADD CONSTRAINT unique_service_user_relation UNIQUE (relation);


--
-- Name: mofsh_users unique_username; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT unique_username UNIQUE (username);


--
-- Name: mofsh_users unique_uuid; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT unique_uuid UNIQUE (uuid);


--
-- Name: mofsh_fact_ai_services_arguments mofsh_fact_ai_services_arguments_id_ai_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments
    ADD CONSTRAINT mofsh_fact_ai_services_arguments_id_ai_service_fkey FOREIGN KEY (id_ai_service) REFERENCES public.mofsh_ai_services(id);


--
-- Name: mofsh_fact_ai_services_arguments mofsh_fact_ai_services_arguments_id_argument_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments
    ADD CONSTRAINT mofsh_fact_ai_services_arguments_id_argument_fkey FOREIGN KEY (id_argument) REFERENCES public.mofsh_arguments(id);


--
-- Name: mofsh_fact_ai_services_arguments mofsh_fact_ai_services_arguments_id_argument_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments
    ADD CONSTRAINT mofsh_fact_ai_services_arguments_id_argument_type_fkey FOREIGN KEY (id_argument_type) REFERENCES public.mofsh_argument_types(id);


--
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_cm_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_cm_key_fkey FOREIGN KEY (id_cm_key) REFERENCES public.mofsh_cloud_manager_meta_keys(id);


--
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_cm_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_cm_service_fkey FOREIGN KEY (id_cm_service) REFERENCES public.mofsh_cloud_content_manager_services(id);


--
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_data_cube_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_data_cube_fkey FOREIGN KEY (id_data_cube) REFERENCES public.mofsh_data_cubes(id);


--
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_data_cube_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_data_cube_fkey FOREIGN KEY (id_data_cube) REFERENCES public.mofsh_data_cubes(id);


--
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_data_user_relation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_data_user_relation_fkey FOREIGN KEY (id_data_user_relation) REFERENCES public.mofsh_data_user_relation(id);


--
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_uuid_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_uuid_user_fkey FOREIGN KEY (uuid_user) REFERENCES public.mofsh_users(uuid) MATCH FULL;


--
-- Name: mofsh_fact_services_users mofsh_fact_services_users_id_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_services_users
    ADD CONSTRAINT mofsh_fact_services_users_id_service_fkey FOREIGN KEY (id_service) REFERENCES public.mofsh_ai_services(id);


--
-- Name: mofsh_fact_services_users mofsh_fact_services_users_id_service_user_relation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_services_users
    ADD CONSTRAINT mofsh_fact_services_users_id_service_user_relation_fkey FOREIGN KEY (id_service_user_relation) REFERENCES public.mofsh_services_users_relation(id);


--
-- Name: mofsh_fact_services_users mofsh_fact_services_users_uuid_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mofsh_fact_services_users
    ADD CONSTRAINT mofsh_fact_services_users_uuid_user_fkey FOREIGN KEY (uuid_user) REFERENCES public.mofsh_users(uuid) MATCH FULL;


--
-- PostgreSQL database dump complete
--

