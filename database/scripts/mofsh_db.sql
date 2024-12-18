--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-2.pgdg16.04+1)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-2.pgdg16.04+1)

-- Started on 2021-03-03 10:37:44 UTC

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
-- TOC entry 2956 (class 0 OID 0)
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
-- TOC entry 2957 (class 0 OID 0)
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
-- TOC entry 2958 (class 0 OID 0)
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
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 204
-- Name: mofsh_data_user_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_data_user_relation_id_seq OWNED BY public.mofsh_data_user_relation.id;


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
-- TOC entry 2960 (class 0 OID 0)
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
-- TOC entry 2961 (class 0 OID 0)
-- Dependencies: 214
-- Name: mofsh_fact_data_cube_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_fact_data_cube_user_id_seq OWNED BY public.mofsh_fact_data_cube_user.id;


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
-- TOC entry 2962 (class 0 OID 0)
-- Dependencies: 202
-- Name: mofsh_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.mofsh_users_id_seq OWNED BY public.mofsh_users.id;


--
-- TOC entry 2774 (class 2604 OID 60788)
-- Name: mofsh_cloud_content_manager_services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_content_manager_services ALTER COLUMN id SET DEFAULT nextval('public.mofsh_cloud_content_manager_services_id_seq'::regclass);


--
-- TOC entry 2773 (class 2604 OID 60775)
-- Name: mofsh_cloud_manager_meta_keys id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys ALTER COLUMN id SET DEFAULT nextval('public.mofsh_cloud_manager_meta_keys_id_seq'::regclass);


--
-- TOC entry 2772 (class 2604 OID 60764)
-- Name: mofsh_data_cubes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_cubes ALTER COLUMN id SET DEFAULT nextval('public.mofsh_data_cubes_id_seq'::regclass);


--
-- TOC entry 2771 (class 2604 OID 60751)
-- Name: mofsh_data_user_relation id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_user_relation ALTER COLUMN id SET DEFAULT nextval('public.mofsh_data_user_relation_id_seq'::regclass);


--
-- TOC entry 2775 (class 2604 OID 60801)
-- Name: mofsh_fact_data_cube_meta id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_data_cube_meta_id_seq'::regclass);


--
-- TOC entry 2776 (class 2604 OID 60829)
-- Name: mofsh_fact_data_cube_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_data_cube_user_id_seq'::regclass);


--
-- TOC entry 2770 (class 2604 OID 60736)
-- Name: mofsh_users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_users ALTER COLUMN id SET DEFAULT nextval('public.mofsh_users_id_seq'::regclass);


--
-- TOC entry 2946 (class 0 OID 60785)
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
-- TOC entry 2944 (class 0 OID 60772)
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
-- TOC entry 2942 (class 0 OID 60761)
-- Dependencies: 207
-- Data for Name: mofsh_data_cubes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_data_cubes (id, cube_name, cube_description) FROM stdin;
1	moorcrofts contract examples	Moorcrofts contract examples
\.


--
-- TOC entry 2940 (class 0 OID 60748)
-- Dependencies: 205
-- Data for Name: mofsh_data_user_relation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_data_user_relation (id, relation) FROM stdin;
1	subscribe
2	own
\.


--
-- TOC entry 2948 (class 0 OID 60798)
-- Dependencies: 213
-- Data for Name: mofsh_fact_data_cube_meta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_fact_data_cube_meta (id, id_data_cube, id_cm_key, id_cm_service, cm_key_value) FROM stdin;
1	1	2	1	eypNtDShRbYPq2XDEztq5WlfWMA9gjX0
2	1	1	1	n8vws2kz5oiq781xrll3iuw6qgesbxtn
3	1	3	1	130942436938
\.


--
-- TOC entry 2950 (class 0 OID 60826)
-- Dependencies: 215
-- Data for Name: mofsh_fact_data_cube_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_fact_data_cube_user (id, id_user, id_data_cube, id_data_user_relation) FROM stdin;
1	1	1	2
2	2	1	1
\.


--
-- TOC entry 2938 (class 0 OID 60733)
-- Dependencies: 203
-- Data for Name: mofsh_users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.mofsh_users (id, username, email, organization) FROM stdin;
1	boston_legal	admin@bostonlegal.com	Boston Legal
2	contrai_technology	admin@contraitechnologies.com	Contrai Technology
\.


--
-- TOC entry 2963 (class 0 OID 0)
-- Dependencies: 210
-- Name: mofsh_cloud_content_manager_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_cloud_content_manager_services_id_seq', 10, true);


--
-- TOC entry 2964 (class 0 OID 0)
-- Dependencies: 208
-- Name: mofsh_cloud_manager_meta_keys_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_cloud_manager_meta_keys_id_seq', 45, true);


--
-- TOC entry 2965 (class 0 OID 0)
-- Dependencies: 206
-- Name: mofsh_data_cubes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_data_cubes_id_seq', 1, true);


--
-- TOC entry 2966 (class 0 OID 0)
-- Dependencies: 204
-- Name: mofsh_data_user_relation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_data_user_relation_id_seq', 2, true);


--
-- TOC entry 2967 (class 0 OID 0)
-- Dependencies: 212
-- Name: mofsh_fact_data_cube_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_fact_data_cube_meta_id_seq', 3, true);


--
-- TOC entry 2968 (class 0 OID 0)
-- Dependencies: 214
-- Name: mofsh_fact_data_cube_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_fact_data_cube_user_id_seq', 2, true);


--
-- TOC entry 2969 (class 0 OID 0)
-- Dependencies: 202
-- Name: mofsh_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.mofsh_users_id_seq', 2, true);


--
-- TOC entry 2794 (class 2606 OID 60793)
-- Name: mofsh_cloud_content_manager_services mofsh_cloud_content_manager_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_content_manager_services
    ADD CONSTRAINT mofsh_cloud_content_manager_services_pkey PRIMARY KEY (id);


--
-- TOC entry 2790 (class 2606 OID 60780)
-- Name: mofsh_cloud_manager_meta_keys mofsh_cloud_manager_meta_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys
    ADD CONSTRAINT mofsh_cloud_manager_meta_keys_pkey PRIMARY KEY (id);


--
-- TOC entry 2788 (class 2606 OID 60769)
-- Name: mofsh_data_cubes mofsh_data_cubes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_cubes
    ADD CONSTRAINT mofsh_data_cubes_pkey PRIMARY KEY (id);


--
-- TOC entry 2784 (class 2606 OID 60756)
-- Name: mofsh_data_user_relation mofsh_data_user_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_user_relation
    ADD CONSTRAINT mofsh_data_user_relation_pkey PRIMARY KEY (id);


--
-- TOC entry 2798 (class 2606 OID 60806)
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_pkey PRIMARY KEY (id);


--
-- TOC entry 2802 (class 2606 OID 60831)
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2778 (class 2606 OID 60741)
-- Name: mofsh_users mofsh_users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT mofsh_users_pkey PRIMARY KEY (id);


--
-- TOC entry 2796 (class 2606 OID 60795)
-- Name: mofsh_cloud_content_manager_services unique_cms_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_content_manager_services
    ADD CONSTRAINT unique_cms_name UNIQUE (content_manager_service_name);


--
-- TOC entry 2800 (class 2606 OID 60808)
-- Name: mofsh_fact_data_cube_meta unique_data_cube_meta_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT unique_data_cube_meta_key UNIQUE (id_data_cube, id_cm_key, id_cm_service);


--
-- TOC entry 2804 (class 2606 OID 60833)
-- Name: mofsh_fact_data_cube_user unique_data_cube_user_pair; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT unique_data_cube_user_pair UNIQUE (id_user, id_data_cube, id_data_user_relation);


--
-- TOC entry 2780 (class 2606 OID 60745)
-- Name: mofsh_users unique_email; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT unique_email UNIQUE (email);


--
-- TOC entry 2792 (class 2606 OID 60782)
-- Name: mofsh_cloud_manager_meta_keys unique_meta_key_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys
    ADD CONSTRAINT unique_meta_key_name UNIQUE (key_name);


--
-- TOC entry 2786 (class 2606 OID 60758)
-- Name: mofsh_data_user_relation unique_relation; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_data_user_relation
    ADD CONSTRAINT unique_relation UNIQUE (relation);


--
-- TOC entry 2782 (class 2606 OID 60743)
-- Name: mofsh_users unique_username; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT unique_username UNIQUE (username);


--
-- TOC entry 2806 (class 2606 OID 60814)
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_cm_key_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_cm_key_fkey FOREIGN KEY (id_cm_key) REFERENCES public.mofsh_cloud_manager_meta_keys(id);


--
-- TOC entry 2807 (class 2606 OID 60819)
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_cm_service_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_cm_service_fkey FOREIGN KEY (id_cm_service) REFERENCES public.mofsh_cloud_content_manager_services(id);


--
-- TOC entry 2805 (class 2606 OID 60809)
-- Name: mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_data_cube_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_data_cube_fkey FOREIGN KEY (id_data_cube) REFERENCES public.mofsh_data_cubes(id);


--
-- TOC entry 2809 (class 2606 OID 60839)
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_data_cube_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_data_cube_fkey FOREIGN KEY (id_data_cube) REFERENCES public.mofsh_data_cubes(id);


--
-- TOC entry 2810 (class 2606 OID 60844)
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_data_user_relation_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_data_user_relation_fkey FOREIGN KEY (id_data_user_relation) REFERENCES public.mofsh_data_user_relation(id);


--
-- TOC entry 2808 (class 2606 OID 60834)
-- Name: mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.mofsh_users(id);


-- Completed on 2021-03-03 10:37:49 UTC

--
-- PostgreSQL database dump complete
--

