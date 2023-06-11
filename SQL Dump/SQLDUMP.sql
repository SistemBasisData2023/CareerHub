--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: kategori; Type: TABLE; Schema: public; Owner: ahmadgeneral86
--

CREATE TABLE public.kategori (
    id_kategori integer NOT NULL,
    nama_kategori text NOT NULL
);


ALTER TABLE public.kategori OWNER TO ahmadgeneral86;

--
-- Name: kategori_id_kategori_seq; Type: SEQUENCE; Schema: public; Owner: ahmadgeneral86
--

CREATE SEQUENCE public.kategori_id_kategori_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.kategori_id_kategori_seq OWNER TO ahmadgeneral86;

--
-- Name: kategori_id_kategori_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ahmadgeneral86
--

ALTER SEQUENCE public.kategori_id_kategori_seq OWNED BY public.kategori.id_kategori;


--
-- Name: lamaran; Type: TABLE; Schema: public; Owner: ahmadgeneral86
--

CREATE TABLE public.lamaran (
    id_lamaran integer NOT NULL,
    id_pekerjaan integer,
    id_pelamar integer,
    tanggal_lamaran text NOT NULL,
    status_lamaran integer NOT NULL,
    filename text NOT NULL
);


ALTER TABLE public.lamaran OWNER TO ahmadgeneral86;

--
-- Name: lamaran_id_lamaran_seq; Type: SEQUENCE; Schema: public; Owner: ahmadgeneral86
--

CREATE SEQUENCE public.lamaran_id_lamaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lamaran_id_lamaran_seq OWNER TO ahmadgeneral86;

--
-- Name: lamaran_id_lamaran_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ahmadgeneral86
--

ALTER SEQUENCE public.lamaran_id_lamaran_seq OWNED BY public.lamaran.id_lamaran;


--
-- Name: pekerjaan; Type: TABLE; Schema: public; Owner: ahmadgeneral86
--

CREATE TABLE public.pekerjaan (
    id_pekerjaan integer NOT NULL,
    id_perusahaan integer,
    id_kategori integer,
    posisi text NOT NULL,
    deskripsi_pekerjaan text,
    kualifikasi text NOT NULL,
    gaji bigint NOT NULL
);


ALTER TABLE public.pekerjaan OWNER TO ahmadgeneral86;

--
-- Name: pekerjaan_id_pekerjaan_seq; Type: SEQUENCE; Schema: public; Owner: ahmadgeneral86
--

CREATE SEQUENCE public.pekerjaan_id_pekerjaan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pekerjaan_id_pekerjaan_seq OWNER TO ahmadgeneral86;

--
-- Name: pekerjaan_id_pekerjaan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ahmadgeneral86
--

ALTER SEQUENCE public.pekerjaan_id_pekerjaan_seq OWNED BY public.pekerjaan.id_pekerjaan;


--
-- Name: pelamar; Type: TABLE; Schema: public; Owner: ahmadgeneral86
--

CREATE TABLE public.pelamar (
    id_pelamar integer NOT NULL,
    nama_pelamar text NOT NULL,
    email_pelamar text NOT NULL,
    password text NOT NULL,
    alamat_pelamar text NOT NULL,
    pengalaman text NOT NULL,
    pendidikan text NOT NULL
);


ALTER TABLE public.pelamar OWNER TO ahmadgeneral86;

--
-- Name: pelamar_id_pelamar_seq; Type: SEQUENCE; Schema: public; Owner: ahmadgeneral86
--

CREATE SEQUENCE public.pelamar_id_pelamar_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pelamar_id_pelamar_seq OWNER TO ahmadgeneral86;

--
-- Name: pelamar_id_pelamar_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ahmadgeneral86
--

ALTER SEQUENCE public.pelamar_id_pelamar_seq OWNED BY public.pelamar.id_pelamar;


--
-- Name: perusahaan; Type: TABLE; Schema: public; Owner: ahmadgeneral86
--

CREATE TABLE public.perusahaan (
    id_perusahaan integer NOT NULL,
    nama_perusahaan text NOT NULL,
    email_perusahaan text NOT NULL,
    pswd_perusahaan text NOT NULL,
    deskripsi_perusahaan text,
    alamat_perusahaan text NOT NULL
);


ALTER TABLE public.perusahaan OWNER TO ahmadgeneral86;

--
-- Name: perusahaan_id_perusahaan_seq; Type: SEQUENCE; Schema: public; Owner: ahmadgeneral86
--

CREATE SEQUENCE public.perusahaan_id_perusahaan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.perusahaan_id_perusahaan_seq OWNER TO ahmadgeneral86;

--
-- Name: perusahaan_id_perusahaan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ahmadgeneral86
--

ALTER SEQUENCE public.perusahaan_id_perusahaan_seq OWNED BY public.perusahaan.id_perusahaan;


--
-- Name: ulasan; Type: TABLE; Schema: public; Owner: ahmadgeneral86
--

CREATE TABLE public.ulasan (
    id_ulasan integer NOT NULL,
    id_pelamar integer,
    rating integer NOT NULL,
    komentar text
);


ALTER TABLE public.ulasan OWNER TO ahmadgeneral86;

--
-- Name: ulasan_id_ulasan_seq; Type: SEQUENCE; Schema: public; Owner: ahmadgeneral86
--

CREATE SEQUENCE public.ulasan_id_ulasan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ulasan_id_ulasan_seq OWNER TO ahmadgeneral86;

--
-- Name: ulasan_id_ulasan_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ahmadgeneral86
--

ALTER SEQUENCE public.ulasan_id_ulasan_seq OWNED BY public.ulasan.id_ulasan;


--
-- Name: kategori id_kategori; Type: DEFAULT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.kategori ALTER COLUMN id_kategori SET DEFAULT nextval('public.kategori_id_kategori_seq'::regclass);


--
-- Name: lamaran id_lamaran; Type: DEFAULT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.lamaran ALTER COLUMN id_lamaran SET DEFAULT nextval('public.lamaran_id_lamaran_seq'::regclass);


--
-- Name: pekerjaan id_pekerjaan; Type: DEFAULT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.pekerjaan ALTER COLUMN id_pekerjaan SET DEFAULT nextval('public.pekerjaan_id_pekerjaan_seq'::regclass);


--
-- Name: pelamar id_pelamar; Type: DEFAULT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.pelamar ALTER COLUMN id_pelamar SET DEFAULT nextval('public.pelamar_id_pelamar_seq'::regclass);


--
-- Name: perusahaan id_perusahaan; Type: DEFAULT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.perusahaan ALTER COLUMN id_perusahaan SET DEFAULT nextval('public.perusahaan_id_perusahaan_seq'::regclass);


--
-- Name: ulasan id_ulasan; Type: DEFAULT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.ulasan ALTER COLUMN id_ulasan SET DEFAULT nextval('public.ulasan_id_ulasan_seq'::regclass);


--
-- Data for Name: kategori; Type: TABLE DATA; Schema: public; Owner: ahmadgeneral86
--

COPY public.kategori (id_kategori, nama_kategori) FROM stdin;
1	teknologi
2	finance
3	manufacture
4	creative
5	services
6	healthcare
7	marketing
8	education
\.


--
-- Data for Name: lamaran; Type: TABLE DATA; Schema: public; Owner: ahmadgeneral86
--

COPY public.lamaran (id_lamaran, id_pekerjaan, id_pelamar, tanggal_lamaran, status_lamaran, filename) FROM stdin;
1	28	\N	12 April 2023	0	cv.pdf
2	28	\N	20 April 2023	0	cv.pdf
3	28	\N	30 Mei 2039	0	cv.pdf
4	28	\N	23 Agustus 2030	0	manic.pdf
5	28	\N	30 April 2023	0	cv.word
6	2	1	21 Januari 2003	0	AhmadRifqi.pdf
11	24	58	45 April 3234	0	cv.pdf
12	28	58	34 April 4230	0	file.pdf
\.


--
-- Data for Name: pekerjaan; Type: TABLE DATA; Schema: public; Owner: ahmadgeneral86
--

COPY public.pekerjaan (id_pekerjaan, id_perusahaan, id_kategori, posisi, deskripsi_pekerjaan, kualifikasi, gaji) FROM stdin;
1	1	1	DevOps Engineer		2 tahun pengalaman	100000
2	1	1	Embedded System Engineer		2 tahun pengalaman	100000
3	1	1	Data Scientist		2 tahun pengalaman	100000
5	1	1	Cybersecurity Architect		2 tahun pengalaman	100000
6	2	1	AI Engineer		S2	75000
4	1	1	System Admin		2 tahun pengalaman	70000
9	2	4	UI/UX designer	Work on user interface, need a creative person ASAP	S2	35000
21	6	1	Full Stack Developer	Mengurus JavaScript, bussiness logic, performa server, deployment	JavaScript, Python, 	25000000
24	6	3	QC	Mengawasi kualitas suatu project	S1	150000000
26	6	7	Influencer	Endorse	Minimal 200.000 followers	10000000
28	7	2	Akuntan	Ya gitulah	harus ganteng	30000000
\.


--
-- Data for Name: pelamar; Type: TABLE DATA; Schema: public; Owner: ahmadgeneral86
--

COPY public.pelamar (id_pelamar, nama_pelamar, email_pelamar, password, alamat_pelamar, pengalaman, pendidikan) FROM stdin;
1	aaargh	ahmad@gmail.com	aaargh	bandung	kuliah	S1
3	ahmadRifqi	ahmadgeneral86@gmail.com	aaa	Yogyakarta	Kerja	AFK
4	ahmad	ahmadrf@gmail.com	aaa	Semarang	S2	Kerja
5	bbb	bbb@gmail.com	bbb	BBC	Nguli	SMA
6	ccc	ccc@mail.id	ccc	ccc	ccc	ccc
7	test	test@gmail.com	1111	depok	trui	UI
59	Brian Yudha Sandi	brianyudha13@gmail.com	Brian123	Jl. Anggrek No. 67B Jagakarsa, Jaksel	IME	S1
58	Cavan Naufal	cavan@gmail.com	1234	Jakarta Selatan	IME, TC, Basket	UI
\.


--
-- Data for Name: perusahaan; Type: TABLE DATA; Schema: public; Owner: ahmadgeneral86
--

COPY public.perusahaan (id_perusahaan, nama_perusahaan, email_perusahaan, pswd_perusahaan, deskripsi_perusahaan, alamat_perusahaan) FROM stdin;
1	IBM	IBM@mail.com	youshallnotpass		definitely not in Indonesia
2	Google	Google@mail.com	googledoodle		in america maybe
3	Astra	yourmom@mail.id	iHaveSonNamedToyota		Cikarang Sebelah tol
4	BRI	peopleBankOfIndonesia@mail.com	securePswd		Jl. Asia Afrika
5	Telkomsel	telkomid@gmail.com	12345689	Perusahaan Terkece	bla bla
6	Cavan Corporation	cvn@gmail.com	1234	Perusahan Terkeren dan Termakmur, tidak menyusahkan pegawainya pokoknya adem ayem	Silicon Valley Jakarta
7	I9	i9@gmail.com	54321	Kelompok I9 SBD	Depok
\.


--
-- Data for Name: ulasan; Type: TABLE DATA; Schema: public; Owner: ahmadgeneral86
--

COPY public.ulasan (id_ulasan, id_pelamar, rating, komentar) FROM stdin;
1	58	5	Kerennnnnn
2	58	4	Udah Paling mantap dah
3	58	2	testing
4	58	1	Coba lagi
5	58	4	Webnya Keren sangat membantu
\.


--
-- Name: kategori_id_kategori_seq; Type: SEQUENCE SET; Schema: public; Owner: ahmadgeneral86
--

SELECT pg_catalog.setval('public.kategori_id_kategori_seq', 8, true);


--
-- Name: lamaran_id_lamaran_seq; Type: SEQUENCE SET; Schema: public; Owner: ahmadgeneral86
--

SELECT pg_catalog.setval('public.lamaran_id_lamaran_seq', 12, true);


--
-- Name: pekerjaan_id_pekerjaan_seq; Type: SEQUENCE SET; Schema: public; Owner: ahmadgeneral86
--

SELECT pg_catalog.setval('public.pekerjaan_id_pekerjaan_seq', 28, true);


--
-- Name: pelamar_id_pelamar_seq; Type: SEQUENCE SET; Schema: public; Owner: ahmadgeneral86
--

SELECT pg_catalog.setval('public.pelamar_id_pelamar_seq', 59, true);


--
-- Name: perusahaan_id_perusahaan_seq; Type: SEQUENCE SET; Schema: public; Owner: ahmadgeneral86
--

SELECT pg_catalog.setval('public.perusahaan_id_perusahaan_seq', 7, true);


--
-- Name: ulasan_id_ulasan_seq; Type: SEQUENCE SET; Schema: public; Owner: ahmadgeneral86
--

SELECT pg_catalog.setval('public.ulasan_id_ulasan_seq', 5, true);


--
-- Name: kategori kategori_nama_kategori_key; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_nama_kategori_key UNIQUE (nama_kategori);


--
-- Name: kategori kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (id_kategori);


--
-- Name: lamaran lamaran_pkey; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.lamaran
    ADD CONSTRAINT lamaran_pkey PRIMARY KEY (id_lamaran);


--
-- Name: pekerjaan pekerjaan_pkey; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.pekerjaan
    ADD CONSTRAINT pekerjaan_pkey PRIMARY KEY (id_pekerjaan);


--
-- Name: pelamar pelamar_pkey; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.pelamar
    ADD CONSTRAINT pelamar_pkey PRIMARY KEY (id_pelamar);


--
-- Name: perusahaan perusahaan_email_perusahaan_key; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.perusahaan
    ADD CONSTRAINT perusahaan_email_perusahaan_key UNIQUE (email_perusahaan);


--
-- Name: perusahaan perusahaan_nama_perusahaan_key; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.perusahaan
    ADD CONSTRAINT perusahaan_nama_perusahaan_key UNIQUE (nama_perusahaan);


--
-- Name: perusahaan perusahaan_pkey; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.perusahaan
    ADD CONSTRAINT perusahaan_pkey PRIMARY KEY (id_perusahaan);


--
-- Name: perusahaan perusahaan_pswd_perusahaan_key; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.perusahaan
    ADD CONSTRAINT perusahaan_pswd_perusahaan_key UNIQUE (pswd_perusahaan);


--
-- Name: ulasan ulasan_pkey; Type: CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.ulasan
    ADD CONSTRAINT ulasan_pkey PRIMARY KEY (id_ulasan);


--
-- Name: lamaran lamaran_id_pekerjaan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.lamaran
    ADD CONSTRAINT lamaran_id_pekerjaan_fkey FOREIGN KEY (id_pekerjaan) REFERENCES public.pekerjaan(id_pekerjaan);


--
-- Name: lamaran lamaran_id_pelamar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.lamaran
    ADD CONSTRAINT lamaran_id_pelamar_fkey FOREIGN KEY (id_pelamar) REFERENCES public.pelamar(id_pelamar);


--
-- Name: pekerjaan pekerjaan_id_kategori_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.pekerjaan
    ADD CONSTRAINT pekerjaan_id_kategori_fkey FOREIGN KEY (id_kategori) REFERENCES public.kategori(id_kategori);


--
-- Name: pekerjaan pekerjaan_id_perusahaan_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.pekerjaan
    ADD CONSTRAINT pekerjaan_id_perusahaan_fkey FOREIGN KEY (id_perusahaan) REFERENCES public.perusahaan(id_perusahaan);


--
-- Name: ulasan ulasan_id_pelamar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ahmadgeneral86
--

ALTER TABLE ONLY public.ulasan
    ADD CONSTRAINT ulasan_id_pelamar_fkey FOREIGN KEY (id_pelamar) REFERENCES public.pelamar(id_pelamar);


--
-- PostgreSQL database dump complete
--

