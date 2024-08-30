--
-- PostgreSQL database cluster dump
--

-- Started on 2024-08-30 15:17:36

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--






--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.24
-- Dumped by pg_dump version 15.3

-- Started on 2024-08-30 15:17:37

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
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2117 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-08-30 15:17:45

--
-- PostgreSQL database dump complete
--

--
-- Database "dki" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.24
-- Dumped by pg_dump version 15.3

-- Started on 2024-08-30 15:17:46

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
-- TOC entry 2223 (class 1262 OID 17409)
-- Name: dki; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE dki WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE dki OWNER TO postgres;

\connect dki

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
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

--
-- TOC entry 186 (class 1259 OID 17413)
-- Name: barang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.barang (
    id integer NOT NULL,
    nama_barang character varying(255) NOT NULL,
    jumlah_stok integer NOT NULL,
    nomor_seri character varying(50),
    additional_info jsonb,
    gambar_barang character varying(255),
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    created_by character varying(50) NOT NULL,
    updated_at timestamp without time zone,
    updated_by character varying(50)
);


ALTER TABLE public.barang OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 17411)
-- Name: barang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.barang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.barang_id_seq OWNER TO postgres;

--
-- TOC entry 2225 (class 0 OID 0)
-- Dependencies: 185
-- Name: barang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.barang_id_seq OWNED BY public.barang.id;


--
-- TOC entry 197 (class 1259 OID 17483)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 17481)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 2226 (class 0 OID 0)
-- Dependencies: 196
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 190 (class 1259 OID 17444)
-- Name: master_pekerjaan; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.master_pekerjaan (
    id integer NOT NULL,
    nama_pekerjaan character varying(100) NOT NULL,
    deskripsi text,
    kode character varying(10)
);


ALTER TABLE public.master_pekerjaan OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 17442)
-- Name: master_pekerjaan_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.master_pekerjaan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.master_pekerjaan_id_seq OWNER TO postgres;

--
-- TOC entry 2227 (class 0 OID 0)
-- Dependencies: 189
-- Name: master_pekerjaan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.master_pekerjaan_id_seq OWNED BY public.master_pekerjaan.id;


--
-- TOC entry 192 (class 1259 OID 17455)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 17453)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2228 (class 0 OID 0)
-- Dependencies: 191
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 188 (class 1259 OID 17425)
-- Name: nasabah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nasabah (
    id integer NOT NULL,
    nomor_identitas character varying(16) NOT NULL,
    nama character varying(100),
    tempat_lahir text,
    tanggal_lahir date,
    jenis_kelamin character(1),
    pekerjaan character varying,
    alamat text,
    nominal_setor numeric,
    status_pengajuan character varying(50),
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone,
    created_by character varying(10),
    updated_by character varying,
    notes text
);


ALTER TABLE public.nasabah OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 17423)
-- Name: nasabah_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nasabah_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nasabah_id_seq OWNER TO postgres;

--
-- TOC entry 2229 (class 0 OID 0)
-- Dependencies: 187
-- Name: nasabah_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nasabah_id_seq OWNED BY public.nasabah.id;


--
-- TOC entry 195 (class 1259 OID 17474)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 17497)
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17495)
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO postgres;

--
-- TOC entry 2230 (class 0 OID 0)
-- Dependencies: 198
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- TOC entry 200 (class 1259 OID 17510)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id character varying(10),
    title character varying(100) NOT NULL,
    deskripsi text
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 17463)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    role_id character varying(10)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 17461)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 2231 (class 0 OID 0)
-- Dependencies: 193
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2053 (class 2604 OID 17416)
-- Name: barang id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang ALTER COLUMN id SET DEFAULT nextval('public.barang_id_seq'::regclass);


--
-- TOC entry 2060 (class 2604 OID 17486)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 2057 (class 2604 OID 17447)
-- Name: master_pekerjaan id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.master_pekerjaan ALTER COLUMN id SET DEFAULT nextval('public.master_pekerjaan_id_seq'::regclass);


--
-- TOC entry 2058 (class 2604 OID 17458)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2055 (class 2604 OID 17428)
-- Name: nasabah id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nasabah ALTER COLUMN id SET DEFAULT nextval('public.nasabah_id_seq'::regclass);


--
-- TOC entry 2062 (class 2604 OID 17500)
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- TOC entry 2059 (class 2604 OID 17466)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2203 (class 0 OID 17413)
-- Dependencies: 186
-- Data for Name: barang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.barang (id, nama_barang, jumlah_stok, nomor_seri, additional_info, gambar_barang, created_at, created_by, updated_at, updated_by) FROM stdin;
1	Laptop ASUS ROG	15	ASUS-ROG-1234	{"ram": "16GB", "storage": "1TB SSD", "processor": "Intel i7", "graphics_card": "NVIDIA RTX 3060"}	https://example.com/images/laptop_asus_rog.jpg	2024-08-28 23:58:19.728089	P2024123	2024-08-28 23:58:19.728089	
5	Toshiba Aspire Legion	11	ASUS-ROG-1234	{"ram": "16GB", "storage": "1TB SSD", "processor": "Intel i5", "graphics_card": "NVIDIA RTX 3060"}	https://example.com/images/laptop_asus_rog.jpg	2024-08-29 00:43:34.502836	P2024123	2024-08-29 00:43:34.502836	\N
7	Toshiba Lenovo Legion	11	ASUS-ROG-1234	{"ram": "16GB", "storage": "1TB SSD", "processor": "Intel i5", "graphics_card": "NVIDIA RTX 3060"}	https://example.com/images/laptop_asus_rog.jpg	2024-08-29 00:58:40.474399	P2024123	2024-08-29 00:58:40.474399	\N
6	Axioo X45U ROG	11	ASUS-ROG-1234	{"ram": "16GB", "storage": "1TB SSD", "processor": "Intel i5", "graphics_card": "NVIDIA RTX 3060"}	https://example.com/images/laptop_asus_rog.jpg	2024-08-29 00:52:36.512692	P2024123	2024-08-29 01:05:18.097673	P2024123
2	HP Elitbook ROG	11	ASUS-ROG-1234	{"ram": "16GB", "storage": "1TB SSD", "processor": "Intel i5", "graphics_card": "NVIDIA RTX 3060"}	https://example.com/images/laptop_asus_rog.jpg	2024-08-29 00:16:33.669312	P2024123	2024-08-29 01:05:56.575303	P2024123
8	Asus Aspire	11	ASUS-ROG-1234	{"ram": "16GB", "storage": "1TB SSD", "processor": "Intel i5", "graphics_card": "NVIDIA RTX 3060"}	https://example.com/images/laptop_asus_rog.jpg	2024-08-30 11:32:50.673376	P2024123	2024-08-30 11:32:50.673376	\N
\.


--
-- TOC entry 2214 (class 0 OID 17483)
-- Dependencies: 197
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 2207 (class 0 OID 17444)
-- Dependencies: 190
-- Data for Name: master_pekerjaan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.master_pekerjaan (id, nama_pekerjaan, deskripsi, kode) FROM stdin;
1	Software Engineer	Bertanggung jawab untuk pengembangan dan pemeliharaan perangkat lunak.	SE
2	Data Analyst	Menganalisis data untuk mendapatkan wawasan yang dapat membantu pengambilan keputusan bisnis.	DA
3	Project Manager	Mengelola proyek dan memastikan proyek selesai tepat waktu dan sesuai anggaran.	PM
4	Marketing Specialist	Mengembangkan strategi pemasaran untuk meningkatkan penjualan dan kesadaran merek.	MS
5	Customer Support	Memberikan dukungan dan layanan kepada pelanggan, menangani pertanyaan dan masalah.	CS
\.


--
-- TOC entry 2209 (class 0 OID 17455)
-- Dependencies: 192
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	2014_10_12_000000_create_users_table	1
2	2014_10_12_100000_create_password_resets_table	1
3	2019_08_19_000000_create_failed_jobs_table	1
4	2019_12_14_000001_create_personal_access_tokens_table	1
\.


--
-- TOC entry 2205 (class 0 OID 17425)
-- Dependencies: 188
-- Data for Name: nasabah; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nasabah (id, nomor_identitas, nama, tempat_lahir, tanggal_lahir, jenis_kelamin, pekerjaan, alamat, nominal_setor, status_pengajuan, created_at, updated_at, created_by, updated_by, notes) FROM stdin;
3	3456789012345678	Budi Santoso	Surabaya	1982-11-30	L	Analyst	Jl. Raya Surabaya No. 15	20000000	DISETUJUI	2024-08-29 22:01:08.149512	2024-08-29 16:03:07	\N	\N	\N
5	5678901234567890	Rani Pratiwi	Medan	1988-09-12	P	Accountant	Jl. Utama No. 35, Medan	12000000	DISETUJUI	2024-08-29 22:01:08.149512	2024-08-29 16:19:05	\N	\N	\N
12	2345678901234568	Suryadi Prabowo	Surakarta	1991-11-09	L	Civil Servant	Jl. Pegawai No. 18, Surakarta	11000000	DISETUJUI	2024-08-29 22:12:56.150196	2024-08-29 16:34:32	\N	Admin	data ok bget
4	4567890123456789	Dewi Lestari	Yogyakarta	1995-05-20	P	Designer	Jl. Pahlawan No. 25, Yogyakarta	7500000	DISETUJUI	2024-08-29 22:01:08.149512	2024-08-29 16:29:12	\N		data good
2	2345678901234567	Siti Aisyah	Bandung	1990-07-22	P	Engineer	Jl. Cendana No. 10, Bandung	5000000	DISETUJUI	2024-08-29 22:01:08.149512	2024-08-29 16:32:12	\N		data profit
9	9012345678901234	Lina Putri	Denpasar	1989-04-10	P	Nurse	Jl. Sehat No. 12, Denpasar	9000000	DISETUJUI	2024-08-29 22:12:56.150196	2024-08-29 16:33:08	\N		data ok
11	1234567890123457	Maya Anggraini	Semarang	1996-07-15	P	Photographer	Jl. Kreatif No. 7, Semarang	7000000	DISETUJUI	2024-08-29 22:12:56.150196	2024-08-29 17:28:10	\N	Admin	data kuat
7	7890123456789012	Nina Sari	Palembang	1987-12-25	P	Doctor	Jl. Kesehatan No. 20, Palembang	15000000	DISETUJUI	2024-08-29 22:12:56.150196	2024-08-29 17:29:59	\N	Admin	ok
1	1234567890123456	Andi Setiawan	Jakarta	1985-03-15	L	Manager	Jl. Merdeka No. 1, Jakarta	10000000	DISETUJUI	2024-08-29 22:01:08.149512	2024-08-29 17:32:45	\N	Admin	done
6	6789012345678901	Ali Mustofa	Makassar	1992-01-18	L	Teacher	Jl. Pendidikan No. 5, Makassar	6000000	DISETUJUI	2024-08-29 22:12:56.150196	2024-08-29 17:35:18	\N	Admin	data lengkap
10	0123456789012345	Joko Widodo	Solo	1980-08-22	L	Entrepreneur	Jl. Usaha No. 8, Solo	30000000	DISETUJUI	2024-08-29 22:12:56.150196	2024-08-29 17:41:01	\N	Admin	data sudah siap
8	8901234567890123	Hadi Wijaya	Medan	1993-06-05	L	Lawyer	Jl. Hukum No. 30, Medan	25000000	DISETUJUI	2024-08-29 22:12:56.150196	2024-08-29 17:43:29	\N	Admin	data lengkap sekali
17	3456789012545672	Patriot	Majalengka	2024-08-30	L	Software Engineer	Bali, Gorontalo	500000	MENUNGGU_APPROVAL	2024-08-30 02:36:17	2024-08-30 02:36:17	\N	\N	\N
19	4678901034567890	Eni	Tegal	2000-02-02	W	Marketing Specialist	Tegal, Jawa Tengah	300000	MENUNGGU_APPROVAL	2024-08-30 02:41:46	2024-08-30 02:41:46	\N	\N	\N
18	1444567890123457	Heli	Bandung	1997-02-18	L	Project Manager	Pancoran, DKI Jakarta	200000	DISETUJUI	2024-08-30 02:39:01	2024-08-30 02:44:30	\N	SPV Jakarta I	data good condition
20	5734567890123456	Siti Khadijah	Sumedang	1990-01-01	L	Pengusaha	Jalan Merdeka No. 10, Jawa Barat	5000000	MENUNGGU_APPROVAL	2024-08-30 02:49:05	2024-08-30 02:49:05	\N	\N	\N
21	12345678910234	Perdi	Bandung	2024-08-30	L	Software Engineer	Pancoran, DKI Jakarta	100000	DISETUJUI	2024-08-30 04:37:35	2024-08-30 04:38:31	\N	SPV Jakarta I	data lengkap
\.


--
-- TOC entry 2212 (class 0 OID 17474)
-- Dependencies: 195
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 2216 (class 0 OID 17497)
-- Dependencies: 199
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2217 (class 0 OID 17510)
-- Dependencies: 200
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (id, title, deskripsi) FROM stdin;
SPV	Supervisor	\N
\N	Customer Service	\N
\.


--
-- TOC entry 2211 (class 0 OID 17463)
-- Dependencies: 194
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, role_id) FROM stdin;
5	SPV Jakarta I	spvjak@gmail.com	\N	$2y$10$WmjwcTMabUmpsYifDu8jm.IBrbBxd9geQvD.NlMPAkVxiac38I8I6	\N	2024-08-30 00:41:45	2024-08-30 00:41:45	SPV
6	CS Jakarta I	csjak@gmail.com	\N	$2y$10$gueNg5velsthlPnseizPXe7nZRQ0b9ZA8yDx18pHeT.SZzilkpCXK	\N	2024-08-30 00:41:45	2024-08-30 00:41:45	CS
\.


--
-- TOC entry 2232 (class 0 OID 0)
-- Dependencies: 185
-- Name: barang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.barang_id_seq', 8, true);


--
-- TOC entry 2233 (class 0 OID 0)
-- Dependencies: 196
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 2234 (class 0 OID 0)
-- Dependencies: 189
-- Name: master_pekerjaan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.master_pekerjaan_id_seq', 5, true);


--
-- TOC entry 2235 (class 0 OID 0)
-- Dependencies: 191
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 4, true);


--
-- TOC entry 2236 (class 0 OID 0)
-- Dependencies: 187
-- Name: nasabah_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nasabah_id_seq', 21, true);


--
-- TOC entry 2237 (class 0 OID 0)
-- Dependencies: 198
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- TOC entry 2238 (class 0 OID 0)
-- Dependencies: 193
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- TOC entry 2064 (class 2606 OID 17422)
-- Name: barang barang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id);


--
-- TOC entry 2077 (class 2606 OID 17492)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 2079 (class 2606 OID 17494)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 2068 (class 2606 OID 17452)
-- Name: master_pekerjaan master_pekerjaan_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.master_pekerjaan
    ADD CONSTRAINT master_pekerjaan_pkey PRIMARY KEY (id);


--
-- TOC entry 2070 (class 2606 OID 17460)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2066 (class 2606 OID 17433)
-- Name: nasabah nasabah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nasabah
    ADD CONSTRAINT nasabah_pkey PRIMARY KEY (id);


--
-- TOC entry 2081 (class 2606 OID 17505)
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 2083 (class 2606 OID 17508)
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- TOC entry 2072 (class 2606 OID 17473)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 2074 (class 2606 OID 17471)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2075 (class 1259 OID 17480)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- TOC entry 2084 (class 1259 OID 17506)
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- TOC entry 2224 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2024-08-30 15:17:51

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-08-30 15:17:52

--
-- PostgreSQL database cluster dump complete
--

