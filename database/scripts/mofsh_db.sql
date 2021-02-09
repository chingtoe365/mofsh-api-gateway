PGDMP         7        	        y            mofsh_db     12.2 (Ubuntu 12.2-2.pgdg16.04+1)     12.2 (Ubuntu 12.2-2.pgdg16.04+1) B    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    60650    mofsh_db    DATABASE     z   CREATE DATABASE mofsh_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE mofsh_db;
                postgres    false            �            1259    60785 $   mofsh_cloud_content_manager_services    TABLE     �   CREATE TABLE public.mofsh_cloud_content_manager_services (
    id integer NOT NULL,
    content_manager_service_name character varying
);
 8   DROP TABLE public.mofsh_cloud_content_manager_services;
       public         heap    postgres    false            �            1259    60783 +   mofsh_cloud_content_manager_services_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mofsh_cloud_content_manager_services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.mofsh_cloud_content_manager_services_id_seq;
       public          postgres    false    211            �           0    0 +   mofsh_cloud_content_manager_services_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.mofsh_cloud_content_manager_services_id_seq OWNED BY public.mofsh_cloud_content_manager_services.id;
          public          postgres    false    210            �            1259    60772    mofsh_cloud_manager_meta_keys    TABLE     o   CREATE TABLE public.mofsh_cloud_manager_meta_keys (
    id integer NOT NULL,
    key_name character varying
);
 1   DROP TABLE public.mofsh_cloud_manager_meta_keys;
       public         heap    postgres    false            �            1259    60770 $   mofsh_cloud_manager_meta_keys_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mofsh_cloud_manager_meta_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.mofsh_cloud_manager_meta_keys_id_seq;
       public          postgres    false    209            �           0    0 $   mofsh_cloud_manager_meta_keys_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.mofsh_cloud_manager_meta_keys_id_seq OWNED BY public.mofsh_cloud_manager_meta_keys.id;
          public          postgres    false    208            �            1259    60761    mofsh_data_cubes    TABLE     �   CREATE TABLE public.mofsh_data_cubes (
    id integer NOT NULL,
    cube_name character varying,
    cube_description character varying
);
 $   DROP TABLE public.mofsh_data_cubes;
       public         heap    postgres    false            �            1259    60759    mofsh_data_cubes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mofsh_data_cubes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.mofsh_data_cubes_id_seq;
       public          postgres    false    207            �           0    0    mofsh_data_cubes_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.mofsh_data_cubes_id_seq OWNED BY public.mofsh_data_cubes.id;
          public          postgres    false    206            �            1259    60748    mofsh_data_user_relation    TABLE     j   CREATE TABLE public.mofsh_data_user_relation (
    id integer NOT NULL,
    relation character varying
);
 ,   DROP TABLE public.mofsh_data_user_relation;
       public         heap    postgres    false            �            1259    60746    mofsh_data_user_relation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mofsh_data_user_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.mofsh_data_user_relation_id_seq;
       public          postgres    false    205            �           0    0    mofsh_data_user_relation_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.mofsh_data_user_relation_id_seq OWNED BY public.mofsh_data_user_relation.id;
          public          postgres    false    204            �            1259    60798    mofsh_fact_data_cube_meta    TABLE     �   CREATE TABLE public.mofsh_fact_data_cube_meta (
    id integer NOT NULL,
    id_data_cube integer,
    id_cm_key integer,
    id_cm_service integer,
    cm_key_value character varying
);
 -   DROP TABLE public.mofsh_fact_data_cube_meta;
       public         heap    postgres    false            �            1259    60796     mofsh_fact_data_cube_meta_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mofsh_fact_data_cube_meta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mofsh_fact_data_cube_meta_id_seq;
       public          postgres    false    213            �           0    0     mofsh_fact_data_cube_meta_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mofsh_fact_data_cube_meta_id_seq OWNED BY public.mofsh_fact_data_cube_meta.id;
          public          postgres    false    212            �            1259    60826    mofsh_fact_data_cube_user    TABLE     �   CREATE TABLE public.mofsh_fact_data_cube_user (
    id integer NOT NULL,
    id_user integer,
    id_data_cube integer,
    id_data_user_relation integer
);
 -   DROP TABLE public.mofsh_fact_data_cube_user;
       public         heap    postgres    false            �            1259    60824     mofsh_fact_data_cube_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mofsh_fact_data_cube_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.mofsh_fact_data_cube_user_id_seq;
       public          postgres    false    215            �           0    0     mofsh_fact_data_cube_user_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.mofsh_fact_data_cube_user_id_seq OWNED BY public.mofsh_fact_data_cube_user.id;
          public          postgres    false    214            �            1259    60733    mofsh_users    TABLE     �   CREATE TABLE public.mofsh_users (
    id integer NOT NULL,
    username character varying,
    email character varying,
    organization character varying
);
    DROP TABLE public.mofsh_users;
       public         heap    postgres    false            �            1259    60731    mofsh_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mofsh_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.mofsh_users_id_seq;
       public          postgres    false    203            �           0    0    mofsh_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.mofsh_users_id_seq OWNED BY public.mofsh_users.id;
          public          postgres    false    202            �
           2604    60788 '   mofsh_cloud_content_manager_services id    DEFAULT     �   ALTER TABLE ONLY public.mofsh_cloud_content_manager_services ALTER COLUMN id SET DEFAULT nextval('public.mofsh_cloud_content_manager_services_id_seq'::regclass);
 V   ALTER TABLE public.mofsh_cloud_content_manager_services ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    60775     mofsh_cloud_manager_meta_keys id    DEFAULT     �   ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys ALTER COLUMN id SET DEFAULT nextval('public.mofsh_cloud_manager_meta_keys_id_seq'::regclass);
 O   ALTER TABLE public.mofsh_cloud_manager_meta_keys ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            �
           2604    60764    mofsh_data_cubes id    DEFAULT     z   ALTER TABLE ONLY public.mofsh_data_cubes ALTER COLUMN id SET DEFAULT nextval('public.mofsh_data_cubes_id_seq'::regclass);
 B   ALTER TABLE public.mofsh_data_cubes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �
           2604    60751    mofsh_data_user_relation id    DEFAULT     �   ALTER TABLE ONLY public.mofsh_data_user_relation ALTER COLUMN id SET DEFAULT nextval('public.mofsh_data_user_relation_id_seq'::regclass);
 J   ALTER TABLE public.mofsh_data_user_relation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    60801    mofsh_fact_data_cube_meta id    DEFAULT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_data_cube_meta_id_seq'::regclass);
 K   ALTER TABLE public.mofsh_fact_data_cube_meta ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    60829    mofsh_fact_data_cube_user id    DEFAULT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_user ALTER COLUMN id SET DEFAULT nextval('public.mofsh_fact_data_cube_user_id_seq'::regclass);
 K   ALTER TABLE public.mofsh_fact_data_cube_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    60736    mofsh_users id    DEFAULT     p   ALTER TABLE ONLY public.mofsh_users ALTER COLUMN id SET DEFAULT nextval('public.mofsh_users_id_seq'::regclass);
 =   ALTER TABLE public.mofsh_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �          0    60785 $   mofsh_cloud_content_manager_services 
   TABLE DATA           `   COPY public.mofsh_cloud_content_manager_services (id, content_manager_service_name) FROM stdin;
    public          postgres    false    211   +W       �          0    60772    mofsh_cloud_manager_meta_keys 
   TABLE DATA           E   COPY public.mofsh_cloud_manager_meta_keys (id, key_name) FROM stdin;
    public          postgres    false    209   �W       ~          0    60761    mofsh_data_cubes 
   TABLE DATA           K   COPY public.mofsh_data_cubes (id, cube_name, cube_description) FROM stdin;
    public          postgres    false    207   0X       |          0    60748    mofsh_data_user_relation 
   TABLE DATA           @   COPY public.mofsh_data_user_relation (id, relation) FROM stdin;
    public          postgres    false    205   pX       �          0    60798    mofsh_fact_data_cube_meta 
   TABLE DATA           m   COPY public.mofsh_fact_data_cube_meta (id, id_data_cube, id_cm_key, id_cm_service, cm_key_value) FROM stdin;
    public          postgres    false    213   �X       �          0    60826    mofsh_fact_data_cube_user 
   TABLE DATA           e   COPY public.mofsh_fact_data_cube_user (id, id_user, id_data_cube, id_data_user_relation) FROM stdin;
    public          postgres    false    215   Y       z          0    60733    mofsh_users 
   TABLE DATA           H   COPY public.mofsh_users (id, username, email, organization) FROM stdin;
    public          postgres    false    203   BY       �           0    0 +   mofsh_cloud_content_manager_services_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.mofsh_cloud_content_manager_services_id_seq', 10, true);
          public          postgres    false    210            �           0    0 $   mofsh_cloud_manager_meta_keys_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.mofsh_cloud_manager_meta_keys_id_seq', 45, true);
          public          postgres    false    208            �           0    0    mofsh_data_cubes_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.mofsh_data_cubes_id_seq', 1, true);
          public          postgres    false    206            �           0    0    mofsh_data_user_relation_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.mofsh_data_user_relation_id_seq', 2, true);
          public          postgres    false    204            �           0    0     mofsh_fact_data_cube_meta_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.mofsh_fact_data_cube_meta_id_seq', 3, true);
          public          postgres    false    212            �           0    0     mofsh_fact_data_cube_user_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.mofsh_fact_data_cube_user_id_seq', 2, true);
          public          postgres    false    214            �           0    0    mofsh_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.mofsh_users_id_seq', 2, true);
          public          postgres    false    202            �
           2606    60793 N   mofsh_cloud_content_manager_services mofsh_cloud_content_manager_services_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_cloud_content_manager_services
    ADD CONSTRAINT mofsh_cloud_content_manager_services_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.mofsh_cloud_content_manager_services DROP CONSTRAINT mofsh_cloud_content_manager_services_pkey;
       public            postgres    false    211            �
           2606    60780 @   mofsh_cloud_manager_meta_keys mofsh_cloud_manager_meta_keys_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys
    ADD CONSTRAINT mofsh_cloud_manager_meta_keys_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys DROP CONSTRAINT mofsh_cloud_manager_meta_keys_pkey;
       public            postgres    false    209            �
           2606    60769 &   mofsh_data_cubes mofsh_data_cubes_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.mofsh_data_cubes
    ADD CONSTRAINT mofsh_data_cubes_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.mofsh_data_cubes DROP CONSTRAINT mofsh_data_cubes_pkey;
       public            postgres    false    207            �
           2606    60756 6   mofsh_data_user_relation mofsh_data_user_relation_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.mofsh_data_user_relation
    ADD CONSTRAINT mofsh_data_user_relation_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.mofsh_data_user_relation DROP CONSTRAINT mofsh_data_user_relation_pkey;
       public            postgres    false    205            �
           2606    60806 8   mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta DROP CONSTRAINT mofsh_fact_data_cube_meta_pkey;
       public            postgres    false    213            �
           2606    60831 8   mofsh_fact_data_cube_user mofsh_fact_data_cube_user_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.mofsh_fact_data_cube_user DROP CONSTRAINT mofsh_fact_data_cube_user_pkey;
       public            postgres    false    215            �
           2606    60741    mofsh_users mofsh_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT mofsh_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.mofsh_users DROP CONSTRAINT mofsh_users_pkey;
       public            postgres    false    203            �
           2606    60795 4   mofsh_cloud_content_manager_services unique_cms_name 
   CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_cloud_content_manager_services
    ADD CONSTRAINT unique_cms_name UNIQUE (content_manager_service_name);
 ^   ALTER TABLE ONLY public.mofsh_cloud_content_manager_services DROP CONSTRAINT unique_cms_name;
       public            postgres    false    211            �
           2606    60808 3   mofsh_fact_data_cube_meta unique_data_cube_meta_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT unique_data_cube_meta_key UNIQUE (id_data_cube, id_cm_key, id_cm_service);
 ]   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta DROP CONSTRAINT unique_data_cube_meta_key;
       public            postgres    false    213    213    213            �
           2606    60833 4   mofsh_fact_data_cube_user unique_data_cube_user_pair 
   CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT unique_data_cube_user_pair UNIQUE (id_user, id_data_cube, id_data_user_relation);
 ^   ALTER TABLE ONLY public.mofsh_fact_data_cube_user DROP CONSTRAINT unique_data_cube_user_pair;
       public            postgres    false    215    215    215            �
           2606    60745    mofsh_users unique_email 
   CONSTRAINT     T   ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT unique_email UNIQUE (email);
 B   ALTER TABLE ONLY public.mofsh_users DROP CONSTRAINT unique_email;
       public            postgres    false    203            �
           2606    60782 2   mofsh_cloud_manager_meta_keys unique_meta_key_name 
   CONSTRAINT     q   ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys
    ADD CONSTRAINT unique_meta_key_name UNIQUE (key_name);
 \   ALTER TABLE ONLY public.mofsh_cloud_manager_meta_keys DROP CONSTRAINT unique_meta_key_name;
       public            postgres    false    209            �
           2606    60758 (   mofsh_data_user_relation unique_relation 
   CONSTRAINT     g   ALTER TABLE ONLY public.mofsh_data_user_relation
    ADD CONSTRAINT unique_relation UNIQUE (relation);
 R   ALTER TABLE ONLY public.mofsh_data_user_relation DROP CONSTRAINT unique_relation;
       public            postgres    false    205            �
           2606    60743    mofsh_users unique_username 
   CONSTRAINT     Z   ALTER TABLE ONLY public.mofsh_users
    ADD CONSTRAINT unique_username UNIQUE (username);
 E   ALTER TABLE ONLY public.mofsh_users DROP CONSTRAINT unique_username;
       public            postgres    false    203            �
           2606    60814 B   mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_cm_key_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_cm_key_fkey FOREIGN KEY (id_cm_key) REFERENCES public.mofsh_cloud_manager_meta_keys(id);
 l   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta DROP CONSTRAINT mofsh_fact_data_cube_meta_id_cm_key_fkey;
       public          postgres    false    2790    213    209            �
           2606    60819 F   mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_cm_service_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_cm_service_fkey FOREIGN KEY (id_cm_service) REFERENCES public.mofsh_cloud_content_manager_services(id);
 p   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta DROP CONSTRAINT mofsh_fact_data_cube_meta_id_cm_service_fkey;
       public          postgres    false    211    213    2794            �
           2606    60809 E   mofsh_fact_data_cube_meta mofsh_fact_data_cube_meta_id_data_cube_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta
    ADD CONSTRAINT mofsh_fact_data_cube_meta_id_data_cube_fkey FOREIGN KEY (id_data_cube) REFERENCES public.mofsh_data_cubes(id);
 o   ALTER TABLE ONLY public.mofsh_fact_data_cube_meta DROP CONSTRAINT mofsh_fact_data_cube_meta_id_data_cube_fkey;
       public          postgres    false    2788    213    207            �
           2606    60839 E   mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_data_cube_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_data_cube_fkey FOREIGN KEY (id_data_cube) REFERENCES public.mofsh_data_cubes(id);
 o   ALTER TABLE ONLY public.mofsh_fact_data_cube_user DROP CONSTRAINT mofsh_fact_data_cube_user_id_data_cube_fkey;
       public          postgres    false    215    2788    207            �
           2606    60844 N   mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_data_user_relation_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_data_user_relation_fkey FOREIGN KEY (id_data_user_relation) REFERENCES public.mofsh_data_user_relation(id);
 x   ALTER TABLE ONLY public.mofsh_fact_data_cube_user DROP CONSTRAINT mofsh_fact_data_cube_user_id_data_user_relation_fkey;
       public          postgres    false    215    2784    205            �
           2606    60834 @   mofsh_fact_data_cube_user mofsh_fact_data_cube_user_id_user_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.mofsh_fact_data_cube_user
    ADD CONSTRAINT mofsh_fact_data_cube_user_id_user_fkey FOREIGN KEY (id_user) REFERENCES public.mofsh_users(id);
 j   ALTER TABLE ONLY public.mofsh_fact_data_cube_user DROP CONSTRAINT mofsh_fact_data_cube_user_id_user_fkey;
       public          postgres    false    2778    203    215            �   h   x�3�Lʯ�K���2�t�M���S6�2��/.I/J��2��K�7������K�wq��)�,)I-R.)JM��24���/-)MJU��,K�
g�s��qqq �      �   }   x�E��
�0D�;#nZ�� k��`��l���mE����7L>E��܏M}ӎ�������i�I��x_�>�[U�4�Zb�`&_��uw����??�0mYV�sT��UZ�4�������S�N ޴.5�      ~   0   x�3����/J.�O+)VH��+)JL.QH�H�-�I-���#����� (l      |      x�3�,.M*N.�LJ�2��/������ VH      �   j   x�3�4�4���������ȀB�ת�B��p_G���.�"̳(+/6ʮ2��,4�0�(��1�,-7+LO-N�(��2*aCcK#c3Kc�=... ��D      �      x�3�4B#.#N#�+F��� (~      z   Y   x�3�L�/.�ϋ�IMO��LL���s��E���s9��|� �gr~^IQbf|IjrF^~N~z%TT.��Z��W�k������ \�-Z     