--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-2.pgdg16.04+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg16.04+1)

-- Started on 2021-03-12 13:41:32 UTC

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
-- TOC entry 219 (class 1259 OID 61170)
-- Name: mofsh_ai_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_ai_services (
    id integer NOT NULL,
    ai_service_name character varying,
    ai_service_description character varying
);


--
-- TOC entry 218 (class 1259 OID 61168)
-- Name: mofsh_ai_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_ai_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 218
-- Name: mofsh_ai_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_ai_services_id_seq OWNED BY public.mofsh_ai_services.id;


--
-- TOC entry 217 (class 1259 OID 61159)
-- Name: mofsh_arguments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_arguments (
    id integer NOT NULL,
    argument_name character varying
);


--
-- TOC entry 216 (class 1259 OID 61157)
-- Name: mofsh_arguments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_arguments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 216
-- Name: mofsh_arguments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_arguments_id_seq OWNED BY public.mofsh_arguments.id;


--
-- TOC entry 211 (class 1259 OID 60785)
-- Name: mofsh_cloud_content_manager_services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_cloud_content_manager_services (
    id integer NOT NULL,
    content_manager_service_name character varying
);


--
-- TOC entry 210 (class 1259 OID 60783)
-- Name: mofsh_cloud_content_manager_services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_cloud_content_manager_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 210
-- Name: mofsh_cloud_content_manager_services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_cloud_content_manager_services_id_seq OWNED BY public.mofsh_cloud_content_manager_services.id;


--
-- TOC entry 209 (class 1259 OID 60772)
-- Name: mofsh_cloud_manager_meta_keys; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_cloud_manager_meta_keys (
    id integer NOT NULL,
    key_name character varying
);


--
-- TOC entry 208 (class 1259 OID 60770)
-- Name: mofsh_cloud_manager_meta_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_cloud_manager_meta_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 208
-- Name: mofsh_cloud_manager_meta_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_cloud_manager_meta_keys_id_seq OWNED BY public.mofsh_cloud_manager_meta_keys.id;


--
-- TOC entry 207 (class 1259 OID 60761)
-- Name: mofsh_data_cubes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_data_cubes (
    id integer NOT NULL,
    cube_name character varying,
    cube_description character varying
);


--
-- TOC entry 206 (class 1259 OID 60759)
-- Name: mofsh_data_cubes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_data_cubes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 206
-- Name: mofsh_data_cubes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_data_cubes_id_seq OWNED BY public.mofsh_data_cubes.id;


--
-- TOC entry 205 (class 1259 OID 60748)
-- Name: mofsh_data_user_relation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_data_user_relation (
    id integer NOT NULL,
    relation character varying
);


--
-- TOC entry 204 (class 1259 OID 60746)
-- Name: mofsh_data_user_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_data_user_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 204
-- Name: mofsh_data_user_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_data_user_relation_id_seq OWNED BY public.mofsh_data_user_relation.id;


--
-- TOC entry 221 (class 1259 OID 61181)
-- Name: mofsh_fact_ai_services_arguments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_fact_ai_services_arguments (
    id integer NOT NULL,
    id_ai_service integer,
    id_argument integer
);


--
-- TOC entry 220 (class 1259 OID 61179)
-- Name: mofsh_fact_ai_services_arguments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_fact_ai_services_arguments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 220
-- Name: mofsh_fact_ai_services_arguments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_fact_ai_services_arguments_id_seq OWNED BY public.mofsh_fact_ai_services_arguments.id;


--
-- TOC entry 213 (class 1259 OID 60798)
-- Name: mofsh_fact_data_cube_meta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_fact_data_cube_meta (
    id integer NOT NULL,
    id_data_cube integer,
    id_cm_key integer,
    id_cm_service integer,
    cm_key_value character varying
);


--
-- TOC entry 212 (class 1259 OID 60796)
-- Name: mofsh_fact_data_cube_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_fact_data_cube_meta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 212
-- Name: mofsh_fact_data_cube_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_fact_data_cube_meta_id_seq OWNED BY public.mofsh_fact_data_cube_meta.id;


--
-- TOC entry 215 (class 1259 OID 60826)
-- Name: mofsh_fact_data_cube_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_fact_data_cube_user (
    id integer NOT NULL,
    id_user integer,
    id_data_cube integer,
    id_data_user_relation integer
);


--
-- TOC entry 214 (class 1259 OID 60824)
-- Name: mofsh_fact_data_cube_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_fact_data_cube_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 214
-- Name: mofsh_fact_data_cube_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_fact_data_cube_user_id_seq OWNED BY public.mofsh_fact_data_cube_user.id;


--
-- TOC entry 225 (class 1259 OID 61210)
-- Name: mofsh_fact_services_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_fact_services_users (
    id integer NOT NULL,
    id_user integer,
    id_service integer,
    id_service_user_relation integer
);


--
-- TOC entry 224 (class 1259 OID 61208)
-- Name: mofsh_fact_services_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_fact_services_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 224
-- Name: mofsh_fact_services_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_fact_services_users_id_seq OWNED BY public.mofsh_fact_services_users.id;


--
-- TOC entry 223 (class 1259 OID 61199)
-- Name: mofsh_services_users_relation; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_services_users_relation (
    id integer NOT NULL,
    relation character varying
);


--
-- TOC entry 222 (class 1259 OID 61197)
-- Name: mofsh_services_users_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_services_users_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 222
-- Name: mofsh_services_users_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_services_users_relation_id_seq OWNED BY public.mofsh_services_users_relation.id;


--
-- TOC entry 203 (class 1259 OID 60733)
-- Name: mofsh_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.mofsh_users (
    id integer NOT NULL,
    username character varying,
    email character varying,
    organization character varying
);


--
-- TOC entry 202 (class 1259 OID 60731)
-- Name: mofsh_users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.mofsh_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 202
-- Name: mofsh_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_users_id_seq OWNED BY public.mofsh_users.id;


--
-- TOC entry 2811 (class 2604 OID 61173)
-- Name: mofsh_ai_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_ai_services ALTER COLUMN id SET DEFAULT nextval('public.mofsh_ai_services_id_seq'::regclass);


--
-- TOC entry 2810 (class 2604 OID 61162)
-- Name: mofsh_arguments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_arguments ALTER COLUMN id SET DEFAULT nextval('public.mofsh_arguments_id_seq'::regclass);


--
-- TOC entry 2807 (class 2604 OID 60788)
-- Name: mofsh_cloud_content_manager_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_content_manager_services ALTER COLUMN id SET DEFAULT nextval('public.mofsh_cloud_content_manager_services_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 60775)
-- Name: mofsh_cloud_manager_meta_keys id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys ALTER COLUMN id SET DEFAULT nextval('public.mofsh_cloud_manager_meta_keys_id_seq'::regclass);


--
-- TOC entry 2805 (class 2604 OID 60764)
-- Name: mofsh_data_cubes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_cubes ALTER COLUMN id SET DEFAULT nextval('public.mofsh_data_cubes_id_seq'::regclass);


--
-- TOC entry 2804 (class 2604 OID 60751)
-- Name: mofsh_data_user_relation id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_user_relation ALTER COLUMN id SET DEFAULT nextval('public.mofsh_data_user_relation_id_seq'::regclass);


--
-- TOC entry 2812 (class 2604 OID 61184)
-- Name: mofsh_fact_ai_services_arguments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_ai_services_arguments_id_seq'::regclass);


--
-- TOC entry 2808 (class 2604 OID 60801)
-- Name: mofsh_fact_data_cube_meta id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_data_cube_meta_id_seq'::regclass);


--
-- TOC entry 2809 (class 2604 OID 60829)
-- Name: mofsh_fact_data_cube_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_data_cube_user_id_seq'::regclass);


--
-- TOC entry 2814 (class 2604 OID 61213)
-- Name: mofsh_fact_services_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_services_users ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_services_users_id_seq'::regclass);


--
-- TOC entry 2813 (class 2604 OID 61202)
-- Name: mofsh_services_users_relation id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_services_users_relation ALTER COLUMN id SET DEFAULT nextval('public.mofsh_services_users_relation_id_seq'::regclass);


--
-- TOC entry 2803 (class 2604 OID 60736)
-- Name: mofsh_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_users ALTER COLUMN id SET DEFAULT nextval('public.mofsh_users_id_seq'::regclass);


--
-- TOC entry 3015 (class 0 OID 61170)
-- Dependencies: 219
-- Data for Name: mofsh_ai_services; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_ai_services (id, ai_service_name, ai_service_description) FROM stdin;
3	contrai-clause-topic-identifier	Contrai powered AI NLP for topic identifier
\.


--
-- TOC entry 3013 (class 0 OID 61159)
-- Dependencies: 217
-- Data for Name: mofsh_arguments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_arguments (id, argument_name) FROM stdin;
1	clause
\.


--
-- TOC entry 3007 (class 0 OID 60785)
-- Dependencies: 211
-- Data for Name: mofsh_cloud_content_manager_services; Type: TABLE DATA; Schema: public; Owner: -
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
-- TOC entry 3005 (class 0 OID 60772)
-- Dependencies: 209
-- Data for Name: mofsh_cloud_manager_meta_keys; Type: TABLE DATA; Schema: public; Owner: -
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
-- TOC entry 3003 (class 0 OID 60761)
-- Dependencies: 207
-- Data for Name: mofsh_data_cubes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_data_cubes (id, cube_name, cube_description) FROM stdin;
1	moorcrofts contract examples	Moorcrofts contract examples
\.


--
-- TOC entry 3001 (class 0 OID 60748)
-- Dependencies: 205
-- Data for Name: mofsh_data_user_relation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_data_user_relation (id, relation) FROM stdin;
1	subscribe
2	own
\.


--
-- TOC entry 3017 (class 0 OID 61181)
-- Dependencies: 221
-- Data for Name: mofsh_fact_ai_services_arguments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_fact_ai_services_arguments (id, id_ai_service, id_argument) FROM stdin;
\.


--
-- TOC entry 3009 (class 0 OID 60798)
-- Dependencies: 213
-- Data for Name: mofsh_fact_data_cube_meta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_fact_data_cube_meta (id, id_data_cube, id_cm_key, id_cm_service, cm_key_value) FROM stdin;
1	1	2	1	eypNtDShRbYPq2XDEztq5WlfWMA9gjX0
2	1	1	1	n8vws2kz5oiq781xrll3iuw6qgesbxtn
3	1	3	1	130942436938
\.


--
-- TOC entry 3011 (class 0 OID 60826)
-- Dependencies: 215
-- Data for Name: mofsh_fact_data_cube_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_fact_data_cube_user (id, id_user, id_data_cube, id_data_user_relation) FROM stdin;
1	1	1	2
2	2	1	1
\.


--
-- TOC entry 3021 (class 0 OID 61210)
-- Dependencies: 225
-- Data for Name: mofsh_fact_services_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_fact_services_users (id, id_user, id_service, id_service_user_relation) FROM stdin;
7	3	3	2
\.


--
-- TOC entry 3019 (class 0 OID 61199)
-- Dependencies: 223
-- Data for Name: mofsh_services_users_relation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_services_users_relation (id, relation) FROM stdin;
1	provide
2	subscribe
\.


--
-- TOC entry 2999 (class 0 OID 60733)
-- Dependencies: 203
-- Data for Name: mofsh_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_users (id, username, email, organization) FROM stdin;
1	boston_legal	admin@bostonlegal.com	Boston Legal
2	contrai_technology	admin@contraitechnologies.com	Contrai Technology
3	jintao	jintaolong@brookes.ac.uk	Ethical AI Institute, Oxford Brookes University
\.


--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 218
-- Name: mofsh_ai_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_ai_services_id_seq', 4, true);


--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 216
-- Name: mofsh_arguments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_arguments_id_seq', 1, true);


--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 210
-- Name: mofsh_cloud_content_manager_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_cloud_content_manager_services_id_seq', 10, true);


--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 208
-- Name: mofsh_cloud_manager_meta_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_cloud_manager_meta_keys_id_seq', 45, true);


--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 206
-- Name: mofsh_data_cubes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_data_cubes_id_seq', 1, true);


--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 204
-- Name: mofsh_data_user_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_data_user_relation_id_seq', 2, true);


--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 220
-- Name: mofsh_fact_ai_services_arguments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_fact_ai_services_arguments_id_seq', 1, false);


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 212
-- Name: mofsh_fact_data_cube_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_fact_data_cube_meta_id_seq', 3, true);


--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 214
-- Name: mofsh_fact_data_cube_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_fact_data_cube_user_id_seq', 2, true);


--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 224
-- Name: mofsh_fact_services_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_fact_services_users_id_seq', 7, true);


--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 222
-- Name: mofsh_services_users_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_services_users_relation_id_seq', 2, true);


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 202
-- Name: mofsh_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_users_id_seq', 3, true);


--
-- TOC entry 2848 (class 2606 OID 61178)
-- Name: mofsh_ai_services mofsh_ai_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_ai_services
    ADD CONSTRAINT mofsh_ai_services_pkey PRIMARY KEY (id);


--
-- TOC entry 2844 (class 2606 OID 61167)
-- Name: mofsh_arguments mofsh_arguments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_arguments
    ADD CONSTRAINT mofsh_arguments_pkey PRIMARY KEY (id);


--
-- TOC entry 2832 (class 2606 OID 60793)
-- Name: mofsh_cloud_content_manager_services mofsh_cloud_content_manager_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_content_manager_services
    ADD CONSTRAINT mofsh_cloud_content_manager_services_pkey PRIMARY KEY (id);


--
-- TOC entry 2828 (class 2606 OID 60780)
-- Name: mofsh_cloud_manager_meta_keys mofsh_cloud_manager_meta_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys
    ADD CONSTRAINT mofsh_cloud_manager_meta_keys_pkey PRIMARY KEY (id);


--
-- TOC entry 2826 (class 2606 OID 60769)
-- Name: mofsh_data_cubes mofsh_data_cubes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_cubes
    ADD CONSTRAINT mofsh_data_cubes_pkey PRIMARY KEY (id);


--
-- TOC entry 2822 (class 2606 OID 60756)
-- Name: mofsh_data_user_relation mofsh_data_user_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_user_relation
    ADD CONSTRAINT mofsh_data_user_relation_pkey PRIMARY KEY (id);


--
-- TOC entry 2852 (class 2606 OID 61186)
-- Name: mofsh_fact_ai_services_arguments mofsh_fact_ai_services_arguments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments
    ADD CONSTRAINT mofsh_fact_ai_services_arguments_pkey PRIMARY KEY (id);


--
-- TOC entry 2836 (class 2606 OID 60806)
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_pkey PRIMARY KEY (id);


--
-- TOC entry 2840 (class 2606 OID 60831)
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2860 (class 2606 OID 61215)
-- Name: mofsh_fact_services_users mofsh_fact_services_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_services_users
    ADD CONSTRAINT mofsh_fact_services_users_pkey PRIMARY KEY (id);


--
-- TOC entry 2856 (class 2606 OID 61207)
-- Name: mofsh_services_users_relation mofsh_services_users_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_services_users_relation
    ADD CONSTRAINT mofsh_services_users_relation_pkey PRIMARY KEY (id);


--
-- TOC entry 2816 (class 2606 OID 60741)
-- Name: mofsh_users mofsh_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT mofsh_users_pkey PRIMARY KEY (id);


--
-- TOC entry 2850 (class 2606 OID 61242)
-- Name: mofsh_ai_services unique_ai_service_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_ai_services
    ADD CONSTRAINT unique_ai_service_name UNIQUE (ai_service_name);


--
-- TOC entry 2846 (class 2606 OID 61244)
-- Name: mofsh_arguments unique_argument_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_arguments
    ADD CONSTRAINT unique_argument_name UNIQUE (argument_name);


--
-- TOC entry 2834 (class 2606 OID 60795)
-- Name: mofsh_cloud_content_manager_services unique_cms_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_content_manager_services
    ADD CONSTRAINT unique_cms_name UNIQUE (content_manager_service_name);


--
-- TOC entry 2838 (class 2606 OID 60808)
-- Name: mofsh_fact_data_cube_meta unique_data_cube_meta_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT unique_data_cube_meta_key UNIQUE (id_data_cube, id_cm_key, id_cm_service);


--
-- TOC entry 2842 (class 2606 OID 60833)
-- Name: mofsh_fact_data_cube_user unique_data_cube_user_pair; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT unique_data_cube_user_pair UNIQUE (id_user, id_data_cube, id_data_user_relation);


--
-- TOC entry 2818 (class 2606 OID 60745)
-- Name: mofsh_users unique_email; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT unique_email UNIQUE (email);


--
-- TOC entry 2854 (class 2606 OID 61248)
-- Name: mofsh_fact_ai_services_arguments unique_fact_ai_service_argument; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments
    ADD CONSTRAINT unique_fact_ai_service_argument UNIQUE (id_ai_service, id_argument);


--
-- TOC entry 2830 (class 2606 OID 60782)
-- Name: mofsh_cloud_manager_meta_keys unique_meta_key_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys
    ADD CONSTRAINT unique_meta_key_name UNIQUE (key_name);


--
-- TOC entry 2824 (class 2606 OID 60758)
-- Name: mofsh_data_user_relation unique_relation; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_user_relation
    ADD CONSTRAINT unique_relation UNIQUE (relation);


--
-- TOC entry 2858 (class 2606 OID 61246)
-- Name: mofsh_services_users_relation unique_service_user_relation; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_services_users_relation
    ADD CONSTRAINT unique_service_user_relation UNIQUE (relation);


--
-- TOC entry 2820 (class 2606 OID 60743)
-- Name: mofsh_users unique_username; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT unique_username UNIQUE (username);


--
-- TOC entry 2867 (class 2606 OID 61187)
-- Name: mofsh_fact_ai_services_arguments mofsh_fact_ai_services_arguments_id_ai_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments
    ADD CONSTRAINT mofsh_fact_ai_services_arguments_id_ai_service_fkey FOREIGN KEY (id_ai_service) REFERENCES public.mofsh_ai_services(id);


--
-- TOC entry 2868 (class 2606 OID 61192)
-- Name: mofsh_fact_ai_services_arguments mofsh_fact_ai_services_arguments_id_argument_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_ai_services_arguments
    ADD CONSTRAINT mofsh_fact_ai_services_arguments_id_argument_fkey FOREIGN KEY (id_argument) REFERENCES public.mofsh_arguments(id);


--
-- TOC entry 2862 (class 2606 OID 60814)
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_cm_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_cm_key_fkey FOREIGN KEY (id_cm_key) REFERENCES public.mofsh_cloud_manager_meta_keys(id);


--
-- TOC entry 2863 (class 2606 OID 60819)
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_cm_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_cm_service_fkey FOREIGN KEY (id_cm_service) REFERENCES public.mofsh_cloud_content_manager_services(id);


--
-- TOC entry 2861 (class 2606 OID 60809)
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_data_cube_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_data_cube_fkey FOREIGN KEY (id_data_cube) REFERENCES public.mofsh_data_cubes(id);


--
-- TOC entry 2865 (class 2606 OID 60839)
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_data_cube_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_data_cube_fkey FOREIGN KEY (id_data_cube) REFERENCES public.mofsh_data_cubes(id);


--
-- TOC entry 2866 (class 2606 OID 60844)
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_data_user_relation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_data_user_relation_fkey FOREIGN KEY (id_data_user_relation) REFERENCES public.mofsh_data_user_relation(id);


--
-- TOC entry 2864 (class 2606 OID 60834)
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.mofsh_users(id);


--
-- TOC entry 2870 (class 2606 OID 61221)
-- Name: mofsh_fact_services_users mofsh_fact_services_users_id_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_services_users
    ADD CONSTRAINT mofsh_fact_services_users_id_service_fkey FOREIGN KEY (id_service) REFERENCES public.mofsh_ai_services(id);


--
-- TOC entry 2871 (class 2606 OID 61226)
-- Name: mofsh_fact_services_users mofsh_fact_services_users_id_service_user_relation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_services_users
    ADD CONSTRAINT mofsh_fact_services_users_id_service_user_relation_fkey FOREIGN KEY (id_service_user_relation) REFERENCES public.mofsh_services_users_relation(id);


--
-- TOC entry 2869 (class 2606 OID 61216)
-- Name: mofsh_fact_services_users mofsh_fact_services_users_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_services_users
    ADD CONSTRAINT mofsh_fact_services_users_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.mofsh_users(id);


-- Completed on 2021-03-12 13:41:39 UTC

--
-- PostgreSQL database dump complete
--

